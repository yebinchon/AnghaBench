
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vte_softc {int vte_if_flags; int vte_miibus; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct vte_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;





 int VTE_LOCK (struct vte_softc*) ;
 int VTE_UNLOCK (struct vte_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int vte_init_locked (struct vte_softc*) ;
 int vte_rxfilter (struct vte_softc*) ;
 int vte_stop (struct vte_softc*) ;

__attribute__((used)) static int
vte_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct vte_softc *sc;
 struct ifreq *ifr;
 struct mii_data *mii;
 int error;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;
 error = 0;
 switch (cmd) {
 case 129:
  VTE_LOCK(sc);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
       ((ifp->if_flags ^ sc->vte_if_flags) &
       (IFF_PROMISC | IFF_ALLMULTI)) != 0)
    vte_rxfilter(sc);
   else
    vte_init_locked(sc);
  } else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   vte_stop(sc);
  sc->vte_if_flags = ifp->if_flags;
  VTE_UNLOCK(sc);
  break;
 case 132:
 case 131:
  VTE_LOCK(sc);
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   vte_rxfilter(sc);
  VTE_UNLOCK(sc);
  break;
 case 128:
 case 130:
  mii = device_get_softc(sc->vte_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, cmd);
  break;
 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
