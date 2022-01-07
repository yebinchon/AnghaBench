
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {scalar_t__ bge_timer; int bge_ifp; } ;
typedef int if_t ;


 int BGE_LOCK_ASSERT (struct bge_softc*) ;
 int BGE_RXMODE_FLOWCTL_ENABLE ;
 int BGE_RXSTAT_RCVD_XOFF ;
 int BGE_RXSTAT_RCVD_XON ;
 int BGE_RXSTAT_REMOTE_XOFFED ;
 int BGE_RX_MODE ;
 int BGE_RX_STS ;
 void* BGE_TX_TIMEOUT ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int CSR_WRITE_4 (struct bge_softc*,int ,int) ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int bge_init_locked (struct bge_softc*) ;
 int if_inc_counter (int ,int ,int) ;
 int if_printf (int ,char*) ;
 int if_setdrvflagbits (int ,int ,int ) ;

__attribute__((used)) static void
bge_watchdog(struct bge_softc *sc)
{
 if_t ifp;
 uint32_t status;

 BGE_LOCK_ASSERT(sc);

 if (sc->bge_timer == 0 || --sc->bge_timer)
  return;


 if ((CSR_READ_4(sc, BGE_RX_MODE) & BGE_RXMODE_FLOWCTL_ENABLE) != 0) {
  status = CSR_READ_4(sc, BGE_RX_STS);
  if ((status & BGE_RXSTAT_REMOTE_XOFFED) != 0) {




   CSR_WRITE_4(sc, BGE_RX_STS, status);
   sc->bge_timer = BGE_TX_TIMEOUT;
   return;
  } else if ((status & BGE_RXSTAT_RCVD_XOFF) != 0 &&
      (status & BGE_RXSTAT_RCVD_XON) != 0) {




   CSR_WRITE_4(sc, BGE_RX_STS, status);
   sc->bge_timer = BGE_TX_TIMEOUT;
   return;
  }




 }

 ifp = sc->bge_ifp;

 if_printf(ifp, "watchdog timeout -- resetting\n");

 if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
 bge_init_locked(sc);

 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
}
