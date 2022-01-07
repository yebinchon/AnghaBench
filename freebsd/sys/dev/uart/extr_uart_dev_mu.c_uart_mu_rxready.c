
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int AUX_MU_LSR_REG ;
 int LSR_RXREADY ;
 int __uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
uart_mu_rxready(struct uart_bas *bas)
{

 return ((__uart_getreg(bas, AUX_MU_LSR_REG) & LSR_RXREADY) != 0);
}
