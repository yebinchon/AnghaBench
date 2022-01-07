
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct llan_softc {int media; int io_lock; TYPE_1__* ifp; } ;
struct ifreq {int dummy; } ;
struct ifnet {struct llan_softc* if_softc; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;





 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int llan_set_multicast (struct llan_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
llan_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 int err = 0;
 struct llan_softc *sc = ifp->if_softc;

 switch (cmd) {
 case 132:
 case 131:
  mtx_lock(&sc->io_lock);
  if ((sc->ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
   llan_set_multicast(sc);
  mtx_unlock(&sc->io_lock);
  break;
 case 130:
 case 128:
  err = ifmedia_ioctl(ifp, (struct ifreq *)data, &sc->media, cmd);
  break;
 case 129:
 default:
  err = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (err);
}
