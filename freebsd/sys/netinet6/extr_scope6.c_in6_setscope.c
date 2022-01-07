
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct scope6_id {int* s6id_list; } ;
struct in6_addr {int * s6_addr16; } ;
struct ifnet {int if_flags; int if_index; } ;
struct epoch_tracker {int dummy; } ;


 int EINVAL ;
 int IFF_LOOPBACK ;
 scalar_t__ IN6_IS_ADDR_LOOPBACK (struct in6_addr*) ;
 int IPV6_ADDR_SCOPE_GLOBAL ;
 int IPV6_ADDR_SCOPE_INTFACELOCAL ;
 int IPV6_ADDR_SCOPE_LINKLOCAL ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 struct scope6_id* SID (struct ifnet*) ;
 int htons (int) ;
 int in6_addrscope (struct in6_addr*) ;

int
in6_setscope(struct in6_addr *in6, struct ifnet *ifp, u_int32_t *ret_id)
{
 int scope;
 u_int32_t zoneid = 0;
 struct scope6_id *sid;





 if (IN6_IS_ADDR_LOOPBACK(in6)) {
  if (!(ifp->if_flags & IFF_LOOPBACK))
   return (EINVAL);
 } else {
  scope = in6_addrscope(in6);
  if (scope == IPV6_ADDR_SCOPE_INTFACELOCAL ||
      scope == IPV6_ADDR_SCOPE_LINKLOCAL) {





   zoneid = ifp->if_index;
   in6->s6_addr16[1] = htons(zoneid & 0xffff);
  } else if (scope != IPV6_ADDR_SCOPE_GLOBAL) {
   struct epoch_tracker et;

   NET_EPOCH_ENTER(et);
   sid = SID(ifp);
   zoneid = sid->s6id_list[scope];
   NET_EPOCH_EXIT(et);
  }
 }

 if (ret_id != ((void*)0))
  *ret_id = zoneid;

 return (0);
}
