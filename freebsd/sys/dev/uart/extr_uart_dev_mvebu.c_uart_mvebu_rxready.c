
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int STAT_RX_RDY ;
 int UART_STAT ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
uart_mvebu_rxready(struct uart_bas *bas)
{
 if (uart_getreg(bas, UART_STAT) & STAT_RX_RDY)
  return 1;
 return 0;
}
