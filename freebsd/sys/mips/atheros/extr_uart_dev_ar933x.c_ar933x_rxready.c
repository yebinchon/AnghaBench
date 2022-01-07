
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int AR933X_UART_DATA_REG ;
 int AR933X_UART_DATA_RX_CSR ;
 int ar933x_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
ar933x_rxready(struct uart_bas *bas)
{


 return (!!(ar933x_getreg(bas, AR933X_UART_DATA_REG)
     & AR933X_UART_DATA_RX_CSR));
}
