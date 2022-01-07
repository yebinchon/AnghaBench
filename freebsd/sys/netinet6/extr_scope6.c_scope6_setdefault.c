
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {scalar_t__ if_index; } ;
struct TYPE_2__ {scalar_t__* s6id_list; } ;


 size_t IPV6_ADDR_SCOPE_INTFACELOCAL ;
 size_t IPV6_ADDR_SCOPE_LINKLOCAL ;
 int SCOPE6_LOCK () ;
 int SCOPE6_UNLOCK () ;
 TYPE_1__ V_sid_default ;

void
scope6_setdefault(struct ifnet *ifp)
{







 SCOPE6_LOCK();
 if (ifp) {
  V_sid_default.s6id_list[IPV6_ADDR_SCOPE_INTFACELOCAL] =
   ifp->if_index;
  V_sid_default.s6id_list[IPV6_ADDR_SCOPE_LINKLOCAL] =
   ifp->if_index;
 } else {
  V_sid_default.s6id_list[IPV6_ADDR_SCOPE_INTFACELOCAL] = 0;
  V_sid_default.s6id_list[IPV6_ADDR_SCOPE_LINKLOCAL] = 0;
 }
 SCOPE6_UNLOCK();
}
