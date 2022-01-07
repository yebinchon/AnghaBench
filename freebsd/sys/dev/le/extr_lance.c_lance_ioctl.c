
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct lance_softc {int sc_flags; int sc_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct lance_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int IFF_ALLMULTI ;
 int IFF_DEBUG ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int LE_ALLMULTI ;
 int LE_DEBUG ;
 int LE_LOCK (struct lance_softc*) ;
 int LE_PROMISC ;
 int LE_UNLOCK (struct lance_softc*) ;





 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int lance_init_locked (struct lance_softc*) ;
 int lance_stop (struct lance_softc*) ;

__attribute__((used)) static int
lance_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct lance_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int error = 0;

 switch (cmd) {
 case 129:
  LE_LOCK(sc);
  if (ifp->if_flags & IFF_PROMISC) {
   if (!(sc->sc_flags & LE_PROMISC)) {
    sc->sc_flags |= LE_PROMISC;
    lance_init_locked(sc);
   }
  } else if (sc->sc_flags & LE_PROMISC) {
   sc->sc_flags &= ~LE_PROMISC;
   lance_init_locked(sc);
  }

  if ((ifp->if_flags & IFF_ALLMULTI) &&
      !(sc->sc_flags & LE_ALLMULTI)) {
   sc->sc_flags |= LE_ALLMULTI;
   lance_init_locked(sc);
  } else if (!(ifp->if_flags & IFF_ALLMULTI) &&
      (sc->sc_flags & LE_ALLMULTI)) {
   sc->sc_flags &= ~LE_ALLMULTI;
   lance_init_locked(sc);
  }

  if (!(ifp->if_flags & IFF_UP) &&
      ifp->if_drv_flags & IFF_DRV_RUNNING) {




   lance_stop(sc);
  } else if (ifp->if_flags & IFF_UP &&
      !(ifp->if_drv_flags & IFF_DRV_RUNNING)) {




   lance_init_locked(sc);
  }






  LE_UNLOCK(sc);
  break;

 case 132:
 case 131:




  LE_LOCK(sc);
  if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   lance_init_locked(sc);
  LE_UNLOCK(sc);
  break;

 case 130:
 case 128:
  error = ifmedia_ioctl(ifp, ifr, &sc->sc_media, cmd);
  break;

 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
