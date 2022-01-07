
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct ifreq {int ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_mtu; int if_softc; } ;
typedef TYPE_1__* priv_p ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int media; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int NG_EIFACE_MTU_MAX ;
 int NG_EIFACE_MTU_MIN ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq* const,int *,int) ;
 int ng_eiface_print_ioctl (struct ifnet*,int,scalar_t__) ;

__attribute__((used)) static int
ng_eiface_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 const priv_p priv = (priv_p)ifp->if_softc;
 struct ifreq *const ifr = (struct ifreq *)data;
 int error = 0;




 switch (command) {


 case 132:
  error = ether_ioctl(ifp, command, data);
  break;
 case 134:
  break;


 case 131:




  if (ifp->if_flags & IFF_UP) {
   if (!(ifp->if_drv_flags & IFF_DRV_RUNNING)) {
    ifp->if_drv_flags &= ~(IFF_DRV_OACTIVE);
    ifp->if_drv_flags |= IFF_DRV_RUNNING;
   }
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    ifp->if_drv_flags &= ~(IFF_DRV_RUNNING |
        IFF_DRV_OACTIVE);
  }
  break;


 case 129:
  if (ifr->ifr_mtu > NG_EIFACE_MTU_MAX ||
      ifr->ifr_mtu < NG_EIFACE_MTU_MIN)
   error = EINVAL;
  else
   ifp->if_mtu = ifr->ifr_mtu;
  break;


 case 130:
 case 133:
  error = ifmedia_ioctl(ifp, ifr, &priv->media, command);
  break;


 case 136:
 case 135:
  error = 0;
  break;
 case 128:
  error = EOPNOTSUPP;
  break;

 default:
  error = EINVAL;
  break;
 }
 return (error);
}
