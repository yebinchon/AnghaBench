
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct in6_addr {scalar_t__* s6_addr32; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; struct in6_addr sin6_addr; scalar_t__ sin6_scope_id; } ;
struct sockaddr_dl {scalar_t__ sdl_index; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rtentry {int rt_flags; TYPE_1__* rt_gateway; struct ifnet* rt_ifp; } ;
struct route_in6 {struct rtentry* ro_rt; struct sockaddr_in6 ro_dst; } ;
struct route {int dummy; } ;
struct ip6_pktopts {struct in6_pktinfo* ip6po_pktinfo; struct sockaddr_in6* ip6po_nexthop; struct route_in6 ip6po_nextroute; } ;
struct ip6_moptions {struct ifnet* im6o_multicast_ifp; } ;
struct in6_pktinfo {scalar_t__ ipi6_ifindex; } ;
struct ifnet {int if_flags; scalar_t__ if_index; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ AF_LINK ;
 int EHOSTUNREACH ;
 int IFF_LOOPBACK ;
 int IN6_ARE_ADDR_EQUAL (struct in6_addr*,struct in6_addr*) ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (struct in6_addr*) ;
 int IN6_IS_ADDR_LOOPBACK (struct in6_addr*) ;
 scalar_t__ IN6_IS_ADDR_MC_LINKLOCAL (struct in6_addr*) ;
 scalar_t__ IN6_IS_ADDR_MC_NODELOCAL (struct in6_addr*) ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (struct in6_addr*) ;
 int INET6_ADDRSTRLEN ;
 int IP6STAT_INC (int ) ;
 int RO_RTFREE (struct route_in6*) ;
 int RTFREE (struct rtentry*) ;
 int RTF_GATEWAY ;
 int RTF_UP ;
 int RT_UNLOCK (struct rtentry*) ;
 int bzero (struct sockaddr_in6*,int) ;
 struct ifnet* ifnet_byindex (scalar_t__) ;
 struct ifnet* in6_getlinkifnet (scalar_t__) ;
 int in6_getscope (struct in6_addr*) ;
 int in6_rtalloc (struct route_in6*,int ) ;
 struct rtentry* in6_rtalloc1 (struct sockaddr*,int ,unsigned long,int ) ;
 char* ip6_sprintf (char*,struct in6_addr*) ;
 int ip6s_noroute ;
 int ntohl (scalar_t__) ;
 scalar_t__ ntohs (int ) ;
 int printf (char*,char*,...) ;
 int rtalloc_mpath_fib (struct route*,int ,int ) ;
 struct sockaddr_in6* satosin6 (struct sockaddr_in6*) ;

__attribute__((used)) static int
selectroute(struct sockaddr_in6 *dstsock, struct ip6_pktopts *opts,
    struct ip6_moptions *mopts, struct route_in6 *ro,
    struct ifnet **retifp, struct rtentry **retrt, int norouteok, u_int fibnum)
{
 int error = 0;
 struct ifnet *ifp = ((void*)0);
 struct rtentry *rt = ((void*)0);
 struct sockaddr_in6 *sin6_next;
 struct in6_pktinfo *pi = ((void*)0);
 struct in6_addr *dst = &dstsock->sin6_addr;
 uint32_t zoneid;
 if (opts && (pi = opts->ip6po_pktinfo) != ((void*)0) && pi->ipi6_ifindex) {

  ifp = ifnet_byindex(pi->ipi6_ifindex);
  if (ifp != ((void*)0) &&
      (norouteok || retrt == ((void*)0) ||
      IN6_IS_ADDR_MULTICAST(dst))) {




   goto done;
  } else
   goto getroute;
 }




 if (IN6_IS_ADDR_MULTICAST(dst) &&
     mopts != ((void*)0) && (ifp = mopts->im6o_multicast_ifp) != ((void*)0)) {
  goto done;
 }




 if (IN6_IS_ADDR_MC_LINKLOCAL(dst) ||
     IN6_IS_ADDR_MC_NODELOCAL(dst)) {
  zoneid = ntohs(in6_getscope(dst));
  if (zoneid > 0) {
   ifp = in6_getlinkifnet(zoneid);
   goto done;
  }
 }

