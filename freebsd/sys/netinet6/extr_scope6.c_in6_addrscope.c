
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 scalar_t__ IN6_IS_ADDR_LINKLOCAL (struct in6_addr const*) ;
 scalar_t__ IN6_IS_ADDR_LOOPBACK (struct in6_addr const*) ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (struct in6_addr const*) ;
 scalar_t__ IN6_IS_ADDR_SITELOCAL (struct in6_addr const*) ;
 int IPV6_ADDR_MC_SCOPE (struct in6_addr const*) ;
 int IPV6_ADDR_SCOPE_GLOBAL ;
 int IPV6_ADDR_SCOPE_LINKLOCAL ;
 int IPV6_ADDR_SCOPE_SITELOCAL ;

int
in6_addrscope(const struct in6_addr *addr)
{

 if (IN6_IS_ADDR_MULTICAST(addr)) {




  if (IPV6_ADDR_MC_SCOPE(addr) == 0x0f)
   return (IPV6_ADDR_SCOPE_GLOBAL);
  return (IPV6_ADDR_MC_SCOPE(addr));
 }
 if (IN6_IS_ADDR_LINKLOCAL(addr) ||
     IN6_IS_ADDR_LOOPBACK(addr))
  return (IPV6_ADDR_SCOPE_LINKLOCAL);
 if (IN6_IS_ADDR_SITELOCAL(addr))
  return (IPV6_ADDR_SCOPE_SITELOCAL);
 return (IPV6_ADDR_SCOPE_GLOBAL);
}
