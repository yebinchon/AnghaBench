
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ifnet {void* if_baudrate; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
struct bce_softc {int bce_phy_flags; struct ifnet* bce_ifp; } ;


 int BCE_LINK_STATUS ;
 int BCE_LINK_STATUS_LINK_UP ;
 int BCE_LINK_STATUS_RX_FC_ENABLED ;
 int BCE_LINK_STATUS_SPEED_MASK ;
 int BCE_LINK_STATUS_TX_FC_ENABLED ;
 int BCE_LOCK_ASSERT (struct bce_softc*) ;
 int BCE_PHY_REMOTE_PORT_FIBER_FLAG ;
 int IFM_1000_SX ;
 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_2500_SX ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_NONE ;
 void* IF_Mbps (unsigned long) ;
 int bce_shmem_rd (struct bce_softc*,int ) ;

__attribute__((used)) static void
bce_ifmedia_sts_rphy(struct bce_softc *sc, struct ifmediareq *ifmr)
{
 struct ifnet *ifp;
 u32 link;

 ifp = sc->bce_ifp;
 BCE_LOCK_ASSERT(sc);

 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;
 link = bce_shmem_rd(sc, BCE_LINK_STATUS);

 if ((link & BCE_LINK_STATUS_LINK_UP) != 0)
  ifmr->ifm_status |= IFM_ACTIVE;
 else {
  ifmr->ifm_active |= IFM_NONE;
  ifp->if_baudrate = 0;
  return;
 }
 switch (link & BCE_LINK_STATUS_SPEED_MASK) {
 case 130:
  ifmr->ifm_active |= IFM_10_T | IFM_HDX;
  ifp->if_baudrate = IF_Mbps(10UL);
  break;
 case 131:
  ifmr->ifm_active |= IFM_10_T | IFM_FDX;
  ifp->if_baudrate = IF_Mbps(10UL);
  break;
 case 132:
  ifmr->ifm_active |= IFM_100_TX | IFM_HDX;
  ifp->if_baudrate = IF_Mbps(100UL);
  break;
 case 133:
  ifmr->ifm_active |= IFM_100_TX | IFM_FDX;
  ifp->if_baudrate = IF_Mbps(100UL);
  break;
 case 134:
  if ((sc->bce_phy_flags & BCE_PHY_REMOTE_PORT_FIBER_FLAG) == 0)
   ifmr->ifm_active |= IFM_1000_T | IFM_HDX;
  else
   ifmr->ifm_active |= IFM_1000_SX | IFM_HDX;
  ifp->if_baudrate = IF_Mbps(1000UL);
  break;
 case 135:
  if ((sc->bce_phy_flags & BCE_PHY_REMOTE_PORT_FIBER_FLAG) == 0)
   ifmr->ifm_active |= IFM_1000_T | IFM_FDX;
  else
   ifmr->ifm_active |= IFM_1000_SX | IFM_FDX;
  ifp->if_baudrate = IF_Mbps(1000UL);
  break;
 case 128:
  if ((sc->bce_phy_flags & BCE_PHY_REMOTE_PORT_FIBER_FLAG) == 0) {
   ifmr->ifm_active |= IFM_NONE;
   return;
  } else
   ifmr->ifm_active |= IFM_2500_SX | IFM_HDX;
  ifp->if_baudrate = IF_Mbps(2500UL);
  break;
 case 129:
  if ((sc->bce_phy_flags & BCE_PHY_REMOTE_PORT_FIBER_FLAG) == 0) {
   ifmr->ifm_active |= IFM_NONE;
   return;
  } else
   ifmr->ifm_active |= IFM_2500_SX | IFM_FDX;
  ifp->if_baudrate = IF_Mbps(2500UL);
  break;
 default:
  ifmr->ifm_active |= IFM_NONE;
  return;
 }

 if ((link & BCE_LINK_STATUS_RX_FC_ENABLED) != 0)
  ifmr->ifm_active |= IFM_ETH_RXPAUSE;
 if ((link & BCE_LINK_STATUS_TX_FC_ENABLED) != 0)
  ifmr->ifm_active |= IFM_ETH_TXPAUSE;
}
