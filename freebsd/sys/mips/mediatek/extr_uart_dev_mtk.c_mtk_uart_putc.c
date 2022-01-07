
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int UART_LSR_REG ;
 int UART_LSR_THRE ;
 int UART_TX_REG ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_output ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
mtk_uart_putc(struct uart_bas *bas, int c)
{
 char chr;
 if (!uart_output) return;
 chr = c;
 while (!(uart_getreg(bas, UART_LSR_REG) & UART_LSR_THRE));
 uart_setreg(bas, UART_TX_REG, c);
 uart_barrier(bas);
 while (!(uart_getreg(bas, UART_LSR_REG) & UART_LSR_THRE));
}
