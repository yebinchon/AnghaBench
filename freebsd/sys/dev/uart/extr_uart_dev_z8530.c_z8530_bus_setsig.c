
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct z8530_softc {int tpc; } ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwsig; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int SER_DDTR ;
 int SER_DRTS ;
 int SER_DTR ;
 int SER_RTS ;
 int SIGCHG (int,int,int,int) ;
 int TPC_DTR ;
 int TPC_RTS ;
 int WR_TPC ;
 int atomic_cmpset_32 (int*,int,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_lock (int ) ;
 int uart_setmreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
z8530_bus_setsig(struct uart_softc *sc, int sig)
{
 struct z8530_softc *z8530 = (struct z8530_softc*)sc;
 struct uart_bas *bas;
 uint32_t new, old;

 bas = &sc->sc_bas;
 do {
  old = sc->sc_hwsig;
  new = old;
  if (sig & SER_DDTR) {
   SIGCHG(sig & SER_DTR, new, SER_DTR,
       SER_DDTR);
  }
  if (sig & SER_DRTS) {
   SIGCHG(sig & SER_RTS, new, SER_RTS,
       SER_DRTS);
  }
 } while (!atomic_cmpset_32(&sc->sc_hwsig, old, new));

 uart_lock(sc->sc_hwmtx);
 if (new & SER_DTR)
  z8530->tpc |= TPC_DTR;
 else
  z8530->tpc &= ~TPC_DTR;
 if (new & SER_RTS)
  z8530->tpc |= TPC_RTS;
 else
  z8530->tpc &= ~TPC_RTS;
 uart_setmreg(bas, WR_TPC, z8530->tpc);
 uart_barrier(bas);
 uart_unlock(sc->sc_hwmtx);
 return (0);
}
