
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int REG_MCR ;
 int uart_barrier (struct uart_bas*) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;

__attribute__((used)) static void
oct16550_term (struct uart_bas *bas)
{


 uart_setreg(bas, REG_MCR, 0);
 uart_barrier(bas);
}
