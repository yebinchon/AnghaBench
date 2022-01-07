
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int AR933X_UART_DATA_REG ;
 int AR933X_UART_DATA_TX_CSR ;
 int DELAY (int) ;
 int ar933x_getreg (struct uart_bas*,int ) ;
 int ar933x_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
ar933x_putc(struct uart_bas *bas, int c)
{
 int limit;

 limit = 250000;


 while ( ((ar933x_getreg(bas, AR933X_UART_DATA_REG) &
     AR933X_UART_DATA_TX_CSR) == 0) && --limit)
  DELAY(4);


 ar933x_setreg(bas, AR933X_UART_DATA_REG,
     (c & 0xff) | AR933X_UART_DATA_TX_CSR);
}
