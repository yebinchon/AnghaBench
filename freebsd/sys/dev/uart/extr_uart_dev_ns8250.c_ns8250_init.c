
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uart_bas {scalar_t__ rclk; } ;


 scalar_t__ DEFAULT_RCLK ;
 int FCR_UART_ON ;
 int MCR_DTR ;
 int MCR_IE ;
 int MCR_RTS ;
 int REG_FCR ;
 int REG_IER ;
 int REG_MCR ;
 int ns8250_clrint (struct uart_bas*) ;
 int ns8250_param (struct uart_bas*,int,int,int,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
ns8250_init(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 u_char ier, val;

 if (bas->rclk == 0)
  bas->rclk = DEFAULT_RCLK;
 ns8250_param(bas, baudrate, databits, stopbits, parity);







 ier = uart_getreg(bas, REG_IER) & 0xe0;
 uart_setreg(bas, REG_IER, ier);
 uart_barrier(bas);


 val = 0;



 uart_setreg(bas, REG_FCR, val);
 uart_barrier(bas);


 uart_setreg(bas, REG_MCR, MCR_IE | MCR_RTS | MCR_DTR);
 uart_barrier(bas);

 ns8250_clrint(bas);
}
