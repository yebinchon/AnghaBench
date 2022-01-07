
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int rclk; } ;


 int CCR_BAUDRATE_DIV ;
 int CTRL_LPBK_EN ;
 int CTRL_PAR_EN ;
 int CTRL_RX_FIFO_RST ;
 int CTRL_ST_MIRR_EN ;
 int CTRL_TWO_STOP ;
 int CTRL_TX_FIFO_RST ;
 int EINVAL ;
 int UART_CCR ;
 int UART_CTRL ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_mvebu_divisor (int ,int) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
uart_mvebu_param(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 uint32_t ctrl = 0;
 uint32_t ccr;
 int divisor, ret = 0;


 ctrl = uart_getreg(bas, UART_CTRL);
 uart_setreg(bas, UART_CTRL, ctrl | CTRL_TX_FIFO_RST | CTRL_RX_FIFO_RST |
     CTRL_LPBK_EN);
 uart_barrier(bas);

 switch (stopbits) {
 case 2:
  ctrl |= CTRL_TWO_STOP;
  break;
 case 1:
 default:
  ctrl &=~ CTRL_TWO_STOP;
 }

 switch (parity) {
 case 3:
  ctrl |= CTRL_PAR_EN;
  break;
 default:
  ctrl &=~ CTRL_PAR_EN;
 }


 if (baudrate > 0) {
  divisor = uart_mvebu_divisor(bas->rclk, baudrate);
  if (divisor == 0) {
   ret = EINVAL;
  } else {
   ccr = uart_getreg(bas, UART_CCR);
   ccr &=~CCR_BAUDRATE_DIV;

   uart_setreg(bas, UART_CCR, ccr | divisor);
   uart_barrier(bas);
  }
 }


 ctrl |= CTRL_ST_MIRR_EN;

 uart_setreg(bas, UART_CTRL, ctrl);
 uart_barrier(bas);

 return (ret);
}
