
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct llentry {int dummy; } ;
struct TYPE_2__ {int ifa_rtrequest; struct ifnet* ifa_ifp; } ;
struct in6_ifaddr {int ia_addr; TYPE_1__ ia_ifa; } ;
struct ifnet {int dummy; } ;


 int ENOBUFS ;
 int EVENTHANDLER_INVOKE (int ,struct llentry*,int ) ;
 int IF_AFDATA_WLOCK (struct ifnet*) ;
 int IF_AFDATA_WUNLOCK (struct ifnet*) ;
 int LLENTRY_EXPIRED ;
 int LLENTRY_RESOLVED ;
 int LLE_EXCLUSIVE ;
 int LLE_IFADDR ;
 int LLE_WLOCK (struct llentry*) ;
 int LLE_WUNLOCK (struct llentry*) ;
 int LLTABLE6 (struct ifnet*) ;
 struct llentry* lla_lookup (int ,int ,struct sockaddr*) ;
 int lle_event ;
 int llentry_free (struct llentry*) ;
 struct llentry* lltable_alloc_entry (int ,int ,struct sockaddr*) ;
 int lltable_link_entry (int ,struct llentry*) ;
 int lltable_unlink_entry (int ,struct llentry*) ;
 scalar_t__ nd6_need_cache (struct ifnet*) ;
 int nd6_rtrequest ;

int
nd6_add_ifa_lle(struct in6_ifaddr *ia)
{
 struct ifnet *ifp;
 struct llentry *ln, *ln_tmp;
 struct sockaddr *dst;

 ifp = ia->ia_ifa.ifa_ifp;
 if (nd6_need_cache(ifp) == 0)
  return (0);

 ia->ia_ifa.ifa_rtrequest = nd6_rtrequest;
 dst = (struct sockaddr *)&ia->ia_addr;
 ln = lltable_alloc_entry(LLTABLE6(ifp), LLE_IFADDR, dst);
 if (ln == ((void*)0))
  return (ENOBUFS);

 IF_AFDATA_WLOCK(ifp);
 LLE_WLOCK(ln);

 ln_tmp = lla_lookup(LLTABLE6(ifp), LLE_EXCLUSIVE, dst);
 if (ln_tmp != ((void*)0))
  lltable_unlink_entry(LLTABLE6(ifp), ln_tmp);
 lltable_link_entry(LLTABLE6(ifp), ln);
 IF_AFDATA_WUNLOCK(ifp);

 if (ln_tmp != ((void*)0))
  EVENTHANDLER_INVOKE(lle_event, ln_tmp, LLENTRY_EXPIRED);
 EVENTHANDLER_INVOKE(lle_event, ln, LLENTRY_RESOLVED);

 LLE_WUNLOCK(ln);
 if (ln_tmp != ((void*)0))
  llentry_free(ln_tmp);

 return (0);
}
