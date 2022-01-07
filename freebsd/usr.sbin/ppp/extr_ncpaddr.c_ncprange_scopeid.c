
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct in6_addr {int * s6_addr; } ;
struct ncprange {scalar_t__ ncprange_family; struct in6_addr ncprange_ip6addr; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (struct in6_addr const*) ;
 scalar_t__ IN6_IS_ADDR_MC_LINKLOCAL (struct in6_addr const*) ;
 int ntohs (int const) ;

int
ncprange_scopeid(const struct ncprange *range)
{
  const struct in6_addr *sin6;
  int scopeid = -1;

  if (range->ncprange_family == AF_INET6) {
    sin6 = &range->ncprange_ip6addr;
    if (IN6_IS_ADDR_LINKLOCAL(sin6) || IN6_IS_ADDR_MC_LINKLOCAL(sin6))
      if ((scopeid = ntohs(*(const u_short *)&sin6->s6_addr[2])) == 0)
        scopeid = -1;
  }

  return scopeid;
}
