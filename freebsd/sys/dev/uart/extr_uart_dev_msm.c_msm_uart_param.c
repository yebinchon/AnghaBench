
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int EINVAL ;
 int UART_DM_5_BPS ;
 int UART_DM_6_BPS ;
 int UART_DM_7_BPS ;
 int UART_DM_8_BPS ;
 int UART_DM_EVEN_PARITY ;
 int UART_DM_MR2 ;
 int UART_DM_NO_PARITY ;
 int UART_DM_ODD_PARITY ;
 int UART_DM_SBL_1 ;
 int UART_DM_SBL_2 ;
 int UART_DM_SPACE_PARITY ;





 int uart_barrier (struct uart_bas*) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
msm_uart_param(struct uart_bas *bas, int baudrate, int databits,
    int stopbits, int parity)
{
 int ulcon;

 ulcon = 0;

 switch (databits) {
 case 5:
  ulcon |= (UART_DM_5_BPS << 4);
  break;
 case 6:
  ulcon |= (UART_DM_6_BPS << 4);
  break;
 case 7:
  ulcon |= (UART_DM_7_BPS << 4);
  break;
 case 8:
  ulcon |= (UART_DM_8_BPS << 4);
  break;
 default:
  return (EINVAL);
 }

 switch (parity) {
 case 130:
  ulcon |= UART_DM_NO_PARITY;
  break;
 case 129:
  ulcon |= UART_DM_ODD_PARITY;
  break;
 case 132:
  ulcon |= UART_DM_EVEN_PARITY;
  break;
 case 128:
  ulcon |= UART_DM_SPACE_PARITY;
  break;
 case 131:
 default:
  return (EINVAL);
 }

 switch (stopbits) {
 case 1:
  ulcon |= (UART_DM_SBL_1 << 2);
  break;
 case 2:
  ulcon |= (UART_DM_SBL_2 << 2);
  break;
 default:
  return (EINVAL);
 }
 uart_setreg(bas, UART_DM_MR2, ulcon);
 uart_barrier(bas);

 return (0);
}
