
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct llentry {scalar_t__ ln_state; struct mbuf* la_hold; } ;


 int LLE_WLOCK_ASSERT (struct llentry*) ;
 int ND6_LLINFO_DELAY ;
 scalar_t__ ND6_LLINFO_STALE ;
 int lltable_fill_sa_entry (struct llentry*,struct sockaddr*) ;
 int nd6_llinfo_setstate (struct llentry*,int ) ;

void
nd6_grab_holdchain(struct llentry *ln, struct mbuf **chain,
    struct sockaddr_in6 *sin6)
{

 LLE_WLOCK_ASSERT(ln);

 *chain = ln->la_hold;
 ln->la_hold = ((void*)0);
 lltable_fill_sa_entry(ln, (struct sockaddr *)sin6);

 if (ln->ln_state == ND6_LLINFO_STALE) {
  nd6_llinfo_setstate(ln, ND6_LLINFO_DELAY);
 }
}
