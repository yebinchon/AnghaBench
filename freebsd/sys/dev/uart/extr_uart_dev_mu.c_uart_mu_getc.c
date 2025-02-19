
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int AUX_MU_IO_REG ;
 int __uart_getreg (struct uart_bas*,int ) ;
 int uart_mu_rxready (struct uart_bas*) ;

__attribute__((used)) static int
uart_mu_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 int c;

 while(!uart_mu_rxready(bas))
  ;
 c = __uart_getreg(bas, AUX_MU_IO_REG) & 0xff;
 return (c);
}
