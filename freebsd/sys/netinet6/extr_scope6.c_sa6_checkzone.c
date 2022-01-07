
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {scalar_t__ sin6_scope_id; int sin6_addr; } ;
struct TYPE_2__ {scalar_t__* s6id_list; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 scalar_t__ IN6_IS_ADDR_LOOPBACK (int *) ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (int *) ;
 int IPV6_ADDR_SCOPE_GLOBAL ;
 int IPV6_ADDR_SCOPE_INTFACELOCAL ;
 int IPV6_ADDR_SCOPE_LINKLOCAL ;
 scalar_t__ V_ip6_use_defzone ;
 int V_loif ;
 TYPE_1__ V_sid_default ;
 int in6_addrscope (int *) ;
 scalar_t__ in6_getscopezone (int ,int) ;

int
sa6_checkzone(struct sockaddr_in6 *sa6)
{
 int scope;

 scope = in6_addrscope(&sa6->sin6_addr);
 if (scope == IPV6_ADDR_SCOPE_GLOBAL)
  return (sa6->sin6_scope_id ? EINVAL: 0);
 if (IN6_IS_ADDR_MULTICAST(&sa6->sin6_addr) &&
     scope != IPV6_ADDR_SCOPE_LINKLOCAL &&
     scope != IPV6_ADDR_SCOPE_INTFACELOCAL) {
  if (sa6->sin6_scope_id == 0 && V_ip6_use_defzone != 0)
   sa6->sin6_scope_id = V_sid_default.s6id_list[scope];
  return (0);
 }






 if (IN6_IS_ADDR_LOOPBACK(&sa6->sin6_addr)) {
  if (sa6->sin6_scope_id == 0)
   sa6->sin6_scope_id = in6_getscopezone(V_loif, scope);
  else if (sa6->sin6_scope_id != in6_getscopezone(V_loif, scope))
   return (EADDRNOTAVAIL);
 }

 if (sa6->sin6_scope_id != 0)
  return (0);
 if (V_ip6_use_defzone != 0)
  sa6->sin6_scope_id = V_sid_default.s6id_list[scope];

 return (sa6->sin6_scope_id ? 0: EADDRNOTAVAIL);
}
