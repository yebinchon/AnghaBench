
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct sockaddr {int sa_family; } ;
struct rtentry {int rt_flags; struct ifaddr* rt_ifa; int rt_gateway; } ;
struct rt_addrinfo {int rti_flags; struct sockaddr** rti_info; struct ifaddr* rti_ifa; } ;
struct rib_head {int dummy; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
typedef int info ;
typedef int caddr_t ;
struct TYPE_6__ {short rts_dynamic; short rts_newgateway; int rts_badredirect; } ;
struct TYPE_5__ {int sa_len; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_LINK ;
 int EAFNOSUPPORT ;
 int EHOSTUNREACH ;
 int EINVAL ;
 int ENETUNREACH ;
 int NET_EPOCH_ASSERT () ;
 int RIB_WLOCK (struct rib_head*) ;
 int RIB_WUNLOCK (struct rib_head*) ;
 size_t RTAX_AUTHOR ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_NETMASK ;
 int RTFREE_LOCKED (struct rtentry*) ;
 int RTF_DONE ;
 int RTF_DYNAMIC ;
 int RTF_GATEWAY ;
 int RTF_HOST ;
 int RTF_MODIFIED ;
 int RTM_ADD ;
 int RTM_REDIRECT ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 TYPE_3__ V_rtstat ;
 int bzero (int ,int) ;
 scalar_t__ ifa_ifwithaddr_check (struct sockaddr*) ;
 struct ifaddr* ifa_ifwithnet (struct sockaddr*,int ,int ) ;
 int ifa_ref (struct ifaddr*) ;
 int rt_key (struct rtentry*) ;
 TYPE_2__* rt_mask (struct rtentry*) ;
 int rt_missmsg_fib (int ,struct rt_addrinfo*,int,int,int ) ;
 int rt_setgate (struct rtentry*,int ,struct sockaddr*) ;
 struct rib_head* rt_tables_get_rnh (int ,int ) ;
 struct rtentry* rtalloc1_fib (struct sockaddr*,int ,unsigned long,int ) ;
 int rtrequest1_fib (int ,struct rt_addrinfo*,struct rtentry**,int ) ;
 int sa_equal (struct sockaddr*,int ) ;

void
rtredirect_fib(struct sockaddr *dst,
 struct sockaddr *gateway,
 struct sockaddr *netmask,
 int flags,
 struct sockaddr *src,
 u_int fibnum)
{
 struct rtentry *rt;
 int error = 0;
 short *stat = ((void*)0);
 struct rt_addrinfo info;
 struct ifaddr *ifa;
 struct rib_head *rnh;

 NET_EPOCH_ASSERT();

 ifa = ((void*)0);
 rnh = rt_tables_get_rnh(fibnum, dst->sa_family);
 if (rnh == ((void*)0)) {
  error = EAFNOSUPPORT;
  goto out;
 }

 if ((ifa = ifa_ifwithnet(gateway, 0, fibnum)) == ((void*)0)) {
  error = ENETUNREACH;
  goto out;
 }
 rt = rtalloc1_fib(dst, 0, 0UL, fibnum);






 if (!(flags & RTF_DONE) && rt) {
  if (!sa_equal(src, rt->rt_gateway)) {
   error = EINVAL;
   goto done;
  }
  if (rt->rt_ifa != ifa && ifa->ifa_addr->sa_family != AF_LINK) {
   error = EINVAL;
   goto done;
  }
 }
 if ((flags & RTF_GATEWAY) && ifa_ifwithaddr_check(gateway)) {
  error = EHOSTUNREACH;
  goto done;
 }






 if (rt == ((void*)0) || (rt_mask(rt) && rt_mask(rt)->sa_len < 2))
  goto create;




 if (rt->rt_flags & RTF_GATEWAY) {
  if (((rt->rt_flags & RTF_HOST) == 0) && (flags & RTF_HOST)) {




  create:
   if (rt != ((void*)0))
    RTFREE_LOCKED(rt);

   flags |= RTF_DYNAMIC;
   bzero((caddr_t)&info, sizeof(info));
   info.rti_info[RTAX_DST] = dst;
   info.rti_info[RTAX_GATEWAY] = gateway;
   info.rti_info[RTAX_NETMASK] = netmask;
   ifa_ref(ifa);
   info.rti_ifa = ifa;
   info.rti_flags = flags;
   error = rtrequest1_fib(RTM_ADD, &info, &rt, fibnum);
   if (rt != ((void*)0)) {
    RT_LOCK(rt);
    flags = rt->rt_flags;
   }

   stat = &V_rtstat.rts_dynamic;
  } else {





   if ((flags & RTF_GATEWAY) == 0)
    rt->rt_flags &= ~RTF_GATEWAY;
   rt->rt_flags |= RTF_MODIFIED;
   flags |= RTF_MODIFIED;
   stat = &V_rtstat.rts_newgateway;



   RT_UNLOCK(rt);
   RIB_WLOCK(rnh);
   RT_LOCK(rt);
   rt_setgate(rt, rt_key(rt), gateway);
   RIB_WUNLOCK(rnh);
  }
 } else
  error = EHOSTUNREACH;
done:
 if (rt)
  RTFREE_LOCKED(rt);
 out:
 if (error)
  V_rtstat.rts_badredirect++;
 else if (stat != ((void*)0))
  (*stat)++;
 bzero((caddr_t)&info, sizeof(info));
 info.rti_info[RTAX_DST] = dst;
 info.rti_info[RTAX_GATEWAY] = gateway;
 info.rti_info[RTAX_NETMASK] = netmask;
 info.rti_info[RTAX_AUTHOR] = src;
 rt_missmsg_fib(RTM_REDIRECT, &info, flags, error, fibnum);
}
