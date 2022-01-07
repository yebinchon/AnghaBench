
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct scope6_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ ifru_scope_id; } ;
struct in6_ifreq {TYPE_1__ ifr_ifru; } ;
struct ifnet {int ** if_afdata; } ;
typedef scalar_t__ caddr_t ;


 size_t AF_INET6 ;
 int EOPNOTSUPP ;
 int EPFNOSUPPORT ;



 int scope6_get (struct ifnet*,struct scope6_id*) ;
 int scope6_get_default (struct scope6_id*) ;
 int scope6_set (struct ifnet*,struct scope6_id*) ;

int
scope6_ioctl(u_long cmd, caddr_t data, struct ifnet *ifp)
{
 struct in6_ifreq *ifr;

 if (ifp->if_afdata[AF_INET6] == ((void*)0))
  return (EPFNOSUPPORT);

 ifr = (struct in6_ifreq *)data;
 switch (cmd) {
 case 128:
  return (scope6_set(ifp,
      (struct scope6_id *)ifr->ifr_ifru.ifru_scope_id));
 case 130:
  return (scope6_get(ifp,
      (struct scope6_id *)ifr->ifr_ifru.ifru_scope_id));
 case 129:
  return (scope6_get_default(
      (struct scope6_id *)ifr->ifr_ifru.ifru_scope_id));
 default:
  return (EOPNOTSUPP);
 }
}
