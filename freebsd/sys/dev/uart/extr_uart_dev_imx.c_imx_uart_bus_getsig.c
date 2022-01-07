
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct uart_softc {int sc_hwsig; int sc_hwmtx; int sc_bas; } ;


 int DCDIN ;
 int FLD (int ,int ) ;
 int GETREG (int *,int ) ;
 int REG (int ) ;
 int SER_DCD ;
 int SER_DDCD ;
 int SER_MASK_DELTA ;
 int SIGCHG (int,int,int ,int ) ;
 int USR2 ;
 int atomic_cmpset_32 (int*,int,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
imx_uart_bus_getsig(struct uart_softc *sc)
{
 uint32_t new, old, sig;
 uint8_t bes;

 do {
  old = sc->sc_hwsig;
  sig = old;
  uart_lock(sc->sc_hwmtx);
  bes = GETREG(&sc->sc_bas, REG(USR2));
  uart_unlock(sc->sc_hwmtx);

  SIGCHG(bes & FLD(USR2, DCDIN), sig, SER_DCD, SER_DDCD);
  new = sig & ~SER_MASK_DELTA;
 } while (!atomic_cmpset_32(&sc->sc_hwsig, old, new));

 return (sig);
}
