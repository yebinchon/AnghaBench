
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct uart_softc {int sc_hwsig; int sc_pps_mode; int sc_hwmtx; int sc_bas; } ;


 int CTS ;
 int DCD ;
 int DSR ;
 int REG_MSR ;
 int RI ;
 int SER_MASK_DELTA ;
 int SIGCHGHW (int,int ,int ) ;
 int SIGCHGSW (int,int ,int ) ;
 int UART_PPS_NARROW_PULSE ;
 int atomic_cmpset_32 (int*,int,int) ;
 int uart_getreg (int *,int ) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

int
ns8250_bus_getsig(struct uart_softc *sc)
{
 uint32_t old, sig;
 uint8_t msr;
 do {
  old = sc->sc_hwsig;
  sig = old;
  uart_lock(sc->sc_hwmtx);
  msr = uart_getreg(&sc->sc_bas, REG_MSR);
  uart_unlock(sc->sc_hwmtx);
  if (sc->sc_pps_mode & UART_PPS_NARROW_PULSE) {
   SIGCHGHW(sig, msr, DSR);
   SIGCHGHW(sig, msr, CTS);
   SIGCHGHW(sig, msr, DCD);
  } else {
   SIGCHGSW(sig, msr, DSR);
   SIGCHGSW(sig, msr, CTS);
   SIGCHGSW(sig, msr, DCD);
  }
  SIGCHGSW(sig, msr, RI);
 } while (!atomic_cmpset_32(&sc->sc_hwsig, old, sig & ~SER_MASK_DELTA));
 return (sig);
}
