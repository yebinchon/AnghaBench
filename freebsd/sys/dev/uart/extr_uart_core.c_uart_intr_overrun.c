
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {size_t sc_rxput; int * sc_rxbuf; scalar_t__ sc_opened; } ;


 int SER_INT_RXREADY ;
 int UART_FLUSH (struct uart_softc*,int ) ;
 int UART_FLUSH_RECEIVER ;
 int UART_RECEIVE (struct uart_softc*) ;
 int UART_STAT_OVERRUN ;
 scalar_t__ uart_rx_put (struct uart_softc*,int ) ;
 int uart_sched_softih (struct uart_softc*,int ) ;

__attribute__((used)) static __inline int
uart_intr_overrun(void *arg)
{
 struct uart_softc *sc = arg;

 if (sc->sc_opened) {
  UART_RECEIVE(sc);
  if (uart_rx_put(sc, UART_STAT_OVERRUN))
   sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
  uart_sched_softih(sc, SER_INT_RXREADY);
 }
 UART_FLUSH(sc, UART_FLUSH_RECEIVER);
 return (0);
}
