
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;


 int AR933X_UART_CS_HOST_INT_EN ;
 int AR933X_UART_CS_REG ;
 int AR933X_UART_INT_EN_REG ;
 int ar933x_getreg (struct uart_bas*,int ) ;
 int ar933x_param (struct uart_bas*,int,int,int,int) ;
 int ar933x_setreg (struct uart_bas*,int ,int) ;
 int uart_barrier (struct uart_bas*) ;

__attribute__((used)) static void
ar933x_init(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 uint32_t reg;


 ar933x_param(bas, baudrate, databits, stopbits, parity);




 ar933x_setreg(bas, AR933X_UART_INT_EN_REG, 0x00000000);


 reg = ar933x_getreg(bas, AR933X_UART_CS_REG);
 reg &= ~AR933X_UART_CS_HOST_INT_EN;
 ar933x_setreg(bas, AR933X_UART_CS_REG, reg);

 uart_barrier(bas);


}
