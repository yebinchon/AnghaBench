
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int sc_hwmtx; struct uart_bas sc_bas; } ;
struct ns8250_softc {int ier; } ;


 int DELAY (int) ;
 int IER_ETXRDY ;
 int LSR_THRE ;
 int REG_DATA ;
 int REG_IER ;
 int REG_LSR ;
 int SER_INT_TXIDLE ;
 int UART_DRAIN_TRANSMITTER ;
 scalar_t__ broken_txfifo ;
 int ns8250_drain (struct uart_bas*,int ) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_sched_softih (struct uart_softc*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

int
ns8250_bus_transmit(struct uart_softc *sc)
{
 struct ns8250_softc *ns8250 = (struct ns8250_softc*)sc;
 struct uart_bas *bas;
 int i;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 while ((uart_getreg(bas, REG_LSR) & LSR_THRE) == 0)
  DELAY(4);
 for (i = 0; i < sc->sc_txdatasz; i++) {
  uart_setreg(bas, REG_DATA, sc->sc_txbuf[i]);
  uart_barrier(bas);
 }
 uart_setreg(bas, REG_IER, ns8250->ier | IER_ETXRDY);
 uart_barrier(bas);
 if (broken_txfifo)
  ns8250_drain(bas, UART_DRAIN_TRANSMITTER);
 else
  sc->sc_txbusy = 1;
 uart_unlock(sc->sc_hwmtx);
 if (broken_txfifo)
  uart_sched_softih(sc, SER_INT_TXIDLE);
 return (0);
}
