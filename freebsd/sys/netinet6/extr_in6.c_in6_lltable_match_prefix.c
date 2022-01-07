
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {struct in6_addr addr6; } ;
struct llentry {int la_flags; TYPE_1__ r_l3addr; } ;


 scalar_t__ IN6_ARE_ADDR_EQUAL (struct in6_addr const*,struct in6_addr const*) ;
 scalar_t__ IN6_ARE_MASKED_ADDR_EQUAL (struct in6_addr const*,struct in6_addr const*,struct in6_addr const*) ;
 int LLE_IFADDR ;
 int LLE_STATIC ;

__attribute__((used)) static int
in6_lltable_match_prefix(const struct sockaddr *saddr,
    const struct sockaddr *smask, u_int flags, struct llentry *lle)
{
 const struct in6_addr *addr, *mask, *lle_addr;

 addr = &((const struct sockaddr_in6 *)saddr)->sin6_addr;
 mask = &((const struct sockaddr_in6 *)smask)->sin6_addr;
 lle_addr = &lle->r_l3addr.addr6;

 if (IN6_ARE_MASKED_ADDR_EQUAL(lle_addr, addr, mask) == 0)
  return (0);

 if (lle->la_flags & LLE_IFADDR) {






  if (IN6_ARE_ADDR_EQUAL(addr, lle_addr) &&
      (flags & LLE_STATIC) != 0)
   return (1);
  return (0);
 }


 if ((flags & LLE_STATIC) || !(lle->la_flags & LLE_STATIC))
  return (1);

 return (0);
}
