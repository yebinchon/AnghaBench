
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int DELAY (int) ;
 int EIO ;
 int LSR_RXRDY ;
 int LSR_TEMT ;
 int REG_DATA ;
 int REG_LSR ;
 int UART_DRAIN_RECEIVER ;
 int UART_DRAIN_TRANSMITTER ;
 int ns8250_delay (struct uart_bas*) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
ns8250_drain(struct uart_bas *bas, int what)
{
 int delay, limit;

 delay = ns8250_delay(bas);

 if (what & UART_DRAIN_TRANSMITTER) {





  limit = 10*1024;
  while ((uart_getreg(bas, REG_LSR) & LSR_TEMT) == 0 && --limit)
   DELAY(delay);
  if (limit == 0) {

   return (EIO);
  }
 }

 if (what & UART_DRAIN_RECEIVER) {
  limit=10*4096;
  while ((uart_getreg(bas, REG_LSR) & LSR_RXRDY) && --limit) {
   (void)uart_getreg(bas, REG_DATA);
   uart_barrier(bas);
   DELAY(delay << 2);
  }
  if (limit == 0) {

   return (EIO);
  }
 }

 return (0);
}
