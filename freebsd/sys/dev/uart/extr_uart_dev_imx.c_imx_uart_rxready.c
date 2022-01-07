
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 scalar_t__ IS (struct uart_bas*,int ,int ) ;
 int RDR ;
 int USR2 ;

__attribute__((used)) static int
imx_uart_rxready(struct uart_bas *bas)
{

 return ((IS(bas, USR2, RDR)) ? 1 : 0);
}
