
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct xae_softc {int if_flags; struct mii_data* mii_softc; int is_detaching; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; struct xae_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int IFCAP_VLAN_MTU ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int XAE_LOCK (struct xae_softc*) ;
 int XAE_UNLOCK (struct xae_softc*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int xae_init_locked (struct xae_softc*) ;
 int xae_setup_rxfilter (struct xae_softc*) ;
 int xae_stop_locked (struct xae_softc*) ;

__attribute__((used)) static int
xae_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct xae_softc *sc;
 struct mii_data *mii;
 struct ifreq *ifr;
 int mask, error;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;

 error = 0;
 switch (cmd) {
 case 129:
  XAE_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    if ((ifp->if_flags ^ sc->if_flags) &
        (IFF_PROMISC | IFF_ALLMULTI))
     xae_setup_rxfilter(sc);
   } else {
    if (!sc->is_detaching)
     xae_init_locked(sc);
   }
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    xae_stop_locked(sc);
  }
  sc->if_flags = ifp->if_flags;
  XAE_UNLOCK(sc);
  break;
 case 133:
 case 132:
  if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
   XAE_LOCK(sc);
   xae_setup_rxfilter(sc);
   XAE_UNLOCK(sc);
  }
  break;
 case 128:
 case 131:
  mii = sc->mii_softc;
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, cmd);
  break;
 case 130:
  mask = ifp->if_capenable ^ ifr->ifr_reqcap;
  if (mask & IFCAP_VLAN_MTU) {

   ifp->if_capenable ^= IFCAP_VLAN_MTU;
  }
  break;

 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
