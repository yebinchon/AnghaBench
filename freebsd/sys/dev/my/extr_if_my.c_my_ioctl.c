
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct my_softc {int ifmedia; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct my_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;


 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int MY_LOCK (struct my_softc*) ;
 int MY_UNLOCK (struct my_softc*) ;





 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int my_init_locked (struct my_softc*) ;
 int my_setmulti (struct my_softc*) ;
 int my_stop (struct my_softc*) ;

__attribute__((used)) static int
my_ioctl(struct ifnet * ifp, u_long command, caddr_t data)
{
 struct my_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;
 int error;

 switch (command) {
 case 129:
  MY_LOCK(sc);
  if (ifp->if_flags & IFF_UP)
   my_init_locked(sc);
  else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
   my_stop(sc);
  MY_UNLOCK(sc);
  error = 0;
  break;
 case 132:
 case 131:
  MY_LOCK(sc);
  my_setmulti(sc);
  MY_UNLOCK(sc);
  error = 0;
  break;
 case 130:
 case 128:
  error = ifmedia_ioctl(ifp, ifr, &sc->ifmedia, command);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }
 return (error);
}
