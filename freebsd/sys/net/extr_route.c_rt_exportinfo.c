
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; } ;
struct rtentry {int rt_flags; int rt_ifa; int rt_ifp; int rt_mtu; struct sockaddr* rt_gateway; } ;
struct rt_metrics {int rmx_mtu; } ;
struct rt_addrinfo {int rti_flags; int rti_ifp; int rti_ifa; int rti_mflags; struct rt_metrics* rti_rmx; int rti_addrs; struct sockaddr** rti_info; } ;


 int ENOMEM ;
 int NHR_COPY ;
 int NHR_REF ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_NETMASK ;
 int RTA_DST ;
 int RTA_GATEWAY ;
 int RTA_NETMASK ;
 int RTF_GATEWAY ;
 int RTV_MTU ;
 int if_ref (int ) ;
 int ifa_ref (int ) ;
 int memcpy (struct sockaddr*,struct sockaddr*,int) ;
 void* rt_key (struct rtentry*) ;
 struct sockaddr* rt_mask (struct rtentry*) ;

int
rt_exportinfo(struct rtentry *rt, struct rt_addrinfo *info, int flags)
{
 struct rt_metrics *rmx;
 struct sockaddr *src, *dst;
 int sa_len;

 if (flags & NHR_COPY) {

  src = rt_key(rt);
  dst = info->rti_info[RTAX_DST];
  sa_len = src->sa_len;
  if (dst != ((void*)0)) {
   if (src->sa_len > dst->sa_len)
    return (ENOMEM);
   memcpy(dst, src, src->sa_len);
   info->rti_addrs |= RTA_DST;
  }


  src = rt_mask(rt);
  dst = info->rti_info[RTAX_NETMASK];
  if (src != ((void*)0) && dst != ((void*)0)) {






   if (sa_len > dst->sa_len)
    return (ENOMEM);
   memcpy(dst, src, src->sa_len);
   info->rti_addrs |= RTA_NETMASK;
  }


  src = rt->rt_gateway;
  dst = info->rti_info[RTAX_GATEWAY];
  if ((rt->rt_flags & RTF_GATEWAY) && src != ((void*)0) && dst != ((void*)0)){
   if (src->sa_len > dst->sa_len)
    return (ENOMEM);
   memcpy(dst, src, src->sa_len);
   info->rti_addrs |= RTA_GATEWAY;
  }
 } else {
  info->rti_info[RTAX_DST] = rt_key(rt);
  info->rti_addrs |= RTA_DST;
  if (rt_mask(rt) != ((void*)0)) {
   info->rti_info[RTAX_NETMASK] = rt_mask(rt);
   info->rti_addrs |= RTA_NETMASK;
  }
  if (rt->rt_flags & RTF_GATEWAY) {
   info->rti_info[RTAX_GATEWAY] = rt->rt_gateway;
   info->rti_addrs |= RTA_GATEWAY;
  }
 }

 rmx = info->rti_rmx;
 if (rmx != ((void*)0)) {
  info->rti_mflags |= RTV_MTU;
  rmx->rmx_mtu = rt->rt_mtu;
 }

 info->rti_flags = rt->rt_flags;
 info->rti_ifp = rt->rt_ifp;
 info->rti_ifa = rt->rt_ifa;
 ifa_ref(info->rti_ifa);
 if (flags & NHR_REF) {

  if_ref(info->rti_ifp);
 }

 return (0);
}
