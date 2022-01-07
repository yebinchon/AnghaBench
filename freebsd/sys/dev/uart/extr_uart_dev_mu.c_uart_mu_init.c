
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int AUX_MU_IER_REG ;
 int __uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_mu_param (struct uart_bas*,int,int,int,int) ;

__attribute__((used)) static void
uart_mu_init(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{


 __uart_setreg(bas, AUX_MU_IER_REG, 0);
 uart_mu_param(bas, baudrate, databits, stopbits, parity);
}
