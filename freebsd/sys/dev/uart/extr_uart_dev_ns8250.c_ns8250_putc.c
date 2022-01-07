
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int DELAY (int) ;
 int LSR_THRE ;
 int REG_DATA ;
 int REG_LSR ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
ns8250_putc(struct uart_bas *bas, int c)
{
 int limit;

 limit = 250000;
 while ((uart_getreg(bas, REG_LSR) & LSR_THRE) == 0 && --limit)
  DELAY(4);
 uart_setreg(bas, REG_DATA, c);
 uart_barrier(bas);
}
