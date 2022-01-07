
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int sc_hwmtx; int * sc_rxbuf; struct uart_bas sc_bas; } ;


 int DR_RX_FIFO_EMPTY ;
 int GETREG (struct uart_bas*,int ) ;
 int INT_STATUS_ACK ;
 int SETREG (struct uart_bas*,int ,int ) ;
 int UART_DR ;
 int UART_INT_STATUS ;
 int UART_STAT_OVERRUN ;
 int uart_lock (int ) ;
 scalar_t__ uart_rx_full (struct uart_softc*) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
lowrisc_uart_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas;
 uint32_t reg;

 bas = &sc->sc_bas;

 uart_lock(sc->sc_hwmtx);

 do {
  if (uart_rx_full(sc)) {

   sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
   break;
  }
  reg = GETREG(bas, UART_DR);
  SETREG(bas, UART_INT_STATUS, INT_STATUS_ACK);
  uart_rx_put(sc, reg & 0xff);
 } while ((reg & DR_RX_FIFO_EMPTY) == 0);

 uart_unlock(sc->sc_hwmtx);

 return (0);
}
