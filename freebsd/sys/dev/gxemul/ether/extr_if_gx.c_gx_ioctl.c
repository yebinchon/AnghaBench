
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct ifreq {scalar_t__ ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; scalar_t__ if_hdrlen; struct gx_softc* if_softc; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
struct gx_softc {int sc_flags; int sc_ifmedia; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int sa_family; } ;


 int AF_INET ;
 int ENOTSUP ;
 scalar_t__ GXEMUL_ETHER_DEV_MTU ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;





 int arp_ifinit (struct ifnet*,struct ifaddr*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int gx_init (struct gx_softc*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
gx_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct gx_softc *sc;
 struct ifreq *ifr;



 int error;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;




 switch (cmd) {
 case 131:
  error = ether_ioctl(ifp, cmd, data);
  if (error != 0)
   return (error);
  return (0);

 case 130:
  if (ifp->if_flags == sc->sc_flags)
   return (0);
  if ((ifp->if_flags & IFF_UP) != 0) {
   gx_init(sc);
  } else {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   }
  }
  sc->sc_flags = ifp->if_flags;
  return (0);

 case 128:
  if (ifr->ifr_mtu + ifp->if_hdrlen > GXEMUL_ETHER_DEV_MTU)
   return (ENOTSUP);
  return (0);

 case 129:
 case 132:
  error = ifmedia_ioctl(ifp, ifr, &sc->sc_ifmedia, cmd);
  if (error != 0)
   return (error);
  return (0);

 default:
  error = ether_ioctl(ifp, cmd, data);
  if (error != 0)
   return (error);
  return (0);
 }
}
