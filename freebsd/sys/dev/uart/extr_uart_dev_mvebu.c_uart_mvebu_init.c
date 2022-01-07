
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int rclk; } ;


 int CTRL_INTR_MASK ;
 int DEFAULT_RCLK ;
 int UART_CTRL ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_mvebu_param (struct uart_bas*,int,int,int,int) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
uart_mvebu_init(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{

 bas->rclk = DEFAULT_RCLK;


 uart_setreg(bas, UART_CTRL, uart_getreg(bas, UART_CTRL) &
     ~CTRL_INTR_MASK);
 uart_barrier(bas);

 uart_mvebu_param(bas, baudrate, databits, stopbits, parity);
}
