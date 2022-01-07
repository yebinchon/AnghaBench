
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int sc_hwmtx; int * sc_rxbuf; struct uart_bas sc_bas; } ;


 int AR933X_UART_DATA_REG ;
 int AR933X_UART_DATA_RX_CSR ;
 int UART_STAT_OVERRUN ;
 int ar933x_getreg (struct uart_bas*,int ) ;
 scalar_t__ ar933x_rxready (struct uart_bas*) ;
 int ar933x_setreg (struct uart_bas*,int ,int ) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 scalar_t__ uart_rx_full (struct uart_softc*) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
ar933x_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;
 int xc;

 uart_lock(sc->sc_hwmtx);


 while (ar933x_rxready(bas)) {
  if (uart_rx_full(sc)) {
   sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
   break;
  }


  xc = ar933x_getreg(bas, AR933X_UART_DATA_REG) & 0xff;


  ar933x_setreg(bas, AR933X_UART_DATA_REG,
      AR933X_UART_DATA_RX_CSR);
  uart_barrier(bas);


  uart_rx_put(sc, xc);
 }






 uart_unlock(sc->sc_hwmtx);

 return (0);
}
