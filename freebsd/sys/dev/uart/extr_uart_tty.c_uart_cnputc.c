
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_arg; } ;


 int uart_putc (int ,int) ;

__attribute__((used)) static void
uart_cnputc(struct consdev *cp, int c)
{

 uart_putc(cp->cn_arg, c);
}
