
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ti_status_map; int ti_status_tag; } ;
struct ti_softc {TYPE_1__ ti_cdata; struct ifnet* ti_ifp; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int CSR_READ_4 (struct ti_softc*,int ) ;
 int CSR_WRITE_4 (struct ti_softc*,int ,int) ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int TI_LOCK (struct ti_softc*) ;
 int TI_MB_HOSTINTR ;
 int TI_MHC_INTSTATE ;
 int TI_MISC_HOST_CTL ;
 int TI_UNLOCK (struct ti_softc*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int ti_handle_events (struct ti_softc*) ;
 int ti_rxeof (struct ti_softc*) ;
 int ti_start_locked (struct ifnet*) ;
 int ti_txeof (struct ti_softc*) ;

__attribute__((used)) static void
ti_intr(void *xsc)
{
 struct ti_softc *sc;
 struct ifnet *ifp;

 sc = xsc;
 TI_LOCK(sc);
 ifp = sc->ti_ifp;


 if (!(CSR_READ_4(sc, TI_MISC_HOST_CTL) & TI_MHC_INTSTATE)) {
  TI_UNLOCK(sc);
  return;
 }


 CSR_WRITE_4(sc, TI_MB_HOSTINTR, 1);

 if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
  bus_dmamap_sync(sc->ti_cdata.ti_status_tag,
      sc->ti_cdata.ti_status_map, BUS_DMASYNC_POSTREAD);

  ti_rxeof(sc);


  ti_txeof(sc);
  bus_dmamap_sync(sc->ti_cdata.ti_status_tag,
      sc->ti_cdata.ti_status_map, BUS_DMASYNC_PREREAD);
 }

 ti_handle_events(sc);

 if (ifp->if_drv_flags & IFF_DRV_RUNNING) {

  CSR_WRITE_4(sc, TI_MB_HOSTINTR, 0);
  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   ti_start_locked(ifp);
 }

 TI_UNLOCK(sc);
}
