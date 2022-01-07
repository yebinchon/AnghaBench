
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct stge_softc {int sc_if_flags; int sc_IntEnable; int sc_miibus; int sc_detach; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_drv_flags; int if_flags; int if_capenable; int if_capabilities; int if_hwassist; int if_mtu; struct stge_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int CSR_WRITE_2 (struct stge_softc*,int ,int ) ;
 int EINVAL ;
 int ETHERMIN ;
 int IFCAP_HWCSUM ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;







 int STGE_CSUM_FEATURES ;
 int STGE_IntEnable ;
 int STGE_JUMBO_MTU ;
 int STGE_LOCK (struct stge_softc*) ;
 int STGE_UNLOCK (struct stge_softc*) ;
 int VLAN_CAPABILITIES (struct ifnet*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int stge_init_locked (struct stge_softc*) ;
 int stge_poll ;
 int stge_set_filter (struct stge_softc*) ;
 int stge_set_multi (struct stge_softc*) ;
 int stge_stop (struct stge_softc*) ;
 int stge_vlan_setup (struct stge_softc*) ;

__attribute__((used)) static int
stge_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct stge_softc *sc;
 struct ifreq *ifr;
 struct mii_data *mii;
 int error, mask;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;
 error = 0;
 switch (cmd) {
 case 128:
  if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > STGE_JUMBO_MTU)
   error = EINVAL;
  else if (ifp->if_mtu != ifr->ifr_mtu) {
   ifp->if_mtu = ifr->ifr_mtu;
   STGE_LOCK(sc);
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    stge_init_locked(sc);
   }
   STGE_UNLOCK(sc);
  }
  break;
 case 130:
  STGE_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    if (((ifp->if_flags ^ sc->sc_if_flags)
        & IFF_PROMISC) != 0)
     stge_set_filter(sc);
   } else {
    if (sc->sc_detach == 0)
     stge_init_locked(sc);
   }
  } else {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
    stge_stop(sc);
  }
  sc->sc_if_flags = ifp->if_flags;
  STGE_UNLOCK(sc);
  break;
 case 134:
 case 133:
  STGE_LOCK(sc);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   stge_set_multi(sc);
  STGE_UNLOCK(sc);
  break;
 case 129:
 case 132:
  mii = device_get_softc(sc->sc_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, cmd);
  break;
 case 131:
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  if ((mask & IFCAP_HWCSUM) != 0) {
   ifp->if_capenable ^= IFCAP_HWCSUM;
   if ((IFCAP_HWCSUM & ifp->if_capenable) != 0 &&
       (IFCAP_HWCSUM & ifp->if_capabilities) != 0)
    ifp->if_hwassist = STGE_CSUM_FEATURES;
   else
    ifp->if_hwassist = 0;
  }
  if ((mask & IFCAP_WOL) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL) != 0) {
   if ((mask & IFCAP_WOL_MAGIC) != 0)
    ifp->if_capenable ^= IFCAP_WOL_MAGIC;
  }
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0) {
   ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    STGE_LOCK(sc);
    stge_vlan_setup(sc);
    STGE_UNLOCK(sc);
   }
  }
  VLAN_CAPABILITIES(ifp);
  break;
 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
