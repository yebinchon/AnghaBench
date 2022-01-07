
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vge_softc {int vge_flags; int vge_if_flags; int vge_miibus; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; int if_hwassist; int if_mtu; struct vge_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int CSR_WRITE_1 (struct vge_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct vge_softc*,int ,int) ;
 int EINVAL ;
 int ETHERMIN ;
 int ETHERMTU ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_MCAST ;
 int IFCAP_WOL_UCAST ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;







 int VGE_CR3_INT_GMSK ;
 int VGE_CRS3 ;
 int VGE_CSUM_FEATURES ;
 int VGE_FLAG_JUMBO ;
 int VGE_IMR ;
 int VGE_INTRS ;
 int VGE_INTRS_POLLING ;
 int VGE_ISR ;
 int VGE_JUMBO_MTU ;
 int VGE_LOCK (struct vge_softc*) ;
 int VGE_UNLOCK (struct vge_softc*) ;
 int VLAN_CAPABILITIES (struct ifnet*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int vge_init_locked (struct vge_softc*) ;
 int vge_poll ;
 int vge_rxfilter (struct vge_softc*) ;
 int vge_setvlan (struct vge_softc*) ;
 int vge_stop (struct vge_softc*) ;

__attribute__((used)) static int
vge_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct vge_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 struct mii_data *mii;
 int error = 0, mask;

 switch (command) {
 case 128:
  VGE_LOCK(sc);
  if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > VGE_JUMBO_MTU)
   error = EINVAL;
  else if (ifp->if_mtu != ifr->ifr_mtu) {
   if (ifr->ifr_mtu > ETHERMTU &&
       (sc->vge_flags & VGE_FLAG_JUMBO) == 0)
    error = EINVAL;
   else
    ifp->if_mtu = ifr->ifr_mtu;
  }
  VGE_UNLOCK(sc);
  break;
 case 130:
  VGE_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
       ((ifp->if_flags ^ sc->vge_if_flags) &
       (IFF_PROMISC | IFF_ALLMULTI)) != 0)
    vge_rxfilter(sc);
   else
    vge_init_locked(sc);
  } else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   vge_stop(sc);
  sc->vge_if_flags = ifp->if_flags;
  VGE_UNLOCK(sc);
  break;
 case 134:
 case 133:
  VGE_LOCK(sc);
  if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   vge_rxfilter(sc);
  VGE_UNLOCK(sc);
  break;
 case 132:
 case 129:
  mii = device_get_softc(sc->vge_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 case 131:
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  VGE_LOCK(sc);
  if ((mask & IFCAP_TXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
    ifp->if_hwassist |= VGE_CSUM_FEATURES;
   else
    ifp->if_hwassist &= ~VGE_CSUM_FEATURES;
  }
  if ((mask & IFCAP_RXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_RXCSUM) != 0)
   ifp->if_capenable ^= IFCAP_RXCSUM;
  if ((mask & IFCAP_WOL_UCAST) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL_UCAST) != 0)
   ifp->if_capenable ^= IFCAP_WOL_UCAST;
  if ((mask & IFCAP_WOL_MCAST) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL_MCAST) != 0)
   ifp->if_capenable ^= IFCAP_WOL_MCAST;
  if ((mask & IFCAP_WOL_MAGIC) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL_MAGIC) != 0)
   ifp->if_capenable ^= IFCAP_WOL_MAGIC;
  if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWCSUM) != 0)
   ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (IFCAP_VLAN_HWTAGGING & ifp->if_capabilities) != 0) {
   ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
   vge_setvlan(sc);
  }
  VGE_UNLOCK(sc);
  VLAN_CAPABILITIES(ifp);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
