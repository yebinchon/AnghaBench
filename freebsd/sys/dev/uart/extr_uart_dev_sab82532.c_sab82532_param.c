
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int rclk; } ;


 int EINVAL ;
 int SAB_BGR ;
 int SAB_CCR2 ;
 int SAB_CCR2_BR8 ;
 int SAB_CCR2_BR9 ;
 int SAB_DAFO ;
 int SAB_DAFO_CHL_CS5 ;
 int SAB_DAFO_CHL_CS6 ;
 int SAB_DAFO_CHL_CS7 ;
 int SAB_DAFO_CHL_CS8 ;
 int SAB_DAFO_PAR_EVEN ;
 int SAB_DAFO_PAR_MARK ;
 int SAB_DAFO_PAR_NONE ;
 int SAB_DAFO_PAR_ODD ;
 int SAB_DAFO_PAR_SPACE ;
 int SAB_DAFO_STOP ;
 int SAB_TCR ;





 int sab82532_divisor (int ,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
sab82532_param(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 int divisor;
 uint8_t ccr2, dafo;

 if (databits >= 8)
  dafo = SAB_DAFO_CHL_CS8;
 else if (databits == 7)
  dafo = SAB_DAFO_CHL_CS7;
 else if (databits == 6)
  dafo = SAB_DAFO_CHL_CS6;
 else
  dafo = SAB_DAFO_CHL_CS5;
 if (stopbits > 1)
  dafo |= SAB_DAFO_STOP;
 switch (parity) {
 case 132: dafo |= SAB_DAFO_PAR_EVEN; break;
 case 131: dafo |= SAB_DAFO_PAR_MARK; break;
 case 130: dafo |= SAB_DAFO_PAR_NONE; break;
 case 129: dafo |= SAB_DAFO_PAR_ODD; break;
 case 128: dafo |= SAB_DAFO_PAR_SPACE; break;
 default: return (EINVAL);
 }


 if (baudrate > 0) {
  divisor = sab82532_divisor(bas->rclk, baudrate);
  if (divisor == 0)
   return (EINVAL);
  uart_setreg(bas, SAB_BGR, divisor & 0xff);
  uart_barrier(bas);

  uart_setreg(bas, SAB_TCR, divisor & 0xff);
  uart_barrier(bas);
  ccr2 = uart_getreg(bas, SAB_CCR2);
  ccr2 &= ~(SAB_CCR2_BR9 | SAB_CCR2_BR8);
  ccr2 |= (divisor >> 2) & (SAB_CCR2_BR9 | SAB_CCR2_BR8);
  uart_setreg(bas, SAB_CCR2, ccr2);
  uart_barrier(bas);
 }

 uart_setreg(bas, SAB_DAFO, dafo);
 uart_barrier(bas);
 return (0);
}
