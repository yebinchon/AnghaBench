
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int STAT_RX_RDY ;
 int UART_RBR ;
 int UART_STAT ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
uart_mvebu_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 int c;

 uart_lock(hwmtx);
 while (!(uart_getreg(bas, UART_STAT) & STAT_RX_RDY))
  ;

 c = uart_getreg(bas, UART_RBR) & 0xff;
 uart_unlock(hwmtx);

 return c;
}
