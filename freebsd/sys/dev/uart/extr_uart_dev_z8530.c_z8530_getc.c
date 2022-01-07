
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int BES_RXA ;
 int DELAY (int) ;
 int REG_CTRL ;
 int REG_DATA ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
z8530_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 int c;

 uart_lock(hwmtx);

 while (!(uart_getreg(bas, REG_CTRL) & BES_RXA)) {
  uart_unlock(hwmtx);
  DELAY(10);
  uart_lock(hwmtx);
 }

 c = uart_getreg(bas, REG_DATA);

 uart_unlock(hwmtx);

 return (c);
}
