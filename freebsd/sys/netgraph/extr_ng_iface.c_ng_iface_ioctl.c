
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifreq {int ifr_flags; int ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_mtu; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int NG_IFACE_MTU_MAX ;
 int NG_IFACE_MTU_MIN ;







 int ng_iface_print_ioctl (struct ifnet*,int,scalar_t__) ;

__attribute__((used)) static int
ng_iface_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct ifreq *const ifr = (struct ifreq *) data;
 int error = 0;




 switch (command) {


 case 131:
  ifp->if_flags |= IFF_UP;
  ifp->if_drv_flags |= IFF_DRV_RUNNING;
  ifp->if_drv_flags &= ~(IFF_DRV_OACTIVE);
  break;
 case 132:
  break;


 case 130:




  if (ifr->ifr_flags & IFF_UP) {
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
  if (ifr->ifr_mtu > NG_IFACE_MTU_MAX
      || ifr->ifr_mtu < NG_IFACE_MTU_MIN)
   error = EINVAL;
  else
   ifp->if_mtu = ifr->ifr_mtu;
  break;


 case 134:
 case 133:
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
