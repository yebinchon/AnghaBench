
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_mtu; } ;
struct ifnet {struct axgbe_softc* if_softc; } ;
struct axgbe_softc {int media; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ETHERMIN ;
 int ETHERMTU_JUMBO ;




 int ether_ioctl (struct ifnet*,unsigned long,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,unsigned long) ;
 int xgbe_change_mtu (struct ifnet*,int ) ;

__attribute__((used)) static int
axgbe_ioctl(struct ifnet *ifp, unsigned long command, caddr_t data)
{
 struct axgbe_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *)data;
 int error;

 switch(command) {
 case 128:
  if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > ETHERMTU_JUMBO)
   error = EINVAL;
  else
   error = xgbe_change_mtu(ifp, ifr->ifr_mtu);
  break;
 case 130:
  error = 0;
  break;
 case 129:
 case 131:
  error = ifmedia_ioctl(ifp, ifr, &sc->media, command);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
