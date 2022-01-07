
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int EINVAL ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (struct in6_addr const*) ;
 scalar_t__ IN6_IS_ADDR_LOOPBACK (struct in6_addr const*) ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (struct in6_addr const*) ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (struct in6_addr const*) ;

__attribute__((used)) static int
nptv6_check_prefix(const struct in6_addr *addr)
{

 if (IN6_IS_ADDR_MULTICAST(addr) ||
     IN6_IS_ADDR_LINKLOCAL(addr) ||
     IN6_IS_ADDR_LOOPBACK(addr) ||
     IN6_IS_ADDR_UNSPECIFIED(addr))
  return (EINVAL);
 return (0);
}
