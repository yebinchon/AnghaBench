
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;


 int AR933X_UART_CLOCK_REG ;
 int AR933X_UART_CLOCK_SCALE_M ;
 int AR933X_UART_CLOCK_SCALE_S ;
 int AR933X_UART_CLOCK_STEP_M ;
 int ar933x_setreg (struct uart_bas*,int ,int) ;
 int ar933x_uart_get_scale_step (struct uart_bas*,int,int*,int*) ;
 int uart_barrier (struct uart_bas*) ;

__attribute__((used)) static int
ar933x_param(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{







 if (baudrate > 0) {
  uint32_t clock_scale, clock_step;


  ar933x_uart_get_scale_step(bas, baudrate, &clock_scale,
      &clock_step);





  ar933x_setreg(bas, AR933X_UART_CLOCK_REG,
      ((clock_scale & AR933X_UART_CLOCK_SCALE_M)
        << AR933X_UART_CLOCK_SCALE_S) |
      (clock_step & AR933X_UART_CLOCK_STEP_M));
 }

 uart_barrier(bas);
 return (0);
}
