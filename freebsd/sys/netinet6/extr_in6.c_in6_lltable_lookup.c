
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct lltable {int llt_ifp; } ;
struct llentry {int la_flags; } ;


 scalar_t__ AF_INET6 ;
 int IF_AFDATA_LOCK_ASSERT (int ) ;
 int KASSERT (int,char*) ;
 int LLE_EXCLUSIVE ;
 int LLE_LINKED ;
 int LLE_RLOCK (struct llentry*) ;
 int LLE_RUNLOCK (struct llentry*) ;
 int LLE_UNLOCKED ;
 int LLE_WLOCK (struct llentry*) ;
 int LLE_WUNLOCK (struct llentry*) ;
 scalar_t__ __predict_false (int) ;
 struct llentry* in6_lltable_find_dst (struct lltable*,int *) ;

__attribute__((used)) static struct llentry *
in6_lltable_lookup(struct lltable *llt, u_int flags,
 const struct sockaddr *l3addr)
{
 const struct sockaddr_in6 *sin6 = (const struct sockaddr_in6 *)l3addr;
 struct llentry *lle;

 IF_AFDATA_LOCK_ASSERT(llt->llt_ifp);
 KASSERT(l3addr->sa_family == AF_INET6,
     ("sin_family %d", l3addr->sa_family));
 KASSERT((flags & (LLE_UNLOCKED | LLE_EXCLUSIVE)) !=
     (LLE_UNLOCKED | LLE_EXCLUSIVE),
     ("wrong lle request flags: %#x", flags));

 lle = in6_lltable_find_dst(llt, &sin6->sin6_addr);
 if (lle == ((void*)0))
  return (((void*)0));
 if (flags & LLE_UNLOCKED)
  return (lle);

 if (flags & LLE_EXCLUSIVE)
  LLE_WLOCK(lle);
 else
  LLE_RLOCK(lle);





 if (__predict_false((lle->la_flags & LLE_LINKED) == 0)) {
  if (flags & LLE_EXCLUSIVE)
   LLE_WUNLOCK(lle);
  else
   LLE_RUNLOCK(lle);
  return (((void*)0));
 }
 return (lle);
}
