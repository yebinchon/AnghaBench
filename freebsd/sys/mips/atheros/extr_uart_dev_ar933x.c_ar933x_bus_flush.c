
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int ar933x_drain (struct uart_bas*,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
ar933x_bus_flush(struct uart_softc *sc, int what)
{
 struct uart_bas *bas;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 ar933x_drain(bas, what);
 uart_unlock(sc->sc_hwmtx);

 return (0);
}
