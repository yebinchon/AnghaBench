
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int sc_txbusy; int sc_hwmtx; int * sc_txbuf; struct uart_bas sc_bas; } ;
struct msm_uart_softc {int ier; } ;


 int SETREG (struct uart_bas*,int ,int ) ;
 int UART_DM_IMR ;
 int UART_DM_TX_READY ;
 int msm_putc (struct uart_bas*,int ) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
msm_bus_transmit(struct uart_softc *sc)
{
 struct msm_uart_softc *u = (struct msm_uart_softc *)sc;
 struct uart_bas *bas = &sc->sc_bas;
 int i;

 uart_lock(sc->sc_hwmtx);


 for (i = 0; i < sc->sc_txdatasz; i++) {

  msm_putc(bas, sc->sc_txbuf[i]);
  uart_barrier(bas);
 }


 u->ier |= UART_DM_TX_READY;
 SETREG(bas, UART_DM_IMR, u->ier);
 uart_barrier(bas);





 sc->sc_txbusy = 1;
 uart_unlock(sc->sc_hwmtx);

 return (0);
}
