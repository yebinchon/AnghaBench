
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_index; } ;
struct TYPE_2__ {int * s6id_list; } ;


 int IPV6_ADDR_SCOPES_COUNT ;
 int IPV6_ADDR_SCOPE_INTFACELOCAL ;
 int IPV6_ADDR_SCOPE_LINKLOCAL ;
 TYPE_1__* SID (struct ifnet const*) ;

uint32_t
in6_getscopezone(const struct ifnet *ifp, int scope)
{

 if (scope == IPV6_ADDR_SCOPE_INTFACELOCAL ||
     scope == IPV6_ADDR_SCOPE_LINKLOCAL)
  return (ifp->if_index);
 if (scope >= 0 && scope < IPV6_ADDR_SCOPES_COUNT)
  return (SID(ifp)->s6id_list[scope]);
 return (0);
}
