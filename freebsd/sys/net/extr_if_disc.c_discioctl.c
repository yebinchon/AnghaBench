
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int sa_family; } ;
struct ifreq {int ifr_mtu; TYPE_1__ ifr_addr; } ;
struct ifnet {int if_mtu; int if_flags; } ;
typedef scalar_t__ caddr_t ;




 int EAFNOSUPPORT ;
 int EINVAL ;
 int IFF_UP ;





__attribute__((used)) static int
discioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ifreq *ifr = (struct ifreq *)data;
 int error = 0;

 switch (cmd) {
 case 129:
  ifp->if_flags |= IFF_UP;




  break;
 case 131:
 case 130:
  if (ifr == ((void*)0)) {
   error = EAFNOSUPPORT;
   break;
  }
  switch (ifr->ifr_addr.sa_family) {
  default:
   error = EAFNOSUPPORT;
   break;
  }
  break;
 case 128:
  ifp->if_mtu = ifr->ifr_mtu;
  break;
 default:
  error = EINVAL;
 }
 return (error);
}
