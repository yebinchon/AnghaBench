
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vtbe_softc {int if_flags; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; struct vtbe_softc* if_softc; } ;
struct ifmediareq {int ifm_count; int ifm_status; int ifm_active; int ifm_current; } ;
typedef scalar_t__ caddr_t ;


 int IFCAP_VLAN_MTU ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int IFM_10G_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;







 int VTBE_LOCK (struct vtbe_softc*) ;
 int VTBE_UNLOCK (struct vtbe_softc*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int pio_enable_irq (struct vtbe_softc*,int) ;
 int vtbe_init_locked (struct vtbe_softc*) ;
 int vtbe_stop_locked (struct vtbe_softc*) ;

__attribute__((used)) static int
vtbe_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ifmediareq *ifmr;
 struct vtbe_softc *sc;
 struct ifreq *ifr;
 int mask, error;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;

 error = 0;
 switch (cmd) {
 case 129:
  VTBE_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   pio_enable_irq(sc, 1);

   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
    vtbe_init_locked(sc);
   }
  } else {
   pio_enable_irq(sc, 0);

   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    vtbe_stop_locked(sc);
   }
  }
  sc->if_flags = ifp->if_flags;
  VTBE_UNLOCK(sc);
  break;
 case 134:
 case 133:
  break;
 case 128:
 case 132:
  ifmr = (struct ifmediareq *)data;
  ifmr->ifm_count = 1;
  ifmr->ifm_status = (IFM_AVALID | IFM_ACTIVE);
  ifmr->ifm_active = (IFM_ETHER | IFM_10G_T | IFM_FDX);
  ifmr->ifm_current = ifmr->ifm_active;
  break;
 case 130:
  mask = ifp->if_capenable ^ ifr->ifr_reqcap;
  if (mask & IFCAP_VLAN_MTU) {
   ifp->if_capenable ^= IFCAP_VLAN_MTU;
  }
  break;

 case 131:
  pio_enable_irq(sc, 1);
 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
