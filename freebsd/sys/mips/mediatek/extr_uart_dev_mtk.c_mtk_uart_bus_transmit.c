
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int sc_txbusy; int sc_hwmtx; int * sc_txbuf; struct uart_bas sc_bas; } ;


 int UART_LSR_REG ;
 int UART_LSR_THRE ;
 int UART_TX_REG ;
 int mtk_uart_enable_txintr (struct uart_softc*) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_output ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
mtk_uart_bus_transmit(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;
 int i;

 if (!uart_output) return (0);

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 while ((uart_getreg(bas, UART_LSR_REG) & UART_LSR_THRE) == 0);
 mtk_uart_enable_txintr(sc);
 for (i = 0; i < sc->sc_txdatasz; i++) {
  uart_setreg(bas, UART_TX_REG, sc->sc_txbuf[i]);
  uart_barrier(bas);
 }
 sc->sc_txbusy = 1;
 uart_unlock(sc->sc_hwmtx);
 return (0);
}
