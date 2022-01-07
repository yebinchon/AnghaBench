
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int rclk; } ;


 int CR_RXE ;
 int CR_TXE ;
 int CR_UARTEN ;
 int FBRD_BDIVFRAC ;
 int FIFO_IFLS_BITS ;
 int IBRD_BDIVINT ;
 int LCR_H_FEN ;
 int LCR_H_PEN ;
 int LCR_H_STP2 ;
 int LCR_H_WLEN6 ;
 int LCR_H_WLEN7 ;
 int LCR_H_WLEN8 ;
 int UART_CR ;
 int UART_FBRD ;
 int UART_IBRD ;
 int UART_IFLS ;
 int UART_LCR_H ;
 int __uart_getreg (struct uart_bas*,int ) ;
 int __uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
uart_pl011_param(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 uint32_t ctrl, line;
 uint32_t baud;





 ctrl = line = 0x0;
 __uart_setreg(bas, UART_CR, ctrl);


 switch (databits) {
 case 7:
  line |= LCR_H_WLEN7;
  break;
 case 6:
  line |= LCR_H_WLEN6;
  break;
 case 8:
 default:
  line |= LCR_H_WLEN8;
  break;
 }

 if (stopbits == 2)
  line |= LCR_H_STP2;
 else
  line &= ~LCR_H_STP2;

 if (parity)
  line |= LCR_H_PEN;
 else
  line &= ~LCR_H_PEN;
 line |= LCR_H_FEN;


 ctrl |= (CR_RXE | CR_TXE | CR_UARTEN);

 if (bas->rclk != 0 && baudrate != 0) {
  baud = bas->rclk * 4 / baudrate;
  __uart_setreg(bas, UART_IBRD, ((uint32_t)(baud >> 6)) & IBRD_BDIVINT);
  __uart_setreg(bas, UART_FBRD, (uint32_t)(baud & 0x3F) & FBRD_BDIVFRAC);
 }


 __uart_setreg(bas, UART_LCR_H, (__uart_getreg(bas, UART_LCR_H) &
     ~0xff) | line);


 __uart_setreg(bas, UART_IFLS, FIFO_IFLS_BITS);

 __uart_setreg(bas, UART_CR, ctrl);
}
