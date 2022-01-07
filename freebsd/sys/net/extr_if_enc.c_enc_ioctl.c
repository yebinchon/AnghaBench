
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct ifnet {int if_flags; int if_drv_flags; } ;
typedef int caddr_t ;


 int EINVAL ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 scalar_t__ SIOCSIFFLAGS ;

__attribute__((used)) static int
enc_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{

 if (cmd != SIOCSIFFLAGS)
  return (EINVAL);
 if (ifp->if_flags & IFF_UP)
  ifp->if_drv_flags |= IFF_DRV_RUNNING;
 else
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 return (0);
}
