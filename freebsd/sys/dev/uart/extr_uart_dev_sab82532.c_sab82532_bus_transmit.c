
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int sc_txbusy; int sc_hwmtx; int * sc_txbuf; struct uart_bas sc_bas; } ;


 scalar_t__ SAB_CMDR ;
 int SAB_CMDR_XF ;
 int SAB_STAR ;
 int SAB_STAR_CEC ;
 int SAB_STAR_XFW ;
 scalar_t__ SAB_XFIFO ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,scalar_t__,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
sab82532_bus_transmit(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int i;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 while (!(uart_getreg(bas, SAB_STAR) & SAB_STAR_XFW))
  ;
 for (i = 0; i < sc->sc_txdatasz; i++)
  uart_setreg(bas, SAB_XFIFO + i, sc->sc_txbuf[i]);
 uart_barrier(bas);
 while (uart_getreg(bas, SAB_STAR) & SAB_STAR_CEC)
  ;
 uart_setreg(bas, SAB_CMDR, SAB_CMDR_XF);
 sc->sc_txbusy = 1;
 uart_unlock(sc->sc_hwmtx);
 return (0);
}
