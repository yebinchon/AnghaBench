
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int STAT_TX_FIFO_FULL ;
 int UART_STAT ;
 int UART_TSH ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
uart_mvebu_putc(struct uart_bas *bas, int c)
{
 while (uart_getreg(bas, UART_STAT) & STAT_TX_FIFO_FULL)
  ;
 uart_setreg(bas, UART_TSH, c & 0xff);
}
