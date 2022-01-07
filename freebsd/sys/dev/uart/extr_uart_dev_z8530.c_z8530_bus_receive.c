
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int* sc_rxbuf; size_t sc_rxput; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int BES_RXA ;
 int CR_RSTERR ;
 int REG_CTRL ;
 int REG_DATA ;
 int RR_BES ;
 int RR_SRC ;
 int SRC_FE ;
 int SRC_OVR ;
 int SRC_PE ;
 int UART_STAT_FRAMERR ;
 int UART_STAT_OVERRUN ;
 int UART_STAT_PARERR ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getmreg (struct uart_bas*,int ) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 scalar_t__ uart_rx_full (struct uart_softc*) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
z8530_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int xc;
 uint8_t bes, src;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 bes = uart_getmreg(bas, RR_BES);
 while (bes & BES_RXA) {
  if (uart_rx_full(sc)) {
   sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
   break;
  }
  xc = uart_getreg(bas, REG_DATA);
  uart_barrier(bas);
  src = uart_getmreg(bas, RR_SRC);
  if (src & SRC_FE)
   xc |= UART_STAT_FRAMERR;
  if (src & SRC_PE)
   xc |= UART_STAT_PARERR;
  if (src & SRC_OVR)
   xc |= UART_STAT_OVERRUN;
  uart_rx_put(sc, xc);
  if (src & (SRC_FE | SRC_PE | SRC_OVR)) {
   uart_setreg(bas, REG_CTRL, CR_RSTERR);
   uart_barrier(bas);
  }
  bes = uart_getmreg(bas, RR_BES);
 }

 while (bes & BES_RXA) {
  (void)uart_getreg(bas, REG_DATA);
  uart_barrier(bas);
  src = uart_getmreg(bas, RR_SRC);
  if (src & (SRC_FE | SRC_PE | SRC_OVR)) {
   uart_setreg(bas, REG_CTRL, CR_RSTERR);
   uart_barrier(bas);
  }
  bes = uart_getmreg(bas, RR_BES);
 }
 uart_unlock(sc->sc_hwmtx);
 return (0);
}
