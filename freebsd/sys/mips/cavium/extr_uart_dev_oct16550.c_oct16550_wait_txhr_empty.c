
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int DELAY (int) ;
 int LSR_THRE ;
 int REG_LSR ;
 int REG_USR ;
 int USR_TXFIFO_NOTFULL ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static inline void oct16550_wait_txhr_empty (struct uart_bas *bas, int limit, int delay)
{
    while (((uart_getreg(bas, REG_LSR) & LSR_THRE) == 0) &&
           ((uart_getreg(bas, REG_USR) & USR_TXFIFO_NOTFULL) == 0))
        DELAY(delay);
}
