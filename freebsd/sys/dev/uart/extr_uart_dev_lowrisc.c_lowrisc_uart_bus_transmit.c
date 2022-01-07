
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int DR_TX_FIFO_FULL ;
 int GETREG (struct uart_bas*,int ) ;
 int SETREG (struct uart_bas*,int ,int) ;
 int UART_DR ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
lowrisc_uart_bus_transmit(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int i;

 bas = &sc->sc_bas;

 uart_lock(sc->sc_hwmtx);
 for (i = 0; i < sc->sc_txdatasz; i++) {
  while (GETREG(bas, UART_DR) & DR_TX_FIFO_FULL)
   ;
  SETREG(bas, UART_DR, sc->sc_txbuf[i] & 0xff);
 }
 uart_unlock(sc->sc_hwmtx);

 return (0);
}
