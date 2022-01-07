
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef struct sockaddr {int sa_family; } const sockaddr ;
struct rtentry {struct ifaddr* rt_ifa; } ;
struct ifaddr {int ifa_ifp; TYPE_2__* ifa_addr; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_8__ {TYPE_1__ sin_addr; } ;
struct TYPE_7__ {int sin6_addr; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;




 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INADDR_ANY ;
 int MPASS (int ) ;
 int RTF_GATEWAY ;
 int RTF_HOST ;
 int RT_REMREF (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 struct ifaddr* ifa_ifwithaddr (struct sockaddr const*) ;
 struct ifaddr* ifa_ifwithdstaddr (struct sockaddr const*,int ) ;
 struct ifaddr* ifa_ifwithnet (struct sockaddr const*,int ,int ) ;
 struct ifaddr* ifaof_ifpforaddr (struct sockaddr const*,int ) ;
 int in_epoch (int ) ;
 int net_epoch_preempt ;
 int rt_key (struct rtentry*) ;
 struct rtentry* rtalloc1_fib (struct sockaddr const*,int ,int,int ) ;
 TYPE_4__* satosin (int ) ;
 TYPE_3__* satosin6 (int ) ;

struct ifaddr *
ifa_ifwithroute(int flags, const struct sockaddr *dst, struct sockaddr *gateway,
    u_int fibnum)
{
 struct ifaddr *ifa;
 int not_found = 0;

 MPASS(in_epoch(net_epoch_preempt));
 if ((flags & RTF_GATEWAY) == 0) {







  ifa = ((void*)0);
  if (flags & RTF_HOST)
   ifa = ifa_ifwithdstaddr(dst, fibnum);
  if (ifa == ((void*)0))
   ifa = ifa_ifwithaddr(gateway);
 } else {





  ifa = ifa_ifwithdstaddr(gateway, fibnum);
 }
 if (ifa == ((void*)0))
  ifa = ifa_ifwithnet(gateway, 0, fibnum);
 if (ifa == ((void*)0)) {
  struct rtentry *rt;

  rt = rtalloc1_fib(gateway, 0, flags, fibnum);
  if (rt == ((void*)0))
   goto out;




  switch (gateway->sa_family) {
  case 129:
   if (satosin(rt_key(rt))->sin_addr.s_addr == INADDR_ANY)
    not_found = 1;
   break;
  case 128:
   if (IN6_IS_ADDR_UNSPECIFIED(&satosin6(rt_key(rt))->sin6_addr))
    not_found = 1;
   break;
  default:
   break;
  }
  if (!not_found && rt->rt_ifa != ((void*)0)) {
   ifa = rt->rt_ifa;
  }
  RT_REMREF(rt);
  RT_UNLOCK(rt);
  if (not_found || ifa == ((void*)0))
   goto out;
 }
 if (ifa->ifa_addr->sa_family != dst->sa_family) {
  struct ifaddr *oifa = ifa;
  ifa = ifaof_ifpforaddr(dst, ifa->ifa_ifp);
  if (ifa == ((void*)0))
   ifa = oifa;
 }
 out:
 return (ifa);
}
