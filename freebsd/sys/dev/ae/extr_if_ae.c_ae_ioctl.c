
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_drv_flags; int if_flags; int if_capenable; int if_capabilities; int if_mtu; struct ae_softc* if_softc; } ;
struct ae_softc {int if_flags; int flags; int miibus; } ;
typedef scalar_t__ caddr_t ;


 int AE_FLAG_DETACH ;
 int AE_LOCK (struct ae_softc*) ;
 int AE_UNLOCK (struct ae_softc*) ;
 int EINVAL ;
 int ETHERMIN ;
 int ETHERMTU ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;







 int VLAN_CAPABILITIES (struct ifnet*) ;
 int ae_init_locked (struct ae_softc*) ;
 int ae_rxfilter (struct ae_softc*) ;
 int ae_rxvlan (struct ae_softc*) ;
 int ae_stop (struct ae_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
ae_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ae_softc *sc;
 struct ifreq *ifr;
 struct mii_data *mii;
 int error, mask;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;
 error = 0;

 switch (cmd) {
 case 128:
  if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > ETHERMTU)
   error = EINVAL;
  else if (ifp->if_mtu != ifr->ifr_mtu) {
   AE_LOCK(sc);
   ifp->if_mtu = ifr->ifr_mtu;
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    ae_init_locked(sc);
   }
   AE_UNLOCK(sc);
  }
  break;
 case 130:
  AE_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    if (((ifp->if_flags ^ sc->if_flags)
        & (IFF_PROMISC | IFF_ALLMULTI)) != 0)
     ae_rxfilter(sc);
   } else {
    if ((sc->flags & AE_FLAG_DETACH) == 0)
     ae_init_locked(sc);
   }
  } else {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
    ae_stop(sc);
  }
  sc->if_flags = ifp->if_flags;
  AE_UNLOCK(sc);
  break;
 case 134:
 case 133:
  AE_LOCK(sc);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   ae_rxfilter(sc);
  AE_UNLOCK(sc);
  break;
 case 129:
 case 132:
  mii = device_get_softc(sc->miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, cmd);
  break;
 case 131:
  AE_LOCK(sc);
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING) != 0) {
   ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
   ae_rxvlan(sc);
  }
  VLAN_CAPABILITIES(ifp);
  AE_UNLOCK(sc);
  break;
 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }
 return (error);
}
