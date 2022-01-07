
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_rxfifosz; int sc_hwmtx; struct uart_bas sc_bas; } ;
struct oct16550_softc {int fcr; } ;


 int REG_FCR ;
 int oct16550_drain (struct uart_bas*,int) ;
 int oct16550_flush (struct uart_bas*,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
oct16550_bus_flush (struct uart_softc *sc, int what)
{
 struct oct16550_softc *oct16550 = (struct oct16550_softc*)sc;
 struct uart_bas *bas;
 int error;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 if (sc->sc_rxfifosz > 1) {
  oct16550_flush(bas, what);
  uart_setreg(bas, REG_FCR, oct16550->fcr);
  uart_barrier(bas);
  error = 0;
 } else
  error = oct16550_drain(bas, what);
 uart_unlock(sc->sc_hwmtx);
 return (error);
}
