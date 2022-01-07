
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;
struct uart_mvebu_softc {int intrm; } ;


 int CTRL_INTR_MASK ;
 int UART_CTRL ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static void
uart_mvebu_bus_grab(struct uart_softc *sc)
{
 struct uart_mvebu_softc *msc = (struct uart_mvebu_softc *)sc;
 struct uart_bas *bas = &sc->sc_bas;
 uint32_t ctrl;


 uart_lock(sc->sc_hwmtx);
 ctrl = uart_getreg(bas, UART_CTRL);
 msc->intrm = ctrl & CTRL_INTR_MASK;
 uart_setreg(bas, UART_CTRL, ctrl & ~CTRL_INTR_MASK);
 uart_barrier(bas);
 uart_unlock(sc->sc_hwmtx);
}