  getroute:




 if (opts && opts->ip6po_nexthop) {
  struct route_in6 *ron;

  sin6_next = satosin6(opts->ip6po_nexthop);
  if (IN6_IS_ADDR_LINKLOCAL(&sin6_next->sin6_addr)) {




   zoneid = ntohs(in6_getscope(&sin6_next->sin6_addr));
   if (zoneid > 0) {
    ifp = in6_getlinkifnet(zoneid);
    goto done;
   }
  }
  ron = &opts->ip6po_nextroute;

  if (ron->ro_rt != ((void*)0) && (
      (ron->ro_rt->rt_flags & RTF_UP) == 0 ||
      ron->ro_dst.sin6_family != AF_INET6 ||
      !IN6_ARE_ADDR_EQUAL(&ron->ro_dst.sin6_addr,
   &sin6_next->sin6_addr)))
   RO_RTFREE(ron);
  if (ron->ro_rt == ((void*)0)) {
   ron->ro_dst = *sin6_next;
   in6_rtalloc(ron, fibnum);
  }




  if (ron->ro_rt == ((void*)0) ||
      (ron->ro_rt->rt_flags & RTF_GATEWAY) != 0)
   error = EHOSTUNREACH;
  else {
   rt = ron->ro_rt;
   ifp = rt->rt_ifp;
  }
  goto done;
 }






 if (ro) {
  if (ro->ro_rt &&
      (!(ro->ro_rt->rt_flags & RTF_UP) ||
       ((struct sockaddr *)(&ro->ro_dst))->sa_family != AF_INET6 ||
       !IN6_ARE_ADDR_EQUAL(&satosin6(&ro->ro_dst)->sin6_addr,
       dst))) {
   RTFREE(ro->ro_rt);
   ro->ro_rt = (struct rtentry *)((void*)0);
  }
  if (ro->ro_rt == (struct rtentry *)((void*)0)) {
   struct sockaddr_in6 *sa6;


   bzero(&ro->ro_dst, sizeof(struct sockaddr_in6));
   sa6 = (struct sockaddr_in6 *)&ro->ro_dst;
   *sa6 = *dstsock;
   sa6->sin6_scope_id = 0;





    ro->ro_rt = in6_rtalloc1((struct sockaddr *)
        &ro->ro_dst, 0, 0UL, fibnum);
    if (ro->ro_rt)
     RT_UNLOCK(ro->ro_rt);

  }





  if (opts && opts->ip6po_nexthop)
   goto done;

  if (ro->ro_rt) {
   ifp = ro->ro_rt->rt_ifp;

   if (ifp == ((void*)0)) {
    RTFREE(ro->ro_rt);
    ro->ro_rt = ((void*)0);
   }
  }
  if (ro->ro_rt == ((void*)0))
   error = EHOSTUNREACH;
  rt = ro->ro_rt;
  if (ifp && opts && opts->ip6po_pktinfo &&
      opts->ip6po_pktinfo->ipi6_ifindex) {
   if (!(ifp->if_flags & IFF_LOOPBACK) &&
       ifp->if_index !=
       opts->ip6po_pktinfo->ipi6_ifindex) {
    error = EHOSTUNREACH;
    goto done;
   }
  }
 }

  done:
 if (ifp == ((void*)0) && rt == ((void*)0)) {




  error = EHOSTUNREACH;
 }
 if (error == EHOSTUNREACH)
  IP6STAT_INC(ip6s_noroute);

 if (retifp != ((void*)0)) {
  *retifp = ifp;
  if (rt) {
   if ((rt->rt_ifp->if_flags & IFF_LOOPBACK) &&
       (rt->rt_gateway->sa_family == AF_LINK))
    *retifp =
     ifnet_byindex(((struct sockaddr_dl *)
             rt->rt_gateway)->sdl_index);
  }
 }

 if (retrt != ((void*)0))
  *retrt = rt;

 return (error);
}
