
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int BES_RXA ;
 int REG_CTRL ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
z8530_rxready(struct uart_bas *bas)
{

 return ((uart_getreg(bas, REG_CTRL) & BES_RXA) != 0 ? 1 : 0);
}
