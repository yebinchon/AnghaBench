
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int SETREG (struct uart_bas*,int ,int ) ;
 int UART_DM_CR ;
 int UART_DM_IMR ;
 int UART_DM_RESET_STALE_INT ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static void
msm_bus_grab(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;





 uart_lock(sc->sc_hwmtx);
 SETREG(bas, UART_DM_CR, UART_DM_RESET_STALE_INT);
 SETREG(bas, UART_DM_IMR, 0);
 uart_barrier(bas);
 uart_unlock(sc->sc_hwmtx);
}
