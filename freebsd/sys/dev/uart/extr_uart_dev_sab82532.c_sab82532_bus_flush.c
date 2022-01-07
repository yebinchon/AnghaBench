
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_hwmtx; int sc_bas; } ;


 int sab82532_flush (int *,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
sab82532_bus_flush(struct uart_softc *sc, int what)
{

 uart_lock(sc->sc_hwmtx);
 sab82532_flush(&sc->sc_bas, what);
 uart_unlock(sc->sc_hwmtx);
 return (0);
}
