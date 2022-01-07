
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int sc_hwmtx; struct uart_bas sc_bas; } ;
struct uart_mu_softc {int aux_ier; } ;


 int AUX_MU_IER_REG ;
 int AUX_MU_IO_REG ;
 int __uart_setreg (struct uart_bas*,int ,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
uart_mu_bus_transmit(struct uart_softc *sc)
{
 struct uart_mu_softc *psc;
 struct uart_bas *bas;
 int i;

 psc = (struct uart_mu_softc *)sc;
 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);

   for (i = 0; i < sc->sc_txdatasz; i++) {
  __uart_setreg(bas, AUX_MU_IO_REG, sc->sc_txbuf[i] & 0xff);
  uart_barrier(bas);
 }


 sc->sc_txbusy = 1;
 __uart_setreg(bas, AUX_MU_IER_REG, psc->aux_ier);

 uart_unlock(sc->sc_hwmtx);

 return (0);
}
