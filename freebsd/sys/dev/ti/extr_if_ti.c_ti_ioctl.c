
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ti_softc {int ti_if_flags; int ifmedia; } ;
struct ti_cmd_desc {int dummy; } ;
struct ifreq {int ifr_reqcap; int ifr_mtu; } ;
struct ifnet {int if_drv_flags; int if_flags; int if_capenable; int if_capabilities; int if_hwassist; int if_mtu; struct ti_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ETHERMIN ;
 int IFCAP_RXCSUM ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;







 int TI_CMD_CODE_PROMISC_DIS ;
 int TI_CMD_CODE_PROMISC_ENB ;
 int TI_CMD_SET_PROMISC_MODE ;
 int TI_CSUM_FEATURES ;
 int TI_DO_CMD (int ,int ,int ) ;
 int TI_JUMBO_MTU ;
 int TI_LOCK (struct ti_softc*) ;
 int TI_UNLOCK (struct ti_softc*) ;
 int VLAN_CAPABILITIES (struct ifnet*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int ti_init_locked (struct ti_softc*) ;
 int ti_setmulti (struct ti_softc*) ;
 int ti_stop (struct ti_softc*) ;

__attribute__((used)) static int
ti_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct ti_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 struct ti_cmd_desc cmd;
 int mask, error = 0;

 switch (command) {
 case 128:
  TI_LOCK(sc);
  if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > TI_JUMBO_MTU)
   error = EINVAL;
  else {
   ifp->if_mtu = ifr->ifr_mtu;
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    ti_init_locked(sc);
   }
  }
  TI_UNLOCK(sc);
  break;
 case 130:
  TI_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING &&
       ifp->if_flags & IFF_PROMISC &&
       !(sc->ti_if_flags & IFF_PROMISC)) {
    TI_DO_CMD(TI_CMD_SET_PROMISC_MODE,
        TI_CMD_CODE_PROMISC_ENB, 0);
   } else if (ifp->if_drv_flags & IFF_DRV_RUNNING &&
       !(ifp->if_flags & IFF_PROMISC) &&
       sc->ti_if_flags & IFF_PROMISC) {
    TI_DO_CMD(TI_CMD_SET_PROMISC_MODE,
        TI_CMD_CODE_PROMISC_DIS, 0);
   } else
    ti_init_locked(sc);
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    ti_stop(sc);
   }
  }
  sc->ti_if_flags = ifp->if_flags;
  TI_UNLOCK(sc);
  break;
 case 134:
 case 133:
  TI_LOCK(sc);
  if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   ti_setmulti(sc);
  TI_UNLOCK(sc);
  break;
 case 129:
 case 132:
  error = ifmedia_ioctl(ifp, ifr, &sc->ifmedia, command);
  break;
 case 131:
  TI_LOCK(sc);
  mask = ifr->ifr_reqcap ^ ifp->if_capenable;
  if ((mask & IFCAP_TXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
   ifp->if_capenable ^= IFCAP_TXCSUM;
   if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
    ifp->if_hwassist |= TI_CSUM_FEATURES;
                        else
    ifp->if_hwassist &= ~TI_CSUM_FEATURES;
                }
  if ((mask & IFCAP_RXCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_RXCSUM) != 0)
   ifp->if_capenable ^= IFCAP_RXCSUM;
  if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING) != 0)
                        ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
  if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
      (ifp->if_capabilities & IFCAP_VLAN_HWCSUM) != 0)
   ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;
  if ((mask & (IFCAP_TXCSUM | IFCAP_RXCSUM |
      IFCAP_VLAN_HWTAGGING)) != 0) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
    ti_init_locked(sc);
   }
  }
  TI_UNLOCK(sc);
  VLAN_CAPABILITIES(ifp);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
