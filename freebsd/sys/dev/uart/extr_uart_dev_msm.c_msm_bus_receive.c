
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int sc_hwmtx; int * sc_rxbuf; struct uart_bas sc_bas; } ;
struct msm_uart_softc {int ier; } ;


 int SETREG (struct uart_bas*,int ,int ) ;
 int UART_DM_CR ;
 int UART_DM_IMR ;
 int UART_DM_RESET_STALE_INT ;
 int UART_DM_RF (int ) ;
 int UART_DM_RXLEV ;
 int UART_DM_SR ;
 int UART_DM_SR_RXRDY ;
 int UART_DM_STALE_EVENT_ENABLE ;
 int UART_STAT_OVERRUN ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 scalar_t__ uart_rx_full (struct uart_softc*) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
msm_bus_receive(struct uart_softc *sc)
{
 struct msm_uart_softc *u = (struct msm_uart_softc *)sc;
 struct uart_bas *bas;
 int c;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);


 SETREG(bas, UART_DM_CR, UART_DM_RESET_STALE_INT);
 SETREG(bas, UART_DM_CR, UART_DM_STALE_EVENT_ENABLE);
 u->ier |= UART_DM_RXLEV;
 SETREG(bas, UART_DM_IMR, u->ier);


 while (uart_getreg(bas, UART_DM_SR) & UART_DM_SR_RXRDY) {
  if (uart_rx_full(sc)) {

   sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
   break;
  }


  c = uart_getreg(bas, UART_DM_RF(0));
  uart_barrier(bas);

  uart_rx_put(sc, c);
 }

 uart_unlock(sc->sc_hwmtx);

 return (0);
}
