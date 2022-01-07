
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sbi_console_putchar (int) ;

__attribute__((used)) static void
riscv_putc(int c)
{

 sbi_console_putchar(c);
}
