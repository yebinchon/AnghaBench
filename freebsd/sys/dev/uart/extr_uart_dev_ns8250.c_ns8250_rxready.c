
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int LSR_RXRDY ;
 int REG_LSR ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
ns8250_rxready(struct uart_bas *bas)
{

 return ((uart_getreg(bas, REG_LSR) & LSR_RXRDY) != 0 ? 1 : 0);
}
