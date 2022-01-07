
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int rclk; } ;


 int UART_CDDL_REG ;
 int UART_LCR_5B ;
 int UART_LCR_6B ;
 int UART_LCR_7B ;
 int UART_LCR_8B ;
 int UART_LCR_EVEN ;
 int UART_LCR_PEN ;
 int UART_LCR_REG ;
 int UART_LCR_STB_15 ;



 int uart_barrier (struct uart_bas*) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
mtk_uart_init(struct uart_bas *bas, int baudrate, int databits,
    int stopbits, int parity)
{


        switch (databits) {
        case 5:
      databits = UART_LCR_5B;
      break;
        case 6:
      databits = UART_LCR_6B;
      break;
        case 7:
      databits = UART_LCR_7B;
      break;
        case 8:
      databits = UART_LCR_8B;
      break;
     default:

      return;
        }
 switch (parity) {
 case 130: parity = (UART_LCR_PEN|UART_LCR_EVEN); break;
 case 128: parity = (UART_LCR_PEN); break;
 case 129: parity = 0; break;

 default: return;
 }

 if (bas->rclk && baudrate) {
         uart_setreg(bas, UART_CDDL_REG, bas->rclk/16/baudrate);
  uart_barrier(bas);
 }

        uart_setreg(bas, UART_LCR_REG, databits |
    (stopbits==1?0:UART_LCR_STB_15) |
            parity);
 uart_barrier(bas);
}
