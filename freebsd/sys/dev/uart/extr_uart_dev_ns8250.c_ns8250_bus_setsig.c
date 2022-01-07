
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwsig; int sc_hwmtx; struct uart_bas sc_bas; } ;
struct ns8250_softc {int mcr; } ;


 int MCR_DTR ;
 int MCR_RTS ;
 int REG_MCR ;
 int SER_DDTR ;
 int SER_DRTS ;
 int SER_DTR ;
 int SER_RTS ;
 int atomic_cmpset_32 (int*,int,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

int
ns8250_bus_setsig(struct uart_softc *sc, int sig)
{
 struct ns8250_softc *ns8250 = (struct ns8250_softc*)sc;
 struct uart_bas *bas;
 uint32_t new, old;

 bas = &sc->sc_bas;
 do {
  old = sc->sc_hwsig;
  new = old;
  if (sig & SER_DDTR) {
   new = (new & ~SER_DTR) | (sig & (SER_DTR | SER_DDTR));
  }
  if (sig & SER_DRTS) {
   new = (new & ~SER_RTS) | (sig & (SER_RTS | SER_DRTS));
  }
 } while (!atomic_cmpset_32(&sc->sc_hwsig, old, new));
 uart_lock(sc->sc_hwmtx);
 ns8250->mcr &= ~(MCR_DTR|MCR_RTS);
 if (new & SER_DTR)
  ns8250->mcr |= MCR_DTR;
 if (new & SER_RTS)
  ns8250->mcr |= MCR_RTS;
 uart_setreg(bas, REG_MCR, ns8250->mcr);
 uart_barrier(bas);
 uart_unlock(sc->sc_hwmtx);
 return (0);
}
