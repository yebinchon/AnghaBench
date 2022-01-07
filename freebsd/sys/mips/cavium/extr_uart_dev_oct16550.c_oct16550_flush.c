
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;


 int FCR_ENABLE ;
 int FCR_RCV_RST ;
 int FCR_XMT_RST ;
 int REG_FCR ;
 int UART_FLUSH_RECEIVER ;
 int UART_FLUSH_TRANSMITTER ;
 int uart_barrier (struct uart_bas*) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;

__attribute__((used)) static void
oct16550_flush (struct uart_bas *bas, int what)
{
 uint8_t fcr;

 fcr = FCR_ENABLE;
 if (what & UART_FLUSH_TRANSMITTER)
  fcr |= FCR_XMT_RST;
 if (what & UART_FLUSH_RECEIVER)
  fcr |= FCR_RCV_RST;
 uart_setreg(bas, REG_FCR, fcr);
 uart_barrier(bas);
}
