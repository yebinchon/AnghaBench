
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct rt_softc {int if_flags; int rt_ifmedia; int rt_miibus; } ;
struct mii_data {int mii_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct rt_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int RT_SOFTC_LOCK (struct rt_softc*) ;
 int RT_SOFTC_UNLOCK (struct rt_softc*) ;



 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int rt_init_locked (struct rt_softc*) ;
 int rt_stop_locked (struct rt_softc*) ;
 int rt_update_promisc (struct ifnet*) ;

__attribute__((used)) static int
rt_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct rt_softc *sc;
 struct ifreq *ifr;



 int error, startall;

 sc = ifp->if_softc;
 ifr = (struct ifreq *) data;

 error = 0;

 switch (cmd) {
 case 129:
  startall = 0;
  RT_SOFTC_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    if ((ifp->if_flags ^ sc->if_flags) &
        IFF_PROMISC)
     rt_update_promisc(ifp);
   } else {
    rt_init_locked(sc);
    startall = 1;
   }
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    rt_stop_locked(sc);
  }
  sc->if_flags = ifp->if_flags;
  RT_SOFTC_UNLOCK(sc);
  break;
 case 130:
 case 128:




  error = ifmedia_ioctl(ifp, ifr, &sc->rt_ifmedia, cmd);

  break;
 default:
  error = ether_ioctl(ifp, cmd, data);
  break;
 }
 return (error);
}
