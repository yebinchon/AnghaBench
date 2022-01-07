
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct lltable {struct ifnet* llt_ifp; } ;
struct llentry {int la_flags; int ln_state; int lle_epoch_ctx; } ;
struct ifnet {int dummy; } ;


 scalar_t__ AF_INET6 ;
 int IF_LLADDR (struct ifnet*) ;
 int KASSERT (int,char*) ;
 int LLE_IFADDR ;
 int LLE_MAX_LINKHDR ;
 int LLE_STATIC ;
 int LOG_INFO ;
 int ND6_LLINFO_REACHABLE ;
 int epoch_call (int ,int *,int ) ;
 int in6_lltable_destroy_lle_unlocked ;
 struct llentry* in6_lltable_new (int *,int) ;
 scalar_t__ in6_lltable_rtcheck (struct ifnet*,int,struct sockaddr const*) ;
 scalar_t__ lltable_calc_llheader (struct ifnet*,scalar_t__,int ,char*,size_t*,int*) ;
 int lltable_set_entry_addr (struct ifnet*,struct llentry*,char*,size_t,int) ;
 int log (int ,char*) ;
 int net_epoch_preempt ;

__attribute__((used)) static struct llentry *
in6_lltable_alloc(struct lltable *llt, u_int flags,
 const struct sockaddr *l3addr)
{
 const struct sockaddr_in6 *sin6 = (const struct sockaddr_in6 *)l3addr;
 struct ifnet *ifp = llt->llt_ifp;
 struct llentry *lle;
 char linkhdr[LLE_MAX_LINKHDR];
 size_t linkhdrsize;
 int lladdr_off;

 KASSERT(l3addr->sa_family == AF_INET6,
     ("sin_family %d", l3addr->sa_family));






 if (!(flags & LLE_IFADDR) &&
     in6_lltable_rtcheck(ifp, flags, l3addr) != 0)
  return (((void*)0));

 lle = in6_lltable_new(&sin6->sin6_addr, flags);
 if (lle == ((void*)0)) {
  log(LOG_INFO, "lla_lookup: new lle malloc failed\n");
  return (((void*)0));
 }
 lle->la_flags = flags;
 if ((flags & LLE_IFADDR) == LLE_IFADDR) {
  linkhdrsize = LLE_MAX_LINKHDR;
  if (lltable_calc_llheader(ifp, AF_INET6, IF_LLADDR(ifp),
      linkhdr, &linkhdrsize, &lladdr_off) != 0) {
   epoch_call(net_epoch_preempt, &lle->lle_epoch_ctx, in6_lltable_destroy_lle_unlocked);
   return (((void*)0));
  }
  lltable_set_entry_addr(ifp, lle, linkhdr, linkhdrsize,
      lladdr_off);
  lle->la_flags |= LLE_STATIC;
 }

 if ((lle->la_flags & LLE_STATIC) != 0)
  lle->ln_state = ND6_LLINFO_REACHABLE;

 return (lle);
}
