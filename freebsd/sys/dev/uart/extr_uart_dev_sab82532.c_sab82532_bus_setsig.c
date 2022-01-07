
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct uart_bas {int chan; } ;
struct uart_softc {int sc_hwsig; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int SAB_MODE ;
 int SAB_MODE_FRTS ;
 int SAB_PVR ;
 int SAB_PVR_DTR_A ;
 int SAB_PVR_DTR_B ;
 int SER_DDTR ;
 int SER_DRTS ;
 int SER_DTR ;
 int SER_RTS ;
 int SIGCHG (int,int,int,int) ;
 int atomic_cmpset_32 (int*,int,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
sab82532_bus_setsig(struct uart_softc *sc, int sig)
{
 struct uart_bas *bas;
 uint32_t new, old;
 uint8_t mode, pvr;

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

 pvr = uart_getreg(bas, SAB_PVR);
 switch (bas->chan) {
 case 1:
  if (new & SER_DTR)
   pvr &= ~SAB_PVR_DTR_A;
  else
   pvr |= SAB_PVR_DTR_A;
  break;
 case 2:
  if (new & SER_DTR)
   pvr &= ~SAB_PVR_DTR_B;
  else
   pvr |= SAB_PVR_DTR_B;
  break;
 }
 uart_setreg(bas, SAB_PVR, pvr);


 mode = uart_getreg(bas, SAB_MODE);
 if (new & SER_RTS)
  mode &= ~SAB_MODE_FRTS;
 else
  mode |= SAB_MODE_FRTS;
 uart_setreg(bas, SAB_MODE, mode);
 uart_barrier(bas);
 uart_unlock(sc->sc_hwmtx);
 return (0);
}
