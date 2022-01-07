
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int AUX_MU_IO_REG ;
 int AUX_MU_LSR_REG ;
 int LSR_TXEMPTY ;
 int __uart_getreg (struct uart_bas*,int ) ;
 int __uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
uart_mu_putc(struct uart_bas *bas, int c)
{


 while ((__uart_getreg(bas, AUX_MU_LSR_REG) & LSR_TXEMPTY) == 0)
  ;
 __uart_setreg(bas, AUX_MU_IO_REG, c & 0xff);
}
