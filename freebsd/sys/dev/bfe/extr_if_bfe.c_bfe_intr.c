
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet {int if_drv_flags; int if_snd; } ;
struct bfe_softc {int bfe_dev; struct ifnet* bfe_ifp; } ;


 int BFE_IMASK_DEF ;
 int BFE_ISTAT ;
 int BFE_ISTAT_DPE ;
 int BFE_ISTAT_DSCE ;
 int BFE_ISTAT_ERRORS ;
 int BFE_ISTAT_RX ;
 int BFE_ISTAT_TX ;
 int BFE_LOCK (struct bfe_softc*) ;
 int BFE_UNLOCK (struct bfe_softc*) ;
 int CSR_READ_4 (struct bfe_softc*,int ) ;
 int CSR_WRITE_4 (struct bfe_softc*,int ,int) ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int bfe_init_locked (struct bfe_softc*) ;
 int bfe_rxeof (struct bfe_softc*) ;
 int bfe_start_locked (struct ifnet*) ;
 int bfe_stop (struct bfe_softc*) ;
 int bfe_txeof (struct bfe_softc*) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
bfe_intr(void *xsc)
{
 struct bfe_softc *sc = xsc;
 struct ifnet *ifp;
 u_int32_t istat;

 ifp = sc->bfe_ifp;

 BFE_LOCK(sc);

 istat = CSR_READ_4(sc, BFE_ISTAT);






 istat &= BFE_IMASK_DEF;
 CSR_WRITE_4(sc, BFE_ISTAT, istat);
 CSR_READ_4(sc, BFE_ISTAT);


 if (istat == 0 || (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
  BFE_UNLOCK(sc);
  return;
 }


 if (istat & BFE_ISTAT_RX)
  bfe_rxeof(sc);


 if (istat & BFE_ISTAT_TX)
  bfe_txeof(sc);

 if (istat & BFE_ISTAT_ERRORS) {

  if (istat & BFE_ISTAT_DSCE) {
   device_printf(sc->bfe_dev, "Descriptor Error\n");
   bfe_stop(sc);
   BFE_UNLOCK(sc);
   return;
  }

  if (istat & BFE_ISTAT_DPE) {
   device_printf(sc->bfe_dev,
       "Descriptor Protocol Error\n");
   bfe_stop(sc);
   BFE_UNLOCK(sc);
   return;
  }
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  bfe_init_locked(sc);
 }


 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
  bfe_start_locked(ifp);

 BFE_UNLOCK(sc);
}
