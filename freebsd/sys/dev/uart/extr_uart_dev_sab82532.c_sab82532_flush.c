
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int SAB_CMDR ;
 int SAB_CMDR_RRES ;
 int SAB_CMDR_XRES ;
 int SAB_STAR ;
 int SAB_STAR_CEC ;
 int UART_FLUSH_RECEIVER ;
 int UART_FLUSH_TRANSMITTER ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;

__attribute__((used)) static void
sab82532_flush(struct uart_bas *bas, int what)
{

 if (what & UART_FLUSH_TRANSMITTER) {
  while (uart_getreg(bas, SAB_STAR) & SAB_STAR_CEC)
   ;
  uart_setreg(bas, SAB_CMDR, SAB_CMDR_XRES);
  uart_barrier(bas);
 }
 if (what & UART_FLUSH_RECEIVER) {
  while (uart_getreg(bas, SAB_STAR) & SAB_STAR_CEC)
   ;
  uart_setreg(bas, SAB_CMDR, SAB_CMDR_RRES);
  uart_barrier(bas);
 }
}
