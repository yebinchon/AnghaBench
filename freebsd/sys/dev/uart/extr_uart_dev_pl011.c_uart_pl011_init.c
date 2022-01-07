
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int IMSC_MASK_ALL ;
 int UART_IMSC ;
 int __uart_getreg (struct uart_bas*,int ) ;
 int __uart_setreg (struct uart_bas*,int ,int) ;
 int uart_pl011_param (struct uart_bas*,int,int,int,int) ;

__attribute__((used)) static void
uart_pl011_init(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{

 __uart_setreg(bas, UART_IMSC, __uart_getreg(bas, UART_IMSC) &
     ~IMSC_MASK_ALL);

 uart_pl011_param(bas, baudrate, databits, stopbits, parity);
}
