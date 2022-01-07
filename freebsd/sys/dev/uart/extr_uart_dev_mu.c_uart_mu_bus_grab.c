
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;
struct uart_mu_softc {int aux_ier; } ;


 int AUX_MU_IER_REG ;
 int IER_MASK_ALL ;
 int __uart_setreg (struct uart_bas*,int ,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static void
uart_mu_bus_grab(struct uart_softc *sc)
{
 struct uart_mu_softc *psc;
 struct uart_bas *bas;

 psc = (struct uart_mu_softc *)sc;
 bas = &sc->sc_bas;


 uart_lock(sc->sc_hwmtx);
 __uart_setreg(bas, AUX_MU_IER_REG, psc->aux_ier &~IER_MASK_ALL);
 uart_unlock(sc->sc_hwmtx);
}
