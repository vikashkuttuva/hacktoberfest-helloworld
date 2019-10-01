global _start

section .data
    msg db "Hello, World!"
    len equ $ - msg

section .text
_start:
    mov ax, 4
    mov bx, 1
    mov ecx, msg
    mov dx, len
    int 0x80
    mov ax, 1
    mov bx, 0
    int 0x80
