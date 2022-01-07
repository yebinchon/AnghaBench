
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int REG_DATA ;
 int oct16550_delay (struct uart_bas*) ;
 int oct16550_wait_txhr_empty (struct uart_bas*,int,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
oct16550_putc (struct uart_bas *bas, int c)
{
 int delay;


 delay = oct16550_delay(bas);
        oct16550_wait_txhr_empty(bas, 100, delay);
 uart_setreg(bas, REG_DATA, c);
 uart_barrier(bas);
        oct16550_wait_txhr_empty(bas, 100, delay);
}
