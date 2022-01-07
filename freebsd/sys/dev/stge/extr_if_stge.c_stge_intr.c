
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct stge_softc {int sc_IntEnable; int sc_dev; scalar_t__ sc_suspended; struct ifnet* sc_ifp; } ;
struct ifnet {int if_capenable; int if_snd; int if_drv_flags; } ;


 int CSR_READ_2 (struct stge_softc*,int ) ;
 int CSR_WRITE_2 (struct stge_softc*,int ,int) ;
 int CSR_WRITE_4 (struct stge_softc*,int ,int ) ;
 int DMAC_RxDMAPollNow ;
 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int IS_HostError ;
 int IS_InterruptStatus ;
 int IS_RFDListEnd ;
 int IS_RxDMAComplete ;
 int IS_TxComplete ;
 int IS_TxDMAComplete ;
 int STGE_DMACtrl ;
 int STGE_IntEnable ;
 int STGE_IntStatus ;
 int STGE_IntStatusAck ;
 int STGE_LOCK (struct stge_softc*) ;
 int STGE_UNLOCK (struct stge_softc*) ;
 int device_printf (int ,char*) ;
 int stge_init_locked (struct stge_softc*) ;
 int stge_rxeof (struct stge_softc*) ;
 int stge_start_locked (struct ifnet*) ;
 int stge_tx_error (struct stge_softc*) ;
 int stge_txeof (struct stge_softc*) ;

__attribute__((used)) static void
stge_intr(void *arg)
{
 struct stge_softc *sc;
 struct ifnet *ifp;
 int reinit;
 uint16_t status;

 sc = (struct stge_softc *)arg;
 ifp = sc->sc_ifp;

 STGE_LOCK(sc);





 status = CSR_READ_2(sc, STGE_IntStatus);
 if (sc->sc_suspended || (status & IS_InterruptStatus) == 0)
  goto done_locked;


 for (reinit = 0;;) {
  status = CSR_READ_2(sc, STGE_IntStatusAck);
  status &= sc->sc_IntEnable;
  if (status == 0)
   break;

  if ((status & IS_HostError) != 0) {
   device_printf(sc->sc_dev,
       "Host interface error, resetting...\n");
   reinit = 1;
   goto force_init;
  }


  if ((status & IS_RxDMAComplete) != 0) {
   stge_rxeof(sc);
   if ((status & IS_RFDListEnd) != 0)
    CSR_WRITE_4(sc, STGE_DMACtrl,
        DMAC_RxDMAPollNow);
  }


  if ((status & (IS_TxDMAComplete | IS_TxComplete)) != 0)
   stge_txeof(sc);


  if ((status & IS_TxComplete) != 0) {
   if ((reinit = stge_tx_error(sc)) != 0)
    break;
  }
 }

force_init:
 if (reinit != 0) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  stge_init_locked(sc);
 }


 CSR_WRITE_2(sc, STGE_IntEnable, sc->sc_IntEnable);


 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  stge_start_locked(ifp);

done_locked:
 STGE_UNLOCK(sc);
}
