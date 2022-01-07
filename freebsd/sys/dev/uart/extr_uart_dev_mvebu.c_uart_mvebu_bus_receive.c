
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int sc_hwmtx; int * sc_rxbuf; struct uart_bas sc_bas; } ;


 int RBR_BRK_DET ;
 int RBR_FRM_ERR_DET ;
 int RBR_OVR_ERR_DET ;
 int RBR_PAR_ERR_DET ;
 int STAT_RX_FIFO_EMPT ;
 int UART_FLUSH_RECEIVER ;
 int UART_RBR ;
 int UART_STAT ;
 int UART_STAT_OVERRUN ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_mvebu_bus_flush (struct uart_softc*,int ) ;
 scalar_t__ uart_rx_full (struct uart_softc*) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_unlock (int ) ;

int
uart_mvebu_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas;
 uint32_t xc;
 int rx, er;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);

 while (!(uart_getreg(bas, UART_STAT) & STAT_RX_FIFO_EMPT)) {
  if (uart_rx_full(sc)) {
   sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
   break;
  }

  xc = uart_getreg(bas, UART_RBR);
  rx = xc & 0xff;
  er = xc & 0xf000;




  er = (er & RBR_BRK_DET) >> 7 |
      (er & RBR_FRM_ERR_DET) >> 5 |
      (er & RBR_PAR_ERR_DET) >> 2 |
      (er & RBR_OVR_ERR_DET) >> 2;

  uart_rx_put(sc, rx | er);
  uart_barrier(bas);
 }






 if (!(uart_getreg(bas, UART_STAT) & STAT_RX_FIFO_EMPT)) {
  uart_mvebu_bus_flush(sc, UART_FLUSH_RECEIVER);
 }

 uart_unlock(sc->sc_hwmtx);
 return (0);
}
