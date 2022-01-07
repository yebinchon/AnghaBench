
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int DELAY (int) ;
 int SETREG (struct uart_bas*,int ,int) ;
 int UART_DM_CLEAR_TX_READY ;
 int UART_DM_CR ;
 int UART_DM_ISR ;
 int UART_DM_NO_CHARS_FOR_TX ;
 int UART_DM_SR ;
 int UART_DM_SR_TXEMT ;
 int UART_DM_SR_TXRDY ;
 int UART_DM_TF (int ) ;
 int UART_DM_TX_READY ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
msm_putc(struct uart_bas *bas, int c)
{
 int limit;
 limit = 1000;
 if (!(uart_getreg(bas, UART_DM_SR) & UART_DM_SR_TXEMT)) {
  while ((uart_getreg(bas, UART_DM_ISR) & UART_DM_TX_READY) == 0
      && --limit)
   DELAY(4);
  SETREG(bas, UART_DM_CR, UART_DM_CLEAR_TX_READY);
 }

 uart_setreg(bas, UART_DM_NO_CHARS_FOR_TX, 1);


 while ((uart_getreg(bas, UART_DM_SR) & UART_DM_SR_TXRDY) == 0)
  DELAY(4);


 SETREG(bas, UART_DM_TF(0), (c & 0xff));
}
