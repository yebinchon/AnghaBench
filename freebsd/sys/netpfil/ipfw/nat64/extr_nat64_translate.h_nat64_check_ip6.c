
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {scalar_t__* s6_addr16; } ;


 scalar_t__ IN6_IS_ADDR_LINKLOCAL (struct in6_addr*) ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (struct in6_addr*) ;

__attribute__((used)) static inline int
nat64_check_ip6(struct in6_addr *addr)
{


 if (addr->s6_addr16[0] == 0 ||
     IN6_IS_ADDR_MULTICAST(addr) || IN6_IS_ADDR_LINKLOCAL(addr))
  return (1);
 return (0);
}
