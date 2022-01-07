
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int DELAY (int) ;
 int UART_DM_CR ;
 int UART_DM_RESET_ERROR_STATUS ;
 int UART_DM_RF (int ) ;
 int UART_DM_SR ;
 int UART_DM_SR_RXRDY ;
 int UART_DM_SR_UART_OVERRUN ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (struct mtx*) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
msm_getc(struct uart_bas *bas, struct mtx *mtx)
{
 int c;

 uart_lock(mtx);


 while ((uart_getreg(bas, UART_DM_SR) & UART_DM_SR_RXRDY) !=
     UART_DM_SR_RXRDY)
  DELAY(4);


 if (uart_getreg(bas, UART_DM_SR) & UART_DM_SR_UART_OVERRUN)
  uart_setreg(bas, UART_DM_CR, UART_DM_RESET_ERROR_STATUS);


 c = uart_getreg(bas, UART_DM_RF(0));

 uart_unlock(mtx);

 return (c);
}
