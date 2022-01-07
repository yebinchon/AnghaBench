
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {scalar_t__ rclk; } ;


 scalar_t__ DEF_CLK ;
 int KASSERT (int,char*) ;
 int SETREG (struct uart_bas*,int ,int ) ;
 int UART_DM_CR ;
 int UART_DM_CR_RX_ENABLE ;
 int UART_DM_CR_TX_ENABLE ;
 int UART_DM_DMEN ;
 int UART_DM_DMEN_RX_SC_ENABLE ;
 int UART_DM_HCR ;
 int UART_DM_IMR ;
 int UART_DM_IPR ;
 int UART_DM_IRDA ;
 int UART_DM_MR1 ;
 int UART_DM_RESET_BREAK_INT ;
 int UART_DM_RESET_ERROR_STATUS ;
 int UART_DM_RESET_RX ;
 int UART_DM_RESET_STALE_INT ;
 int UART_DM_RESET_TX ;
 int UART_DM_RFWR ;
 int UART_DM_RFW_VALUE ;
 int UART_DM_STALE_TIMEOUT_LSB ;
 int UART_DM_TFWR ;
 int UART_DM_TFW_VALUE ;
 int msm_uart_param (struct uart_bas*,int,int,int,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
msm_init(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{

 if (bas->rclk == 0)
  bas->rclk = DEF_CLK;

 KASSERT(bas->rclk != 0, ("msm_init: Invalid rclk"));


 msm_uart_param(bas, baudrate, databits, stopbits, parity);





 uart_setreg(bas, UART_DM_MR1, 0x0);


 uart_setreg(bas, UART_DM_IMR, 0);






 uart_setreg(bas, UART_DM_TFWR, UART_DM_TFW_VALUE);


 uart_setreg(bas, UART_DM_RFWR, UART_DM_RFW_VALUE);





 uart_setreg(bas, UART_DM_IPR, UART_DM_STALE_TIMEOUT_LSB);


 uart_setreg(bas, UART_DM_IRDA, 0x0);






 uart_setreg(bas, UART_DM_HCR, 0x0);


 SETREG(bas, UART_DM_CR, UART_DM_RESET_TX);
 SETREG(bas, UART_DM_CR, UART_DM_RESET_RX);
 SETREG(bas, UART_DM_CR, UART_DM_RESET_ERROR_STATUS);
 SETREG(bas, UART_DM_CR, UART_DM_RESET_BREAK_INT);
 SETREG(bas, UART_DM_CR, UART_DM_RESET_STALE_INT);


 uart_setreg(bas, UART_DM_DMEN, UART_DM_DMEN_RX_SC_ENABLE);


 uart_setreg(bas, UART_DM_CR, UART_DM_CR_RX_ENABLE);
 uart_setreg(bas, UART_DM_CR, UART_DM_CR_TX_ENABLE);

 uart_barrier(bas);
}
