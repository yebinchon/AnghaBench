
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int DELAY (int) ;
 int UART_LSR_DR ;
 int UART_LSR_REG ;
 int UART_RX_REG ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
mtk_uart_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 int c;

 uart_lock(hwmtx);

 while (!(uart_getreg(bas, UART_LSR_REG) & UART_LSR_DR)) {
  uart_unlock(hwmtx);
  DELAY(10);
  uart_lock(hwmtx);
 }

 c = uart_getreg(bas, UART_RX_REG);

 uart_unlock(hwmtx);

 return (c);
}
