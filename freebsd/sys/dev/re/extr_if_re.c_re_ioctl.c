
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct rl_softc {int rl_flags; int rl_if_flags; int rl_miibus; TYPE_1__* rl_hwrev; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_drv_flags; int if_capenable; int if_flags; int if_capabilities; int if_hwassist; int if_mtu; struct rl_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int rl_max_mtu; } ;


 int CSR_WRITE_2 (struct rl_softc*,int ,int) ;
 int CSUM_TSO ;
 int EINVAL ;
 int ETHERMIN ;
 int IFCAP_HWCSUM ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MAGIC ;
 int IFCAP_WOL_MCAST ;
 int IFCAP_WOL_UCAST ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int RE_CSUM_FEATURES ;
 int RL_FLAG_FASTETHER ;
 int RL_FLAG_JUMBOV2 ;
 int RL_IMR ;
 int RL_INTRS_CPLUS ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_MTU ;
 int RL_TSO_MTU ;
 int RL_UNLOCK (struct rl_softc*) ;







 int VLAN_CAPABILITIES (struct ifnet*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ether_poll_deregister (struct ifnet*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int re_init_locked (struct rl_softc*) ;
 int re_poll ;
 int re_set_rxmode (struct rl_softc*) ;
 int re_stop (struct rl_softc*) ;

__attribute__((used)) static int
re_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct rl_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 struct mii_data *mii;
 int error = 0;

 switch (command) {
 case 128:
  if (ifr->ifr_mtu < ETHERMIN ||
      ifr->ifr_mtu > sc->rl_hwrev->rl_max_mtu ||
      ((sc->rl_flags & RL_FLAG_FASTETHER) != 0 &&
      ifr->ifr_mtu > RL_MTU)) {
   error = EINVAL;
   break;
  }
  RL_LOCK(sc);
  if (ifp->if_mtu != ifr->ifr_mtu) {
   ifp->if_mtu = ifr->ifr_mtu;
   if ((sc->rl_flags & RL_FLAG_JUMBOV2) != 0 &&
       (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    re_init_locked(sc);
   }
   if (ifp->if_mtu > RL_TSO_MTU &&
       (ifp->if_capenable & IFCAP_TSO4) != 0) {
    ifp->if_capenable &= ~(IFCAP_TSO4 |
        IFCAP_VLAN_HWTSO);
    ifp->if_hwassist &= ~CSUM_TSO;
   }
   VLAN_CAPABILITIES(ifp);
  }
  RL_UNLOCK(sc);
  break;
 case 130:
  RL_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    if (((ifp->if_flags ^ sc->rl_if_flags)
        & (IFF_PROMISC | IFF_ALLMULTI)) != 0)
     re_set_rxmode(sc);
   } else
    re_init_locked(sc);
  } else {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
    re_stop(sc);
  }
  sc->rl_if_flags = ifp->if_flags;
  RL_UNLOCK(sc);
  break;
 case 134:
 case 133:
  RL_LOCK(sc);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   re_set_rxmode(sc);
  RL_UNLOCK(sc);
  break;
 case 132:
 case 129:
  mii = device_get_softc(sc->rl_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 case 131:
     {
  int mask, reinit;

  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  reinit = 0;
  RL_LOCK(sc);
  if ((mask & IFCAP_TXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
    ifp->if_hwassist |= RE_CSUM_FEATURES;
   else
    ifp->if_hwassist &= ~RE_CSUM_FEATURES;
   reinit = 1;
  }
  if ((mask & IFCAP_RXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_RXCSUM) != 0) {
   ifp->if_capenable ^= IFCAP_RXCSUM;
   reinit = 1;
  }
  if ((mask & IFCAP_TSO4) != 0 &&
      (ifp->if_capabilities & IFCAP_TSO4) != 0) {
   ifp->if_capenable ^= IFCAP_TSO4;
   if ((IFCAP_TSO4 & ifp->if_capenable) != 0)
    ifp->if_hwassist |= CSUM_TSO;
   else
    ifp->if_hwassist &= ~CSUM_TSO;
   if (ifp->if_mtu > RL_TSO_MTU &&
       (ifp->if_capenable & IFCAP_TSO4) != 0) {
    ifp->if_capenable &= ~IFCAP_TSO4;
    ifp->if_hwassist &= ~CSUM_TSO;
   }
  }
  if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTSO) != 0)
   ifp->if_capenable ^= IFCAP_VLAN_HWTSO;
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING) != 0) {
   ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;

   if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) == 0)
    ifp->if_capenable &= ~IFCAP_VLAN_HWTSO;
   reinit = 1;
  }
  if ((sc->rl_flags & RL_FLAG_JUMBOV2) != 0 &&
      (mask & (IFCAP_HWCSUM | IFCAP_TSO4 |
      IFCAP_VLAN_HWTSO)) != 0)
    reinit = 1;
  if ((mask & IFCAP_WOL) != 0 &&
      (ifp->if_capabilities & IFCAP_WOL) != 0) {
   if ((mask & IFCAP_WOL_UCAST) != 0)
    ifp->if_capenable ^= IFCAP_WOL_UCAST;
   if ((mask & IFCAP_WOL_MCAST) != 0)
    ifp->if_capenable ^= IFCAP_WOL_MCAST;
   if ((mask & IFCAP_WOL_MAGIC) != 0)
    ifp->if_capenable ^= IFCAP_WOL_MAGIC;
  }
  if (reinit && ifp->if_drv_flags & IFF_DRV_RUNNING) {
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   re_init_locked(sc);
  }
  RL_UNLOCK(sc);
  VLAN_CAPABILITIES(ifp);
     }
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
