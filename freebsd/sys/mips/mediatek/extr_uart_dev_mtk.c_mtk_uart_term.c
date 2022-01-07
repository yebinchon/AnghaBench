
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int UART_MCR_REG ;
 int uart_barrier (struct uart_bas*) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;

__attribute__((used)) static void
mtk_uart_term(struct uart_bas *bas)
{
        uart_setreg(bas, UART_MCR_REG, 0);
 uart_barrier(bas);
}
