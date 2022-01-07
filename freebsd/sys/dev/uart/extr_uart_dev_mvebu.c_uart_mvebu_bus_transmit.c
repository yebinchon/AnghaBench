
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int CTRL_INTR_MASK ;
 int CTRL_TX_IDLE_INT ;
 int UART_CTRL ;
 int UART_TSH ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

int
uart_mvebu_bus_transmit(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int i, ctrl;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);


 ctrl = uart_getreg(bas, UART_CTRL);
 uart_setreg(bas, UART_CTRL, ctrl & ~CTRL_INTR_MASK);
 uart_barrier(bas);

 for (i = 0; i < sc->sc_txdatasz; i++) {
  uart_setreg(bas, UART_TSH, sc->sc_txbuf[i] & 0xff);
  uart_barrier(bas);
 }





 uart_setreg(bas, UART_CTRL, ctrl | CTRL_TX_IDLE_INT);
 uart_barrier(bas);


 sc->sc_txbusy = 1;

 uart_unlock(sc->sc_hwmtx);
 return (0);
}
