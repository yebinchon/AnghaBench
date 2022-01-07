
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int rclk; } ;


 int EINVAL ;
 int LCR_5BITS ;
 int LCR_6BITS ;
 int LCR_7BITS ;
 int LCR_8BITS ;
 int LCR_DLAB ;
 int LCR_STOPB ;
 int REG_DLH ;
 int REG_DLL ;
 int REG_LCR ;
 int ns8250_divisor (int ,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
ns8250_param(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 int divisor;
 uint8_t lcr;

 lcr = 0;
 if (databits >= 8)
  lcr |= LCR_8BITS;
 else if (databits == 7)
  lcr |= LCR_7BITS;
 else if (databits == 6)
  lcr |= LCR_6BITS;
 else
  lcr |= LCR_5BITS;
 if (stopbits > 1)
  lcr |= LCR_STOPB;
 lcr |= parity << 3;


 if (baudrate > 0) {
  divisor = ns8250_divisor(bas->rclk, baudrate);
  if (divisor == 0)
   return (EINVAL);
  uart_setreg(bas, REG_LCR, lcr | LCR_DLAB);
  uart_barrier(bas);
  uart_setreg(bas, REG_DLL, divisor & 0xff);
  uart_setreg(bas, REG_DLH, (divisor >> 8) & 0xff);
  uart_barrier(bas);
 }


 uart_setreg(bas, REG_LCR, lcr);
 uart_barrier(bas);
 return (0);
}
