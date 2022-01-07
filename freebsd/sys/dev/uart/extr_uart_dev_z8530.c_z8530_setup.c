
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {scalar_t__ rclk; int chan; } ;


 int CMC_RC_BRG ;
 int CMC_TC_BRG ;
 scalar_t__ DEFAULT_RCLK ;
 int MCB1_NRZ ;
 int MIC_CRA ;
 int MIC_CRB ;
 int MIC_NV ;
 int TPC_DTR ;
 int TPC_RTS ;
 int UART_PCLK ;
 int WR_CMC ;
 int WR_MCB1 ;
 int WR_MCB2 ;
 int WR_MIC ;
 int uart_barrier (struct uart_bas*) ;
 int uart_setmreg (struct uart_bas*,int ,int) ;
 int z8530_param (struct uart_bas*,int,int,int,int,int*) ;

__attribute__((used)) static int
z8530_setup(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 uint8_t tpc;

 if (bas->rclk == 0)
  bas->rclk = DEFAULT_RCLK;


 switch (bas->chan) {
 case 1:
  uart_setmreg(bas, WR_MIC, MIC_NV | MIC_CRA);
  break;
 case 2:
  uart_setmreg(bas, WR_MIC, MIC_NV | MIC_CRB);
  break;
 }
 uart_barrier(bas);

 uart_setmreg(bas, WR_CMC, CMC_RC_BRG | CMC_TC_BRG);
 uart_setmreg(bas, WR_MCB2, UART_PCLK);
 uart_barrier(bas);

 uart_setmreg(bas, WR_MCB1, MCB1_NRZ);
 uart_barrier(bas);

 tpc = TPC_DTR | TPC_RTS;
 z8530_param(bas, baudrate, databits, stopbits, parity, &tpc);
 return (int)tpc;
}
