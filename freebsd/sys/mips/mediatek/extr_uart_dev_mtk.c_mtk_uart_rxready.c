
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int UART_LSR_DR ;
 int UART_LSR_REG ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
mtk_uart_rxready(struct uart_bas *bas)
{
 if (uart_getreg(bas, UART_LSR_REG) & UART_LSR_DR)
  return (1);
 return (0);
}
