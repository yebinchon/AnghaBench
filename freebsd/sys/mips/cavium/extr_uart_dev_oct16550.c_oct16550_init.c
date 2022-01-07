
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uart_bas {int dummy; } ;


 int MCR_DTR ;
 int MCR_RTS ;
 int REG_IER ;
 int REG_MCR ;
 int oct16550_clrint (struct uart_bas*) ;
 int oct16550_param (struct uart_bas*,int,int,int,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
oct16550_init (struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 u_char ier;

 oct16550_param(bas, baudrate, databits, stopbits, parity);


 ier = uart_getreg(bas, REG_IER) & 0x0;
 uart_setreg(bas, REG_IER, ier);
 uart_barrier(bas);



 uart_barrier(bas);


 uart_setreg(bas, REG_MCR, MCR_RTS | MCR_DTR);
 uart_barrier(bas);

 oct16550_clrint(bas);
}
