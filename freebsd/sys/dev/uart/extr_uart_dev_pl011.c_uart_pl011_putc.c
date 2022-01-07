
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int FR_TXFF ;
 int UART_DR ;
 int UART_FR ;
 int __uart_getreg (struct uart_bas*,int ) ;
 int __uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
uart_pl011_putc(struct uart_bas *bas, int c)
{


 while (__uart_getreg(bas, UART_FR) & FR_TXFF)
  ;
 __uart_setreg(bas, UART_DR, c & 0xff);
}
