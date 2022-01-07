
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int DELAY (int) ;
 int LSR_RXRDY ;
 int REG_DATA ;
 int REG_LSR ;
 int oct16550_delay (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
oct16550_getc (struct uart_bas *bas, struct mtx *hwmtx)
{
 int c, delay;

 uart_lock(hwmtx);


 delay = oct16550_delay(bas);

 while ((uart_getreg(bas, REG_LSR) & LSR_RXRDY) == 0) {
  uart_unlock(hwmtx);
  DELAY(delay);
  uart_lock(hwmtx);
 }

 c = uart_getreg(bas, REG_DATA);

 uart_unlock(hwmtx);

 return (c);
}
