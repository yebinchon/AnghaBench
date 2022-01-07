
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_drv_flags; int if_flags; int if_capenable; int if_capabilities; int if_hwassist; int if_mtu; struct age_softc* if_softc; } ;
struct age_softc {int age_if_flags; int age_flags; int age_miibus; } ;
typedef scalar_t__ caddr_t ;


 int AGE_CSUM_FEATURES ;
 int AGE_FLAG_DETACH ;
 int AGE_JUMBO_MTU ;
 int AGE_LOCK (struct age_softc*) ;
 int AGE_MAC_CFG ;
 int AGE_UNLOCK (struct age_softc*) ;
 int CSR_READ_4 (struct age_softc*,int ) ;
 int CSR_WRITE_4 (struct age_softc*,int ,int ) ;
 int CSUM_TSO ;
 int EINVAL ;
 int ETHERMIN ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_MCAST ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int MAC_CFG_RXCSUM_ENB ;







 int VLAN_CAPABILITIES (struct ifnet*) ;
 int age_init_locked (struct age_softc*) ;
 int age_rxfilter (struct age_softc*) ;
 int age_rxvlan (struct age_softc*) ;
 int age_stop (struct age_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
age_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct age_softc *sc;
 struct ifreq *ifr;
 struct mii_data *mii;
 uint32_t reg;
 int error, mask;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;
 error = 0;
 switch (cmd) {
 case 128:
  if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > AGE_JUMBO_MTU)
   error = EINVAL;
  else if (ifp->if_mtu != ifr->ifr_mtu) {
   AGE_LOCK(sc);
   ifp->if_mtu = ifr->ifr_mtu;
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    age_init_locked(sc);
   }
   AGE_UNLOCK(sc);
  }
  break;
 case 130:
  AGE_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    if (((ifp->if_flags ^ sc->age_if_flags)
        & (IFF_PROMISC | IFF_ALLMULTI)) != 0)
     age_rxfilter(sc);
   } else {
    if ((sc->age_flags & AGE_FLAG_DETACH) == 0)
     age_init_locked(sc);
   }
  } else {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
    age_stop(sc);
  }
  sc->age_if_flags = ifp->if_flags;
  AGE_UNLOCK(sc);
  break;
 case 134:
 case 133:
  AGE_LOCK(sc);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   age_rxfilter(sc);
  AGE_UNLOCK(sc);
  break;
 case 129:
 case 132:
  mii = device_get_softc(sc->age_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, cmd);
  break;
 case 131:
  AGE_LOCK(sc);
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  if ((mask & IFCAP_TXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
    ifp->if_hwassist |= AGE_CSUM_FEATURES;
   else
    ifp->if_hwassist &= ~AGE_CSUM_FEATURES;
  }
  if ((mask & IFCAP_RXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_RXCSUM) != 0) {
   ifp->if_capenable ^= IFCAP_RXCSUM;
   reg = CSR_READ_4(sc, AGE_MAC_CFG);
   reg &= ~MAC_CFG_RXCSUM_ENB;
   if ((ifp->if_capenable & IFCAP_RXCSUM) != 0)
    reg |= MAC_CFG_RXCSUM_ENB;
   CSR_WRITE_4(sc, AGE_MAC_CFG, reg);
  }
  if ((mask & IFCAP_TSO4) != 0 &&
      (ifp->if_capabilities & IFCAP_TSO4) != 0) {
   ifp->if_capenable ^= IFCAP_TSO4;
   if ((ifp->if_capenable & IFCAP_TSO4) != 0)
    ifp->if_hwassist |= CSUM_TSO;
   else
    ifp->if_hwassist &= ~CSUM_TSO;
  }

  if ((mask & IFCAP_WOL_MCAST) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL_MCAST) != 0)
   ifp->if_capenable ^= IFCAP_WOL_MCAST;
  if ((mask & IFCAP_WOL_MAGIC) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL_MAGIC) != 0)
   ifp->if_capenable ^= IFCAP_WOL_MAGIC;
  if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWCSUM) != 0)
   ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;
  if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTSO) != 0)
   ifp->if_capenable ^= IFCAP_VLAN_HWTSO;
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING) != 0) {
   ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
   if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) == 0)
    ifp->if_capenable &= ~IFCAP_VLAN_HWTSO;
   age_rxvlan(sc);
  }
  AGE_UNLOCK(sc);
  VLAN_CAPABILITIES(ifp);
  break;
 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
