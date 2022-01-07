
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_rxfifosz; int sc_hwmtx; struct uart_bas sc_bas; } ;
struct ns8250_softc {int fcr; } ;


 int REG_FCR ;
 int ns8250_drain (struct uart_bas*,int) ;
 int ns8250_flush (struct uart_bas*,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

int
ns8250_bus_flush(struct uart_softc *sc, int what)
{
 struct ns8250_softc *ns8250 = (struct ns8250_softc*)sc;
 struct uart_bas *bas;
 int error;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 if (sc->sc_rxfifosz > 1) {
  ns8250_flush(bas, what);
  uart_setreg(bas, REG_FCR, ns8250->fcr);
  uart_barrier(bas);
  error = 0;
 } else
  error = ns8250_drain(bas, what);
 uart_unlock(sc->sc_hwmtx);
 return (error);
}
