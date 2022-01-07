
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int DR_TX_FIFO_FULL ;
 int GETREG (struct uart_bas*,int ) ;
 int SETREG (struct uart_bas*,int ,int) ;
 int UART_DR ;

__attribute__((used)) static void
lowrisc_uart_putc(struct uart_bas *bas, int c)
{

 while (GETREG(bas, UART_DR) & DR_TX_FIFO_FULL)
  ;

 SETREG(bas, UART_DR, c);
}
