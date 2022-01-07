
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_in {scalar_t__ sa_family; int sin_len; int sa_len; int rti_flags; int rti_addrs; int sin_addr; struct ifnet* rti_ifp; int sa_data; struct sockaddr_in** rti_info; } ;
struct sockaddr {scalar_t__ sa_family; int sin_len; int sa_len; int rti_flags; int rti_addrs; int sin_addr; struct ifnet* rti_ifp; int sa_data; struct sockaddr** rti_info; } ;
struct rt_addrinfo {scalar_t__ sa_family; int sin_len; int sa_len; int rti_flags; int rti_addrs; int sin_addr; struct ifnet* rti_ifp; int sa_data; struct rt_addrinfo** rti_info; } ;
struct ifnet {scalar_t__ if_type; int if_flags; int if_fib; } ;
typedef int rt_mask ;
typedef int rt_key ;
typedef int rt_gateway ;
typedef int info ;
typedef int in_addr_t ;


 scalar_t__ AF_INET ;
 int EINVAL ;
 int IFF_NOARP ;
 int IFF_STATICARP ;
 scalar_t__ IFT_ETHER ;
 int INET_ADDRSTRLEN ;
 int KASSERT (int,char*) ;
 int LOG_INFO ;
 int NHR_REF ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_NETMASK ;
 int RTA_NETMASK ;
 int RTF_GATEWAY ;
 int RTF_HOST ;
 int bzero (struct sockaddr_in*,int) ;
 int inet_ntoa_r (int ,char*) ;
 int log (int ,char*,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int rib_free_info (struct sockaddr_in*) ;
 scalar_t__ rib_lookup_info (int ,struct sockaddr_in const*,int ,int ,struct sockaddr_in*) ;

__attribute__((used)) static int
in_lltable_rtcheck(struct ifnet *ifp, u_int flags, const struct sockaddr *l3addr)
{
 struct rt_addrinfo info;
 struct sockaddr_in rt_key, rt_mask;
 struct sockaddr rt_gateway;
 int rt_flags;

 KASSERT(l3addr->sa_family == AF_INET,
     ("sin_family %d", l3addr->sa_family));

 bzero(&rt_key, sizeof(rt_key));
 rt_key.sin_len = sizeof(rt_key);
 bzero(&rt_mask, sizeof(rt_mask));
 rt_mask.sin_len = sizeof(rt_mask);
 bzero(&rt_gateway, sizeof(rt_gateway));
 rt_gateway.sa_len = sizeof(rt_gateway);

 bzero(&info, sizeof(info));
 info.rti_info[RTAX_DST] = (struct sockaddr *)&rt_key;
 info.rti_info[RTAX_NETMASK] = (struct sockaddr *)&rt_mask;
 info.rti_info[RTAX_GATEWAY] = (struct sockaddr *)&rt_gateway;

 if (rib_lookup_info(ifp->if_fib, l3addr, NHR_REF, 0, &info) != 0)
  return (EINVAL);

 rt_flags = info.rti_flags;







 if (rt_flags & RTF_GATEWAY) {
  if (!(rt_flags & RTF_HOST) || !info.rti_ifp ||
      info.rti_ifp->if_type != IFT_ETHER ||
      (info.rti_ifp->if_flags & (IFF_NOARP | IFF_STATICARP)) != 0 ||
      memcmp(rt_gateway.sa_data, l3addr->sa_data,
      sizeof(in_addr_t)) != 0) {
   rib_free_info(&info);
   return (EINVAL);
  }
 }
 rib_free_info(&info);
 if (!(rt_flags & RTF_HOST) && info.rti_ifp != ifp) {
  const char *sa, *mask, *addr, *lim;
  const struct sockaddr_in *l3sin;

  mask = (const char *)&rt_mask;




  if ((info.rti_addrs & RTA_NETMASK) == 0)
   return (EINVAL);

  sa = (const char *)&rt_key;
  addr = (const char *)l3addr;
  l3sin = (const struct sockaddr_in *)l3addr;
  lim = addr + l3sin->sin_len;

  for ( ; addr < lim; sa++, mask++, addr++) {
   if ((*sa ^ *addr) & *mask) {







    return (EINVAL);
   }
  }
 }

 return (0);
}
