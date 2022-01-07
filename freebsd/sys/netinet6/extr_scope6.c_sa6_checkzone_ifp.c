
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {scalar_t__ sin6_scope_id; int sin6_addr; } ;
struct ifnet {int dummy; } ;


 int EADDRNOTAVAIL ;
 int IPV6_ADDR_SCOPE_INTFACELOCAL ;
 int IPV6_ADDR_SCOPE_LINKLOCAL ;
 int in6_addrscope (int *) ;
 scalar_t__ in6_getscopezone (struct ifnet*,int) ;
 int sa6_checkzone (struct sockaddr_in6*) ;

int
sa6_checkzone_ifp(struct ifnet *ifp, struct sockaddr_in6 *sa6)
{
 int scope;

 scope = in6_addrscope(&sa6->sin6_addr);
 if (scope == IPV6_ADDR_SCOPE_LINKLOCAL ||
     scope == IPV6_ADDR_SCOPE_INTFACELOCAL) {
  if (sa6->sin6_scope_id == 0) {
   sa6->sin6_scope_id = in6_getscopezone(ifp, scope);
   return (0);
  } else if (sa6->sin6_scope_id != in6_getscopezone(ifp, scope))
   return (EADDRNOTAVAIL);
 }
 return (sa6_checkzone(sa6));
}
