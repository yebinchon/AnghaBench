
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_softc {int sc_hwsig; int sc_hwmtx; } ;


 int SER_CTS ;
 int SER_DCD ;
 int SER_DCTS ;
 int SER_DDCD ;
 int SER_DDSR ;
 int SER_DSR ;
 int SER_MASK_DELTA ;
 int SIGCHG (int,int,int ,int ) ;
 int atomic_cmpset_32 (int*,int,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
quicc_bus_getsig(struct uart_softc *sc)
{
 uint32_t new, old, sig;
 uint32_t dummy;

 do {
  old = sc->sc_hwsig;
  sig = old;
  uart_lock(sc->sc_hwmtx);

  dummy = 0;
  uart_unlock(sc->sc_hwmtx);
  SIGCHG(dummy, sig, SER_CTS, SER_DCTS);
  SIGCHG(dummy, sig, SER_DCD, SER_DDCD);
  SIGCHG(dummy, sig, SER_DSR, SER_DDSR);
  new = sig & ~SER_MASK_DELTA;
 } while (!atomic_cmpset_32(&sc->sc_hwsig, old, new));
 return (sig);
}
