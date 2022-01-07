
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
typedef int u_int ;
struct nhop6_extended {int nh_mtu; struct ifnet* nh_ifp; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 int EHOSTUNREACH ;
 int NHR_REF ;
 int fib6_free_nh_ext (int ,struct nhop6_extended*) ;
 scalar_t__ fib6_lookup_nh_ext (int ,struct in6_addr*,int ,int ,int ,struct nhop6_extended*) ;
 int in6_splitscope (struct in6_addr const*,struct in6_addr*,int *) ;
 int ip6_calcmtu (struct ifnet*,struct in6_addr const*,int ,int *,int *,int ) ;

__attribute__((used)) static int
ip6_getpmtu_ctl(u_int fibnum, const struct in6_addr *dst, u_long *mtup)
{
 struct nhop6_extended nh6;
 struct in6_addr kdst;
 uint32_t scopeid;
 struct ifnet *ifp;
 u_long mtu;
 int error;

 in6_splitscope(dst, &kdst, &scopeid);
 if (fib6_lookup_nh_ext(fibnum, &kdst, scopeid, NHR_REF, 0, &nh6) != 0)
  return (EHOSTUNREACH);

 ifp = nh6.nh_ifp;
 mtu = nh6.nh_mtu;

 error = ip6_calcmtu(ifp, dst, mtu, mtup, ((void*)0), 0);
 fib6_free_nh_ext(fibnum, &nh6);

 return (error);
}
