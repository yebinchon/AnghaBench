
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct nge_softc {int nge_if_flags; int nge_flags; int nge_miibus; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_mtu; int ifr_reqcap; } ;
struct ifnet {int if_mtu; int if_capenable; int if_flags; int if_drv_flags; int if_capabilities; int if_hwassist; struct nge_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int CSR_WRITE_4 (struct nge_softc*,int ,int) ;
 int EINVAL ;
 int ETHERMIN ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_MCAST ;
 int IFCAP_WOL_UCAST ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int NGE_CLRBIT (struct nge_softc*,int ,int ) ;
 int NGE_CSUM_FEATURES ;
 int NGE_FLAG_DETACH ;
 int NGE_IER ;
 int NGE_JUMBO_MTU ;
 int NGE_LOCK (struct nge_softc*) ;
 int NGE_SETBIT (struct nge_softc*,int ,int ) ;
 int NGE_UNLOCK (struct nge_softc*) ;
 int NGE_VIPRXCTL_TAG_STRIP_ENB ;
 int NGE_VLAN_IP_RXCTL ;







 int VLAN_CAPABILITIES (struct ifnet*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int nge_init_locked (struct nge_softc*) ;
 int nge_poll ;
 int nge_rxfilter (struct nge_softc*) ;
 int nge_stop (struct nge_softc*) ;

__attribute__((used)) static int
nge_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct nge_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 struct mii_data *mii;
 int error = 0, mask;

 switch (command) {
 case 128:
  if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > NGE_JUMBO_MTU)
   error = EINVAL;
  else {
   NGE_LOCK(sc);
   ifp->if_mtu = ifr->ifr_mtu;





   if (ifr->ifr_mtu >= 8152) {
    ifp->if_capenable &= ~IFCAP_TXCSUM;
    ifp->if_hwassist &= ~NGE_CSUM_FEATURES;
   } else {
    ifp->if_capenable |= IFCAP_TXCSUM;
    ifp->if_hwassist |= NGE_CSUM_FEATURES;
   }
   NGE_UNLOCK(sc);
   VLAN_CAPABILITIES(ifp);
  }
  break;
 case 130:
  NGE_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    if ((ifp->if_flags ^ sc->nge_if_flags) &
        (IFF_PROMISC | IFF_ALLMULTI))
     nge_rxfilter(sc);
   } else {
    if ((sc->nge_flags & NGE_FLAG_DETACH) == 0)
     nge_init_locked(sc);
   }
  } else {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
    nge_stop(sc);
  }
  sc->nge_if_flags = ifp->if_flags;
  NGE_UNLOCK(sc);
  error = 0;
  break;
 case 134:
 case 133:
  NGE_LOCK(sc);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   nge_rxfilter(sc);
  NGE_UNLOCK(sc);
  break;
 case 132:
 case 129:
  mii = device_get_softc(sc->nge_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 case 131:
  NGE_LOCK(sc);
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  if ((mask & IFCAP_TXCSUM) != 0 &&
      (IFCAP_TXCSUM & ifp->if_capabilities) != 0) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   if ((IFCAP_TXCSUM & ifp->if_capenable) != 0)
    ifp->if_hwassist |= NGE_CSUM_FEATURES;
   else
    ifp->if_hwassist &= ~NGE_CSUM_FEATURES;
  }
  if ((mask & IFCAP_RXCSUM) != 0 &&
      (IFCAP_RXCSUM & ifp->if_capabilities) != 0)
   ifp->if_capenable ^= IFCAP_RXCSUM;

  if ((mask & IFCAP_WOL) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL) != 0) {
   if ((mask & IFCAP_WOL_UCAST) != 0)
    ifp->if_capenable ^= IFCAP_WOL_UCAST;
   if ((mask & IFCAP_WOL_MCAST) != 0)
    ifp->if_capenable ^= IFCAP_WOL_MCAST;
   if ((mask & IFCAP_WOL_MAGIC) != 0)
    ifp->if_capenable ^= IFCAP_WOL_MAGIC;
  }

  if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWCSUM) != 0)
   ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING) != 0) {
   ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    if ((ifp->if_capenable &
        IFCAP_VLAN_HWTAGGING) != 0)
     NGE_SETBIT(sc,
         NGE_VLAN_IP_RXCTL,
         NGE_VIPRXCTL_TAG_STRIP_ENB);
    else
     NGE_CLRBIT(sc,
         NGE_VLAN_IP_RXCTL,
         NGE_VIPRXCTL_TAG_STRIP_ENB);
   }
  }




  if ((ifp->if_capenable & IFCAP_TXCSUM) == 0)
   ifp->if_capenable &= ~IFCAP_VLAN_HWCSUM;
  if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) == 0)
   ifp->if_capenable &= ~IFCAP_VLAN_HWCSUM;
  NGE_UNLOCK(sc);
  VLAN_CAPABILITIES(ifp);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
