
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;


 int AUX_MU_BAUD_REG ;
 int AUX_MU_CNTL_REG ;
 int AUX_MU_LCR_REG ;
 int CNTL_RXENAB ;
 int CNTL_TXENAB ;
 int CPU_CLOCK ;
 int LCR_WLEN7 ;
 int LCR_WLEN8 ;
 int __uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
uart_mu_param(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 uint32_t line;
 uint32_t baud;





 line = 0x0;
 __uart_setreg(bas, AUX_MU_CNTL_REG, line);


 switch (databits) {
 case 7:
  line |= LCR_WLEN7;
  break;
 case 6:
 case 8:
 default:
  line |= LCR_WLEN8;
  break;
 }

 __uart_setreg(bas, AUX_MU_LCR_REG, line);


 if (baudrate != 0) {
  baud = CPU_CLOCK / (8 * baudrate);



  __uart_setreg(bas, AUX_MU_BAUD_REG, ((uint32_t)(baud & 0xFFFF)));
 }


 __uart_setreg(bas, AUX_MU_CNTL_REG, CNTL_RXENAB|CNTL_TXENAB);
}
