
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifreq {int ifr_mtu; } ;
struct ifnet {int if_mtu; struct epair_softc* if_softc; } ;
struct epair_softc {int media; } ;
typedef scalar_t__ caddr_t ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
epair_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct epair_softc *sc;
 struct ifreq *ifr;
 int error;

 ifr = (struct ifreq *)data;
 switch (cmd) {
 case 130:
 case 133:
 case 132:
  error = 0;
  break;

 case 129:
 case 131:
  sc = ifp->if_softc;
  error = ifmedia_ioctl(ifp, ifr, &sc->media, cmd);
  break;

 case 128:

  ifp->if_mtu = ifr->ifr_mtu;
  error = 0;
  break;

 default:

  error = ether_ioctl(ifp, cmd, data);
  break;
 }

 return (error);
}
