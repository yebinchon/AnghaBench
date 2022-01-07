
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifnet {int if_flags; int if_drv_flags; } ;
typedef int caddr_t ;


 int ENOTTY ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;


__attribute__((used)) static int
pflogioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 switch (cmd) {
 case 128:
  if (ifp->if_flags & IFF_UP)
   ifp->if_drv_flags |= IFF_DRV_RUNNING;
  else
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  break;
 default:
  return (ENOTTY);
 }

 return (0);
}
