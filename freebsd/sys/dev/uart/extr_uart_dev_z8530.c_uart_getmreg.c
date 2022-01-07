
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;


 int REG_CTRL ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static __inline uint8_t
uart_getmreg(struct uart_bas *bas, int reg)
{

 uart_setreg(bas, REG_CTRL, reg);
 uart_barrier(bas);
 return (uart_getreg(bas, REG_CTRL));
}
