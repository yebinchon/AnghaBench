
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct uart_softc {int sc_hwsig; int sc_hwmtx; int sc_bas; } ;


 int SER_CTS ;
 int SER_DCD ;
 int SER_DCTS ;
 int SER_DDCD ;
 int SER_DDSR ;
 int SER_DSR ;
 int SER_MASK_DELTA ;
 int SIGCHG (int,int,int ,int ) ;
 int UART_MSR_CTS ;
 int UART_MSR_DCD ;
 int UART_MSR_DSR ;
 int UART_MSR_REG ;
 int atomic_cmpset_32 (int*,int,int) ;
 int uart_getreg (int *,int ) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
mtk_uart_bus_getsig(struct uart_softc *sc)
{
 uint32_t new, old, sig;
 uint8_t bes;

 return(0);
 do {
  old = sc->sc_hwsig;
  sig = old;
  uart_lock(sc->sc_hwmtx);
  bes = uart_getreg(&sc->sc_bas, UART_MSR_REG);
  uart_unlock(sc->sc_hwmtx);

  SIGCHG(bes & UART_MSR_CTS, sig, SER_CTS, SER_DCTS);
  SIGCHG(bes & UART_MSR_DCD, sig, SER_DCD, SER_DDCD);
  SIGCHG(bes & UART_MSR_DSR, sig, SER_DSR, SER_DDSR);
  new = sig & ~SER_MASK_DELTA;
 } while (!atomic_cmpset_32(&sc->sc_hwsig, old, new));

 return (sig);
}
