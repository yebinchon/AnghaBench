
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int BES_TXE ;
 int REG_CTRL ;
 int REG_DATA ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
z8530_putc(struct uart_bas *bas, int c)
{

 while (!(uart_getreg(bas, REG_CTRL) & BES_TXE))
  ;
 uart_setreg(bas, REG_DATA, c);
 uart_barrier(bas);
}
