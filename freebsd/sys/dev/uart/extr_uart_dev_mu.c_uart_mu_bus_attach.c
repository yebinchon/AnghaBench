
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {scalar_t__ sc_txbusy; struct uart_bas sc_bas; } ;
struct uart_mu_softc {int aux_ier; } ;


 int AUX_MU_IER_REG ;
 int AUX_MU_IIR_REG ;
 int IER_REQUIRED ;
 int IER_RXENABLE ;
 int IER_TXENABLE ;
 int IIR_CLEAR ;
 int __uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
uart_mu_bus_attach(struct uart_softc *sc)
{
 struct uart_mu_softc *psc;
 struct uart_bas *bas;

 psc = (struct uart_mu_softc *)sc;
 bas = &sc->sc_bas;

 __uart_setreg(bas, AUX_MU_IIR_REG, IIR_CLEAR);

 psc->aux_ier = (IER_RXENABLE|IER_TXENABLE|IER_REQUIRED);
 __uart_setreg(bas, AUX_MU_IER_REG, psc->aux_ier);
 sc->sc_txbusy = 0;

 return (0);
}
