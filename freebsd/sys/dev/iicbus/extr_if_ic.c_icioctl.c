
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_6__ {int sa_family; } ;
struct ifreq {TYPE_3__ ifr_addr; int ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; struct ic_softc* if_softc; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
struct ic_softc {int ic_lock; TYPE_2__* ic_ifp; int ic_dev; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_5__ {int if_mtu; } ;
struct TYPE_4__ {int sa_family; } ;



 int EAFNOSUPPORT ;
 int EINVAL ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int IIC_FASTEST ;
 int IIC_INTR ;
 int IIC_WAIT ;







 int device_get_parent (int ) ;
 int ic_alloc_buffers (struct ic_softc*,int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int) ;
 int iicbus_reset (int ,int ,int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
icioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ic_softc *sc = ifp->if_softc;
 device_t icdev = sc->ic_dev;
 device_t parent = device_get_parent(icdev);
 struct ifaddr *ifa = (struct ifaddr *)data;
 struct ifreq *ifr = (struct ifreq *)data;
 int error;

 switch (cmd) {

 case 133:
 case 130:
  if (ifa->ifa_addr->sa_family != 135)
   return (EAFNOSUPPORT);
  mtx_lock(&sc->ic_lock);
  ifp->if_flags |= IFF_UP;
  goto locked;
 case 129:
  mtx_lock(&sc->ic_lock);
 locked:
  if ((!(ifp->if_flags & IFF_UP)) &&
      (ifp->if_drv_flags & IFF_DRV_RUNNING)) {


   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   mtx_unlock(&sc->ic_lock);


   iicbus_release_bus(parent, icdev);
   break;
  }
  if (((ifp->if_flags & IFF_UP)) &&
      (!(ifp->if_drv_flags & IFF_DRV_RUNNING))) {
   mtx_unlock(&sc->ic_lock);
   if ((error = iicbus_request_bus(parent, icdev,
       IIC_WAIT | IIC_INTR)))
    return (error);
   mtx_lock(&sc->ic_lock);
   iicbus_reset(parent, IIC_FASTEST, 0, ((void*)0));
   ifp->if_drv_flags |= IFF_DRV_RUNNING;
  }
  mtx_unlock(&sc->ic_lock);
  break;

 case 128:
  ic_alloc_buffers(sc, ifr->ifr_mtu);
  break;

 case 131:
  mtx_lock(&sc->ic_lock);
  ifr->ifr_mtu = sc->ic_ifp->if_mtu;
  mtx_unlock(&sc->ic_lock);
  break;

 case 134:
 case 132:
  if (ifr == ((void*)0))
   return (EAFNOSUPPORT);
  switch (ifr->ifr_addr.sa_family) {
  case 135:
   break;
  default:
   return (EAFNOSUPPORT);
  }
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
