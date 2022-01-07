
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int AR933X_UART_CS_REG ;
 int AR933X_UART_CS_TX_BUSY ;
 int AR933X_UART_DATA_REG ;
 int AR933X_UART_DATA_RX_CSR ;
 int DELAY (int) ;
 int EIO ;
 int UART_DRAIN_RECEIVER ;
 int UART_DRAIN_TRANSMITTER ;
 int ar933x_getreg (struct uart_bas*,int ) ;
 int ar933x_setreg (struct uart_bas*,int ,int) ;
 int uart_barrier (struct uart_bas*) ;

__attribute__((used)) static int
ar933x_drain(struct uart_bas *bas, int what)
{
 int limit;

 if (what & UART_DRAIN_TRANSMITTER) {
  limit = 10*1024;


  while (--limit) {
   if ((ar933x_getreg(bas, AR933X_UART_CS_REG)
       & AR933X_UART_CS_TX_BUSY) == 0)
    break;
  }
  if (limit == 0) {
   return (EIO);
  }
 }

 if (what & UART_DRAIN_RECEIVER) {
  limit=10*4096;
  while (--limit) {





   if ((ar933x_getreg(bas, AR933X_UART_DATA_REG) &
       AR933X_UART_DATA_RX_CSR) == 0) {
    break;
   }


   (void) ar933x_getreg(bas, AR933X_UART_DATA_REG);


   ar933x_setreg(bas, AR933X_UART_DATA_REG,
       AR933X_UART_DATA_RX_CSR);

   uart_barrier(bas);
   DELAY(2);
  }
  if (limit == 0) {
   return (EIO);
  }
 }
 return (0);
}
