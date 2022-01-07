
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_softc {int txidle; } ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txbusy; int sc_hwmtx; int * sc_txbuf; struct uart_bas sc_bas; } ;


 int BES_TXE ;
 int REG_DATA ;
 int RR_BES ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getmreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
z8530_bus_transmit(struct uart_softc *sc)
{
 struct z8530_softc *z8530 = (struct z8530_softc*)sc;
 struct uart_bas *bas;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 while (!(uart_getmreg(bas, RR_BES) & BES_TXE))
  ;
 uart_setreg(bas, REG_DATA, sc->sc_txbuf[0]);
 uart_barrier(bas);
 sc->sc_txbusy = 1;
 z8530->txidle = 1;
 uart_unlock(sc->sc_hwmtx);
 return (0);
}
