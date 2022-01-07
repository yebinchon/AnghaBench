
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_in6 {int dummy; } ;
struct rtentry {int dummy; } ;
struct route_in6 {int dummy; } ;
struct ip6_pktopts {int dummy; } ;
struct ip6_moptions {int dummy; } ;
struct ifnet {int dummy; } ;


 int selectroute (struct sockaddr_in6*,struct ip6_pktopts*,struct ip6_moptions*,struct route_in6*,struct ifnet**,struct rtentry**,int ,int ) ;

int
in6_selectroute_fib(struct sockaddr_in6 *dstsock, struct ip6_pktopts *opts,
    struct ip6_moptions *mopts, struct route_in6 *ro,
    struct ifnet **retifp, struct rtentry **retrt, u_int fibnum)
{

 return (selectroute(dstsock, opts, mopts, ro, retifp,
     retrt, 0, fibnum));
}
