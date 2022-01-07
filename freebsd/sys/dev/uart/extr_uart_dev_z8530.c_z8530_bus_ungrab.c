
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int IDT_RIA ;
 int IDT_TIE ;
 int IDT_XIE ;
 int WR_IDT ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_setmreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static void
z8530_bus_ungrab(struct uart_softc *sc)
{
 struct uart_bas *bas;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 uart_setmreg(bas, WR_IDT, IDT_XIE | IDT_TIE | IDT_RIA);
 uart_barrier(bas);
 uart_unlock(sc->sc_hwmtx);
}
