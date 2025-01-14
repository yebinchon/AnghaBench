
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct sockaddr_in6 {int sin6_addr; } ;
struct in_addr {int dummy; } ;
struct TYPE_4__ {int sa_family; } ;
struct ifreq {int ifr_mtu; TYPE_2__ ifr_addr; } ;
struct ifnet {int if_mtu; int if_drv_flags; int if_flags; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
typedef scalar_t__ caddr_t ;
typedef int addr ;
struct TYPE_3__ {int sa_family; } ;


 int AF_INET6 ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int GET_V4 (int *) ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int IF_MAXMTU ;
 int IN6_IS_ADDR_6TO4 (int *) ;
 int IPV6_MINMTU ;





 int bcopy (int ,struct in_addr*,int) ;
 int isrfc1918addr (struct in_addr*) ;

__attribute__((used)) static int
stf_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ifaddr *ifa;
 struct ifreq *ifr;
 struct sockaddr_in6 *sin6;
 struct in_addr addr;
 int error, mtu;

 error = 0;
 switch (cmd) {
 case 129:
  ifa = (struct ifaddr *)data;
  if (ifa == ((void*)0) || ifa->ifa_addr->sa_family != AF_INET6) {
   error = EAFNOSUPPORT;
   break;
  }
  sin6 = (struct sockaddr_in6 *)ifa->ifa_addr;
  if (!IN6_IS_ADDR_6TO4(&sin6->sin6_addr)) {
   error = EINVAL;
   break;
  }
  bcopy(GET_V4(&sin6->sin6_addr), &addr, sizeof(addr));
  if (isrfc1918addr(&addr)) {
   error = EINVAL;
   break;
  }

  ifp->if_flags |= IFF_UP;
  ifp->if_drv_flags |= IFF_DRV_RUNNING;
  break;

 case 132:
 case 131:
  ifr = (struct ifreq *)data;
  if (ifr && ifr->ifr_addr.sa_family == AF_INET6)
   ;
  else
   error = EAFNOSUPPORT;
  break;

 case 130:
  break;

 case 128:
  ifr = (struct ifreq *)data;
  mtu = ifr->ifr_mtu;

  if (mtu < IPV6_MINMTU || mtu > IF_MAXMTU - 20)
   return (EINVAL);
  ifp->if_mtu = mtu;
  break;

 default:
  error = EINVAL;
  break;
 }

 return error;
}
