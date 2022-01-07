
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;
struct uart_mtk_softc {int ier; int ier_mask; } ;


 int UART_IER_REG ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

void
mtk_uart_bus_grab(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;
 struct uart_mtk_softc *usc = (struct uart_mtk_softc *)sc;

 uart_lock(sc->sc_hwmtx);
 usc->ier = uart_getreg(bas, UART_IER_REG);
 uart_setreg(bas, UART_IER_REG, usc->ier & usc->ier_mask);
 uart_barrier(bas);
 uart_unlock(sc->sc_hwmtx);
}
