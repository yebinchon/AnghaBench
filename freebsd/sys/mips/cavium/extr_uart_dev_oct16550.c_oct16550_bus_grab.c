
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int REG_IER ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static void
oct16550_bus_grab(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;






 uart_lock(sc->sc_hwmtx);
 uart_setreg(bas, REG_IER, 0);
 uart_barrier(bas);
 uart_unlock(sc->sc_hwmtx);
}
