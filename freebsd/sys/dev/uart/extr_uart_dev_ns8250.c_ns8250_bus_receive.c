
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int sc_hwmtx; int * sc_rxbuf; struct uart_bas sc_bas; } ;


 int LSR_FE ;
 int LSR_PE ;
 int LSR_RXRDY ;
 int REG_DATA ;
 int REG_LSR ;
 int UART_STAT_FRAMERR ;
 int UART_STAT_OVERRUN ;
 int UART_STAT_PARERR ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 scalar_t__ uart_rx_full (struct uart_softc*) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_unlock (int ) ;

int
ns8250_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int xc;
 uint8_t lsr;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 lsr = uart_getreg(bas, REG_LSR);
 while (lsr & LSR_RXRDY) {
  if (uart_rx_full(sc)) {
   sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
   break;
  }
  xc = uart_getreg(bas, REG_DATA);
  if (lsr & LSR_FE)
   xc |= UART_STAT_FRAMERR;
  if (lsr & LSR_PE)
   xc |= UART_STAT_PARERR;
  uart_rx_put(sc, xc);
  lsr = uart_getreg(bas, REG_LSR);
 }

 while (lsr & LSR_RXRDY) {
  (void)uart_getreg(bas, REG_DATA);
  uart_barrier(bas);
  lsr = uart_getreg(bas, REG_LSR);
 }
 uart_unlock(sc->sc_hwmtx);
  return (0);
}
