
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int dummy; } ;
struct ifnet {struct vtnet_softc* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_NONE ;
 int VTNET_CORE_LOCK (struct vtnet_softc*) ;
 int VTNET_CORE_UNLOCK (struct vtnet_softc*) ;
 int VTNET_MEDIATYPE ;
 scalar_t__ vtnet_is_link_up (struct vtnet_softc*) ;

__attribute__((used)) static void
vtnet_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct vtnet_softc *sc;

 sc = ifp->if_softc;

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 VTNET_CORE_LOCK(sc);
 if (vtnet_is_link_up(sc) != 0) {
  ifmr->ifm_status |= IFM_ACTIVE;
  ifmr->ifm_active |= VTNET_MEDIATYPE;
 } else
  ifmr->ifm_active |= IFM_NONE;
 VTNET_CORE_UNLOCK(sc);
}
