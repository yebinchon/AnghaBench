
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int CTRL_INTR_MASK ;
 int CTRL_IPEND_MASK ;
 int UART_CTRL ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
uart_mvebu_bus_attach(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int ctrl;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);

 ctrl = uart_getreg(bas, UART_CTRL);


 ctrl &=~ CTRL_INTR_MASK;
 ctrl |= CTRL_IPEND_MASK;


 uart_setreg(bas, UART_CTRL, ctrl);
 uart_barrier(bas);

 uart_unlock(sc->sc_hwmtx);

 return (0);
}
