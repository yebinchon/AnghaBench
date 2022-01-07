
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int REG_CTRL ;
 int uart_barrier (struct uart_bas*) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static __inline void
uart_setmreg(struct uart_bas *bas, int reg, int val)
{

 uart_setreg(bas, REG_CTRL, reg);
 uart_barrier(bas);
 uart_setreg(bas, REG_CTRL, val);
}
