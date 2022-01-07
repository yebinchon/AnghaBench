
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int quicc_setup (struct uart_bas*,int,int,int,int) ;

__attribute__((used)) static void
quicc_init(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{

 quicc_setup(bas, baudrate, databits, stopbits, parity);
}
