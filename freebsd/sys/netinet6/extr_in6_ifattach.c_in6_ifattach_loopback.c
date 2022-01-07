
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct TYPE_3__ {void* ia6t_pltime; void* ia6t_vltime; } ;
struct TYPE_4__ {int sin6_len; int sin6_addr; int sin6_family; } ;
struct in6_aliasreq {TYPE_1__ ifra_lifetime; TYPE_2__ ifra_dstaddr; } ;
struct ifnet {int dummy; } ;


 int AF_INET6 ;
 int LOG_ERR ;
 void* ND6_INFINITE_LIFETIME ;
 int if_name (struct ifnet*) ;
 int in6_prepare_ifra (struct in6_aliasreq*,int *,int *) ;
 int in6_update_ifa (struct ifnet*,struct in6_aliasreq*,int *,int ) ;
 int in6addr_loopback ;
 int in6mask128 ;
 int nd6log (int ) ;

__attribute__((used)) static int
in6_ifattach_loopback(struct ifnet *ifp)
{
 struct in6_aliasreq ifra;
 int error;

 in6_prepare_ifra(&ifra, &in6addr_loopback, &in6mask128);





 ifra.ifra_dstaddr.sin6_len = sizeof(struct sockaddr_in6);
 ifra.ifra_dstaddr.sin6_family = AF_INET6;
 ifra.ifra_dstaddr.sin6_addr = in6addr_loopback;


 ifra.ifra_lifetime.ia6t_vltime = ND6_INFINITE_LIFETIME;
 ifra.ifra_lifetime.ia6t_pltime = ND6_INFINITE_LIFETIME;





 if ((error = in6_update_ifa(ifp, &ifra, ((void*)0), 0)) != 0) {
  nd6log((LOG_ERR, "in6_ifattach_loopback: failed to configure "
      "the loopback address on %s (errno=%d)\n",
      if_name(ifp), error));
  return (-1);
 }

 return 0;
}
