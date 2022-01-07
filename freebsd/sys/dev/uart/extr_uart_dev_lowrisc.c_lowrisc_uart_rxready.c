
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int DR_RX_FIFO_EMPTY ;
 int GETREG (struct uart_bas*,int ) ;
 int UART_DR ;

__attribute__((used)) static int
lowrisc_uart_rxready(struct uart_bas *bas)
{

 if (GETREG(bas, UART_DR) & DR_RX_FIFO_EMPTY)
  return (0);

 return (1);
}
