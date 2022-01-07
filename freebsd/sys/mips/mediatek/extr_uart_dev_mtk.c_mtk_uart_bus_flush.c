
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_bas sc_bas; } ;


 int UART_FCR_REG ;
 int UART_FCR_RXRST ;
 int UART_FCR_TXRST ;
 int UART_FLUSH_RECEIVER ;
 int UART_FLUSH_TRANSMITTER ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
mtk_uart_bus_flush(struct uart_softc *sc, int what)
{
 struct uart_bas *bas = &sc->sc_bas;
 uint32_t fcr = uart_getreg(bas, UART_FCR_REG);

 if (what & UART_FLUSH_TRANSMITTER) {
  uart_setreg(bas, UART_FCR_REG, fcr|UART_FCR_TXRST);
  uart_barrier(bas);
 }
 if (what & UART_FLUSH_RECEIVER) {
  uart_setreg(bas, UART_FCR_REG, fcr|UART_FCR_RXRST);
  uart_barrier(bas);
 }
 uart_setreg(bas, UART_FCR_REG, fcr);
 uart_barrier(bas);
 return (0);
}
