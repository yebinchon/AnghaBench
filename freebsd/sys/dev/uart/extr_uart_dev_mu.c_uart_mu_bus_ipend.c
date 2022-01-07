
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; scalar_t__ sc_txbusy; struct uart_bas sc_bas; } ;
struct uart_mu_softc {int aux_ier; } ;


 int AUX_MU_IER_REG ;
 int AUX_MU_IIR_REG ;
 int AUX_MU_LSR_REG ;
 int IER_TXENABLE ;
 int IIR_RXREADY ;
 int IIR_TXREADY ;
 int LSR_TXIDLE ;
 int SER_INT_RXREADY ;
 int SER_INT_TXIDLE ;
 int __uart_getreg (struct uart_bas*,int ) ;
 int __uart_setreg (struct uart_bas*,int ,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
uart_mu_bus_ipend(struct uart_softc *sc)
{
 struct uart_mu_softc *psc;
 struct uart_bas *bas;
 uint32_t ints;
 int ipend;

 psc = (struct uart_mu_softc *)sc;
 bas = &sc->sc_bas;

 uart_lock(sc->sc_hwmtx);
 ints = __uart_getreg(bas, AUX_MU_IIR_REG);
 ipend = 0;





 if (ints & IIR_RXREADY) {
  ipend |= SER_INT_RXREADY;
 } else if (ints & IIR_TXREADY) {
  if (__uart_getreg(bas, AUX_MU_LSR_REG) & LSR_TXIDLE) {
   if (sc->sc_txbusy)
    ipend |= SER_INT_TXIDLE;


   __uart_setreg(bas, AUX_MU_IER_REG,
          psc->aux_ier & ~IER_TXENABLE);
  }
 }

 uart_unlock(sc->sc_hwmtx);

 return (ipend);
}
