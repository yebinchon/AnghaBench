
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u32 ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; scalar_t__ ifr_mtu; } ;
struct ifnet {int if_drv_flags; int if_flags; int if_capenable; int if_capabilities; int if_hwassist; scalar_t__ if_mtu; struct bce_softc* if_softc; } ;
struct bce_softc {int bce_flags; int bce_phy_flags; int bce_miibus; int bce_ifmedia; } ;
typedef scalar_t__ caddr_t ;


 int BCE_DRV_MSG_CODE_RESET ;
 int BCE_IF_HWASSIST ;
 int BCE_INFO_MISC ;
 int BCE_LOCK (struct bce_softc*) ;
 scalar_t__ BCE_MAX_JUMBO_MTU ;
 int BCE_MFW_ENABLE_FLAG ;
 scalar_t__ BCE_MIN_MTU ;
 int BCE_PHY_REMOTE_CAP_FLAG ;
 int BCE_UNLOCK (struct bce_softc*) ;
 int BCE_VERBOSE_MISC ;
 int BCE_VERBOSE_SPECIAL ;
 int CSUM_TSO ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int DBPRINT (struct bce_softc*,int ,char*,...) ;
 int EINVAL ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;







 int VLAN_CAPABILITIES (struct ifnet*) ;
 int bce_chipinit (struct bce_softc*) ;
 int bce_init_locked (struct bce_softc*) ;
 int bce_mgmt_init_locked (struct bce_softc*) ;
 int bce_reset (struct bce_softc*,int ) ;
 int bce_set_rx_mode (struct bce_softc*) ;
 int bce_stop (struct bce_softc*) ;
 int bce_tso_enable ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
bce_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct bce_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 struct mii_data *mii;
 int mask, error = 0;

 DBENTER(BCE_VERBOSE_MISC);

 switch(command) {


 case 128:

  if ((ifr->ifr_mtu < BCE_MIN_MTU) ||
   (ifr->ifr_mtu > BCE_MAX_JUMBO_MTU)) {
   error = EINVAL;
   break;
  }

  DBPRINT(sc, BCE_INFO_MISC,
      "SIOCSIFMTU: Changing MTU from %d to %d\n",
      (int) ifp->if_mtu, (int) ifr->ifr_mtu);

  BCE_LOCK(sc);
  ifp->if_mtu = ifr->ifr_mtu;
  if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   bce_init_locked(sc);
  }
  BCE_UNLOCK(sc);
  break;


 case 130:
  DBPRINT(sc, BCE_VERBOSE_SPECIAL, "Received SIOCSIFFLAGS\n");

  BCE_LOCK(sc);


  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {

    bce_set_rx_mode(sc);
   } else {

    bce_init_locked(sc);
   }
  } else {

   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    bce_stop(sc);


    if (sc->bce_flags & BCE_MFW_ENABLE_FLAG) {
     bce_reset(sc, BCE_DRV_MSG_CODE_RESET);
     bce_chipinit(sc);
     bce_mgmt_init_locked(sc);
    }
   }
  }

  BCE_UNLOCK(sc);
  break;


 case 134:
 case 133:
  DBPRINT(sc, BCE_VERBOSE_MISC,
      "Received SIOCADDMULTI/SIOCDELMULTI\n");

  BCE_LOCK(sc);
  if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   bce_set_rx_mode(sc);
  BCE_UNLOCK(sc);

  break;


 case 129:
 case 132:
  DBPRINT(sc, BCE_VERBOSE_MISC,
      "Received SIOCSIFMEDIA/SIOCGIFMEDIA\n");
  if ((sc->bce_phy_flags & BCE_PHY_REMOTE_CAP_FLAG) != 0)
   error = ifmedia_ioctl(ifp, ifr, &sc->bce_ifmedia,
       command);
  else {
   mii = device_get_softc(sc->bce_miibus);
   error = ifmedia_ioctl(ifp, ifr, &mii->mii_media,
       command);
  }
  break;


 case 131:
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  DBPRINT(sc, BCE_INFO_MISC,
      "Received SIOCSIFCAP = 0x%08X\n", (u32) mask);


  if (mask & IFCAP_TXCSUM &&
      ifp->if_capabilities & IFCAP_TXCSUM) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   if (IFCAP_TXCSUM & ifp->if_capenable)
    ifp->if_hwassist |= BCE_IF_HWASSIST;
   else
    ifp->if_hwassist &= ~BCE_IF_HWASSIST;
  }


  if (mask & IFCAP_RXCSUM &&
      ifp->if_capabilities & IFCAP_RXCSUM)
   ifp->if_capenable ^= IFCAP_RXCSUM;


  if (bce_tso_enable && (mask & IFCAP_TSO4) &&
      ifp->if_capabilities & IFCAP_TSO4) {
   ifp->if_capenable ^= IFCAP_TSO4;
   if (IFCAP_TSO4 & ifp->if_capenable)
    ifp->if_hwassist |= CSUM_TSO;
   else
    ifp->if_hwassist &= ~CSUM_TSO;
  }

  if (mask & IFCAP_VLAN_HWCSUM &&
      ifp->if_capabilities & IFCAP_VLAN_HWCSUM)
   ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;

  if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTSO) != 0)
   ifp->if_capenable ^= IFCAP_VLAN_HWTSO;







  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING)) {
   ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
   if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING)
       == 0)
    ifp->if_capenable &= ~IFCAP_VLAN_HWTSO;
  }
  VLAN_CAPABILITIES(ifp);
  break;
 default:

  error = ether_ioctl(ifp, command, data);
  break;
 }

 DBEXIT(BCE_VERBOSE_MISC);
 return(error);
}
