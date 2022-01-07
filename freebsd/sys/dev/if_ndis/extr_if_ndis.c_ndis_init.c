
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211com {scalar_t__ ic_promisc; } ;
struct ndis_softc {scalar_t__ ndis_iftype; int ndis_filter; int ndis_hang_timer; int ndis_running; struct ieee80211com ndis_ic; scalar_t__ ndis_80211; int ndis_stat_callout; TYPE_1__* ndis_block; scalar_t__ ndis_tx_timer; struct ifnet* ifp; scalar_t__ ndis_link; int ndis_maxpkts; int ndis_txpending; scalar_t__ ndis_txidx; int ndis_dev; } ;
struct ifnet {int if_flags; int if_mtu; int if_drv_flags; } ;
typedef int i ;
struct TYPE_2__ {int nmb_checkforhangsecs; } ;


 int ETHERMTU ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int LINK_STATE_UNKNOWN ;
 int NDIS_LOCK (struct ndis_softc*) ;
 int NDIS_PACKET_TYPE_BROADCAST ;
 int NDIS_PACKET_TYPE_DIRECTED ;
 int NDIS_PACKET_TYPE_PROMISCUOUS ;
 int NDIS_UNLOCK (struct ndis_softc*) ;
 int OID_GEN_CURRENT_LOOKAHEAD ;
 int OID_GEN_CURRENT_PACKET_FILTER ;
 scalar_t__ PNPBus ;
 int callout_reset (int *,int ,int ,struct ndis_softc*) ;
 int device_printf (int ,char*,int) ;
 int hz ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int if_link_state_change (struct ifnet*,int ) ;
 int ndis_init_nic (struct ndis_softc*) ;
 int ndis_set_info (struct ndis_softc*,int ,int*,int*) ;
 int ndis_set_offload (struct ndis_softc*) ;
 int ndis_setmulti (struct ndis_softc*) ;
 int ndis_stop (struct ndis_softc*) ;
 int ndis_tick ;
 scalar_t__ ndisusb_halt ;

__attribute__((used)) static void
ndis_init(void *xsc)
{
 struct ndis_softc *sc = xsc;
 int i, len, error;







 if (sc->ndis_link)
  return;




 ndis_stop(sc);

 if (!(sc->ndis_iftype == PNPBus && ndisusb_halt == 0)) {
  error = ndis_init_nic(sc);
  if (error != 0) {
   device_printf(sc->ndis_dev,
       "failed to initialize the device: %d\n", error);
   return;
  }
 }


 sc->ndis_filter = NDIS_PACKET_TYPE_DIRECTED |
     NDIS_PACKET_TYPE_BROADCAST;

 if (sc->ndis_80211) {
  struct ieee80211com *ic = &sc->ndis_ic;

  if (ic->ic_promisc > 0)
   sc->ndis_filter |= NDIS_PACKET_TYPE_PROMISCUOUS;
 } else {
  struct ifnet *ifp = sc->ifp;

  if (ifp->if_flags & IFF_PROMISC)
   sc->ndis_filter |= NDIS_PACKET_TYPE_PROMISCUOUS;
 }

 len = sizeof(sc->ndis_filter);

 error = ndis_set_info(sc, OID_GEN_CURRENT_PACKET_FILTER,
     &sc->ndis_filter, &len);

 if (error)
  device_printf(sc->ndis_dev, "set filter failed: %d\n", error);




 if (sc->ndis_80211)
  i = ETHERMTU;
 else
  i = sc->ifp->if_mtu;
 len = sizeof(i);
 ndis_set_info(sc, OID_GEN_CURRENT_LOOKAHEAD, &i, &len);




 ndis_setmulti(sc);


 ndis_set_offload(sc);

 NDIS_LOCK(sc);

 sc->ndis_txidx = 0;
 sc->ndis_txpending = sc->ndis_maxpkts;
 sc->ndis_link = 0;

 if (!sc->ndis_80211) {
  if_link_state_change(sc->ifp, LINK_STATE_UNKNOWN);
  sc->ifp->if_drv_flags |= IFF_DRV_RUNNING;
  sc->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 }

 sc->ndis_tx_timer = 0;







 if (sc->ndis_block->nmb_checkforhangsecs == 0)
  sc->ndis_block->nmb_checkforhangsecs = 3;

 sc->ndis_hang_timer = sc->ndis_block->nmb_checkforhangsecs;
 callout_reset(&sc->ndis_stat_callout, hz, ndis_tick, sc);
 sc->ndis_running = 1;
 NDIS_UNLOCK(sc);


 if (sc->ndis_80211)
  ieee80211_start_all(&sc->ndis_ic);
}
