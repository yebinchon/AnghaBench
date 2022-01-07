
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {struct axgbe_softc* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
struct TYPE_3__ {scalar_t__ duplex; int speed; int link; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct axgbe_softc {TYPE_2__ prv; } ;


 scalar_t__ DUPLEX_FULL ;
 int IFM_1000_KX ;
 int IFM_10G_KR ;
 int IFM_2500_KX ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;




__attribute__((used)) static void
axgbe_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct axgbe_softc *sc;

 sc = ifp->if_softc;

 ifmr->ifm_status = IFM_AVALID;
 if (!sc->prv.phy.link)
  return;

 ifmr->ifm_status |= IFM_ACTIVE;
 ifmr->ifm_active = IFM_ETHER;

 if (sc->prv.phy.duplex == DUPLEX_FULL)
  ifmr->ifm_active |= IFM_FDX;
 else
  ifmr->ifm_active |= IFM_HDX;

 switch (sc->prv.phy.speed) {
 case 129:
  ifmr->ifm_active |= IFM_10G_KR;
  break;
 case 128:
  ifmr->ifm_active |= IFM_2500_KX;
  break;
 case 130:
  ifmr->ifm_active |= IFM_1000_KX;
  break;
 }
}
