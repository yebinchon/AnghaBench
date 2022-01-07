
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ifnet {struct glc_softc* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
struct glc_softc {int sc_dev; int sc_bus; } ;


 int GELIC_FULL_DUPLEX ;
 int GELIC_GET_LINK_STATUS ;
 int GELIC_LINK_UP ;
 int GELIC_SPEED_10 ;
 int GELIC_SPEED_100 ;
 int GELIC_SPEED_1000 ;
 int GELIC_VLAN_TX_ETHERNET ;
 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int lv1_net_control (int ,int ,int ,int ,int ,int ,int*,int*) ;

__attribute__((used)) static void
glc_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct glc_softc *sc = ifp->if_softc;
 uint64_t status, junk;

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;

 lv1_net_control(sc->sc_bus, sc->sc_dev, GELIC_GET_LINK_STATUS,
     GELIC_VLAN_TX_ETHERNET, 0, 0, &status, &junk);

 if (status & GELIC_LINK_UP)
  ifmr->ifm_status |= IFM_ACTIVE;

 if (status & GELIC_SPEED_10)
  ifmr->ifm_active |= IFM_10_T;
 else if (status & GELIC_SPEED_100)
  ifmr->ifm_active |= IFM_100_TX;
 else if (status & GELIC_SPEED_1000)
  ifmr->ifm_active |= IFM_1000_T;

 if (status & GELIC_FULL_DUPLEX)
  ifmr->ifm_active |= IFM_FDX;
 else
  ifmr->ifm_active |= IFM_HDX;
}
