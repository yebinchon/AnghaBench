
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int rclk; } ;


 int EINVAL ;
 int MCB2_BRGE ;
 int MPM_CM16 ;
 int MPM_EVEN ;
 int MPM_PE ;
 int MPM_SB1 ;
 int MPM_SB2 ;
 int RPC_RB5 ;
 int RPC_RB6 ;
 int RPC_RB7 ;
 int RPC_RB8 ;
 int RPC_RXE ;
 int TPC_DTR ;
 int TPC_RTS ;
 int TPC_TB5 ;
 int TPC_TB6 ;
 int TPC_TB7 ;
 int TPC_TB8 ;
 int TPC_TXE ;



 int UART_PCLK ;
 int WR_MCB2 ;
 int WR_MPM ;
 int WR_RPC ;
 int WR_TCH ;
 int WR_TCL ;
 int WR_TPC ;
 int uart_barrier (struct uart_bas*) ;
 int uart_setmreg (struct uart_bas*,int ,int) ;
 int z8530_divisor (int ,int) ;

__attribute__((used)) static int
z8530_param(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity, uint8_t *tpcp)
{
 int divisor;
 uint8_t mpm, rpc, tpc;

 rpc = RPC_RXE;
 mpm = MPM_CM16;
 tpc = TPC_TXE | (*tpcp & (TPC_DTR | TPC_RTS));

 if (databits >= 8) {
  rpc |= RPC_RB8;
  tpc |= TPC_TB8;
 } else if (databits == 7) {
  rpc |= RPC_RB7;
  tpc |= TPC_TB7;
 } else if (databits == 6) {
  rpc |= RPC_RB6;
  tpc |= TPC_TB6;
 } else {
  rpc |= RPC_RB5;
  tpc |= TPC_TB5;
 }
 mpm |= (stopbits > 1) ? MPM_SB2 : MPM_SB1;
 switch (parity) {
 case 130: mpm |= MPM_PE | MPM_EVEN; break;
 case 129: break;
 case 128: mpm |= MPM_PE; break;
 default: return (EINVAL);
 }

 if (baudrate > 0) {
  divisor = z8530_divisor(bas->rclk, baudrate);
  if (divisor == -1)
   return (EINVAL);
 } else
  divisor = -1;

 uart_setmreg(bas, WR_MCB2, UART_PCLK);
 uart_barrier(bas);

 if (divisor >= 0) {
  uart_setmreg(bas, WR_TCL, divisor & 0xff);
  uart_barrier(bas);
  uart_setmreg(bas, WR_TCH, (divisor >> 8) & 0xff);
  uart_barrier(bas);
 }

 uart_setmreg(bas, WR_RPC, rpc);
 uart_barrier(bas);
 uart_setmreg(bas, WR_MPM, mpm);
 uart_barrier(bas);
 uart_setmreg(bas, WR_TPC, tpc);
 uart_barrier(bas);
 uart_setmreg(bas, WR_MCB2, UART_PCLK | MCB2_BRGE);
 uart_barrier(bas);
 *tpcp = tpc;
 return (0);
}
