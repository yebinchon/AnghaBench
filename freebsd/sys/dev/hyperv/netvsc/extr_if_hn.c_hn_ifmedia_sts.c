
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct hn_softc* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
struct hn_softc {int hn_link_flags; } ;


 int HN_LINK_FLAG_LINKUP ;
 int IFM_10G_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_NONE ;

__attribute__((used)) static void
hn_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct hn_softc *sc = ifp->if_softc;

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 if ((sc->hn_link_flags & HN_LINK_FLAG_LINKUP) == 0) {
  ifmr->ifm_active |= IFM_NONE;
  return;
 }
 ifmr->ifm_status |= IFM_ACTIVE;
 ifmr->ifm_active |= IFM_10G_T | IFM_FDX;
}
