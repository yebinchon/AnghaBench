
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {scalar_t__ rclk; scalar_t__ chan; } ;


 scalar_t__ DEFAULT_RCLK ;
 int QUICC_REG_SCC_SCCE (scalar_t__) ;
 int QUICC_REG_SCC_SCCM (scalar_t__) ;
 int quicc_param (struct uart_bas*,int,int,int,int) ;
 int quicc_write2 (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
quicc_setup(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{

 if (bas->rclk == 0)
  bas->rclk = DEFAULT_RCLK;





 quicc_param(bas, baudrate, databits, stopbits, parity);

 quicc_write2(bas, QUICC_REG_SCC_SCCE(bas->chan - 1), ~0);
 quicc_write2(bas, QUICC_REG_SCC_SCCM(bas->chan - 1), 0x0027);
}
