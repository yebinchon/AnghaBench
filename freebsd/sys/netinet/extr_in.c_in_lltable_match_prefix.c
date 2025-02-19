
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct in_addr {scalar_t__ s_addr; } ;
struct sockaddr_in {struct in_addr sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ addr4; } ;
struct llentry {int la_flags; TYPE_2__ r_l3addr; } ;


 scalar_t__ IN_ARE_MASKED_ADDR_EQUAL (struct in_addr,struct in_addr,struct in_addr) ;
 int LLE_IFADDR ;
 int LLE_STATIC ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static int
in_lltable_match_prefix(const struct sockaddr *saddr,
    const struct sockaddr *smask, u_int flags, struct llentry *lle)
{
 struct in_addr addr, mask, lle_addr;

 addr = ((const struct sockaddr_in *)saddr)->sin_addr;
 mask = ((const struct sockaddr_in *)smask)->sin_addr;
 lle_addr.s_addr = ntohl(lle->r_l3addr.addr4.s_addr);

 if (IN_ARE_MASKED_ADDR_EQUAL(lle_addr, addr, mask) == 0)
  return (0);

 if (lle->la_flags & LLE_IFADDR) {
  if (addr.s_addr == lle_addr.s_addr && (flags & LLE_STATIC) != 0)
   return (1);
  return (0);
 }


 if ((flags & LLE_STATIC) || !(lle->la_flags & LLE_STATIC))
  return (1);

 return (0);
}
