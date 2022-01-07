
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct lp_data {TYPE_2__* sc_ifp; int * sc_ifbuf; int sc_dev; } ;
struct TYPE_6__ {int sa_family; } ;
struct ifreq {TYPE_3__ ifr_addr; scalar_t__ ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; struct lp_data* if_softc; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_5__ {scalar_t__ if_mtu; } ;
struct TYPE_4__ {int sa_family; } ;



 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENOBUFS ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 scalar_t__ MLPIPHDRLEN ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int device_get_parent (int ) ;
 int free (int *,int ) ;
 int lpinit_locked (struct ifnet*) ;
 int lprintf (char*,int) ;
 int lpstop (struct lp_data*) ;
 int * malloc (scalar_t__,int ,int ) ;
 int ppb_lock (int ) ;
 int ppb_unlock (int ) ;

__attribute__((used)) static int
lpioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct lp_data *sc = ifp->if_softc;
 device_t dev = sc->sc_dev;
 device_t ppbus = device_get_parent(dev);
 struct ifaddr *ifa = (struct ifaddr *)data;
 struct ifreq *ifr = (struct ifreq *)data;
 u_char *ptr;
 int error;

 switch (cmd) {
 case 134:
 case 130:
  if (ifa->ifa_addr->sa_family != 136)
   return (EAFNOSUPPORT);

  ifp->if_flags |= IFF_UP;

 case 129:
  error = 0;
  ppb_lock(ppbus);
  if ((!(ifp->if_flags & IFF_UP)) &&
      (ifp->if_drv_flags & IFF_DRV_RUNNING))
   lpstop(sc);
  else if (((ifp->if_flags & IFF_UP)) &&
      (!(ifp->if_drv_flags & IFF_DRV_RUNNING)))
   error = lpinit_locked(ifp);
  ppb_unlock(ppbus);
  return (error);

 case 128:
  ppb_lock(ppbus);
  if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
   ptr = malloc(ifr->ifr_mtu + MLPIPHDRLEN, M_DEVBUF,
       M_NOWAIT);
   if (ptr == ((void*)0)) {
    ppb_unlock(ppbus);
    return (ENOBUFS);
   }
   if (sc->sc_ifbuf)
    free(sc->sc_ifbuf, M_DEVBUF);
   sc->sc_ifbuf = ptr;
  }
  sc->sc_ifp->if_mtu = ifr->ifr_mtu;
  ppb_unlock(ppbus);
  break;

 case 131:
  ifr->ifr_mtu = sc->sc_ifp->if_mtu;
  break;

 case 135:
 case 133:
  if (ifr == ((void*)0)) {
   return (EAFNOSUPPORT);
  }
  switch (ifr->ifr_addr.sa_family) {
  case 136:
   break;
  default:
   return (EAFNOSUPPORT);
  }
  break;

 case 132:




  return (EINVAL);

 default:
  lprintf("LP:ioctl(0x%lx)\n", cmd);
  return (EINVAL);
 }
 return (0);
}
