
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtentry {int rt_fibnum; int rt_flags; TYPE_1__* rt_ifa; struct ifnet* rt_ifp; int rt_gateway; } ;
struct rt_addrinfo {int * rti_info; } ;
struct ifnet {int if_addrhead; } ;
struct ifaddr {int ifa_addr; } ;
struct epoch_tracker {int dummy; } ;
typedef int info ;
typedef int caddr_t ;
struct TYPE_2__ {int ifa_addr; } ;


 struct ifaddr* CK_STAILQ_FIRST (int *) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 size_t RTAX_DST ;
 size_t RTAX_GATEWAY ;
 size_t RTAX_IFA ;
 size_t RTAX_IFP ;
 size_t RTAX_NETMASK ;
 int bzero (int ,int) ;
 int ifa_free (struct ifaddr*) ;
 int ifa_ref (struct ifaddr*) ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int rt_missmsg_fib (int,struct rt_addrinfo*,int ,int ,int ) ;

__attribute__((used)) static void
nd6_rtmsg(int cmd, struct rtentry *rt)
{
 struct rt_addrinfo info;
 struct ifnet *ifp;
 struct ifaddr *ifa;

 bzero((caddr_t)&info, sizeof(info));
 info.rti_info[RTAX_DST] = rt_key(rt);
 info.rti_info[RTAX_GATEWAY] = rt->rt_gateway;
 info.rti_info[RTAX_NETMASK] = rt_mask(rt);
 ifp = rt->rt_ifp;
 if (ifp != ((void*)0)) {
  struct epoch_tracker et;

  NET_EPOCH_ENTER(et);
  ifa = CK_STAILQ_FIRST(&ifp->if_addrhead);
  info.rti_info[RTAX_IFP] = ifa->ifa_addr;
  ifa_ref(ifa);
  NET_EPOCH_EXIT(et);
  info.rti_info[RTAX_IFA] = rt->rt_ifa->ifa_addr;
 } else
  ifa = ((void*)0);

 rt_missmsg_fib(cmd, &info, rt->rt_flags, 0, rt->rt_fibnum);
 if (ifa != ((void*)0))
  ifa_free(ifa);
}
