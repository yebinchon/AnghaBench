
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int IS (struct uart_bas*,int ,int ) ;
 int REG (int ) ;
 int SETREG (struct uart_bas*,int ,int) ;
 int TRDY ;
 int USR1 ;
 int UTXD ;

__attribute__((used)) static void
imx_uart_putc(struct uart_bas *bas, int c)
{

 while (!(IS(bas, USR1, TRDY)))
  ;
 SETREG(bas, REG(UTXD), c);
}
