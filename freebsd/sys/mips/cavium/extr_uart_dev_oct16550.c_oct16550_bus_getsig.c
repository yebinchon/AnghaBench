
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct uart_softc {int sc_hwsig; int sc_hwmtx; int sc_bas; } ;


 int MSR_CTS ;
 int MSR_DCD ;
 int MSR_DSR ;
 int MSR_RI ;
 int REG_MSR ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DCTS ;
 int SER_DDCD ;
 int SER_DDSR ;
 int SER_DRI ;
 int SER_DSR ;
 int SER_MASK_DELTA ;
 int SER_RI ;
 int SIGCHG (int,int,int ,int ) ;
 int atomic_cmpset_32 (int*,int,int) ;
 int uart_getreg (int *,int ) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
oct16550_bus_getsig (struct uart_softc *sc)
{
 uint32_t new, old, sig;
 uint8_t msr;

 do {
  old = sc->sc_hwsig;
  sig = old;
  uart_lock(sc->sc_hwmtx);
  msr = uart_getreg(&sc->sc_bas, REG_MSR);
  uart_unlock(sc->sc_hwmtx);
  SIGCHG(msr & MSR_DSR, sig, SER_DSR, SER_DDSR);
  SIGCHG(msr & MSR_CTS, sig, SER_CTS, SER_DCTS);
  SIGCHG(msr & MSR_DCD, sig, SER_DCD, SER_DDCD);
  SIGCHG(msr & MSR_RI, sig, SER_RI, SER_DRI);
  new = sig & ~SER_MASK_DELTA;
 } while (!atomic_cmpset_32(&sc->sc_hwsig, old, new));
 return (sig);
}
