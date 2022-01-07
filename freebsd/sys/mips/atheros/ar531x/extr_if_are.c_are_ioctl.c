
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct are_softc* if_softc; } ;
struct are_softc {int are_if_flags; int are_ifmedia; int are_miibus; int are_detach; } ;
typedef scalar_t__ caddr_t ;


 int ARE_LOCK (struct are_softc*) ;
 int ARE_UNLOCK (struct are_softc*) ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int are_init_locked (struct are_softc*) ;
 int are_set_filter (struct are_softc*) ;
 int are_stop (struct are_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
are_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct are_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;



 int error;

 switch (command) {
 case 129:
  ARE_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    if ((ifp->if_flags ^ sc->are_if_flags) &
        (IFF_PROMISC | IFF_ALLMULTI))
     are_set_filter(sc);
   } else {
    if (sc->are_detach == 0)
     are_init_locked(sc);
   }
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    are_stop(sc);
  }
  sc->are_if_flags = ifp->if_flags;
  ARE_UNLOCK(sc);
  error = 0;
  break;
 case 133:
 case 132:
  ARE_LOCK(sc);
  are_set_filter(sc);
  ARE_UNLOCK(sc);
  error = 0;
  break;
 case 131:
 case 128:




  error = ifmedia_ioctl(ifp, ifr, &sc->are_ifmedia, command);

  break;
 case 130:
  error = 0;
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
