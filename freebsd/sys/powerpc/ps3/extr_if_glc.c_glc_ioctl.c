
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct glc_softc* if_softc; } ;
struct glc_softc {int sc_ifpflags; int sc_media; int sc_mtx; } ;
typedef scalar_t__ caddr_t ;


 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;





 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int glc_init_locked (struct glc_softc*) ;
 int glc_set_multicast (struct glc_softc*) ;
 int glc_stop (struct glc_softc*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
glc_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct glc_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int err = 0;

 switch (cmd) {
 case 129:
                mtx_lock(&sc->sc_mtx);
  if ((ifp->if_flags & IFF_UP) != 0) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
      ((ifp->if_flags ^ sc->sc_ifpflags) &
       (IFF_ALLMULTI | IFF_PROMISC)) != 0)
    glc_set_multicast(sc);
   else
    glc_init_locked(sc);
  }
  else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   glc_stop(sc);
  sc->sc_ifpflags = ifp->if_flags;
  mtx_unlock(&sc->sc_mtx);
  break;
 case 132:
 case 131:
                mtx_lock(&sc->sc_mtx);
  glc_set_multicast(sc);
                mtx_unlock(&sc->sc_mtx);
  break;
 case 130:
 case 128:
  err = ifmedia_ioctl(ifp, ifr, &sc->sc_media, cmd);
  break;
 default:
  err = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (err);
}
