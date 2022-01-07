
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int UART_DM_SR ;
 int UART_DM_SR_RXRDY ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
msm_rxready(struct uart_bas *bas)
{


 return ((uart_getreg(bas, UART_DM_SR) & UART_DM_SR_RXRDY) ==
     UART_DM_SR_RXRDY);
}
