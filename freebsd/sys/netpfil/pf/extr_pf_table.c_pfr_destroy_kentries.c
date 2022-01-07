
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_kentryworkq {int dummy; } ;
struct pfr_kentry {int dummy; } ;


 struct pfr_kentry* SLIST_FIRST (struct pfr_kentryworkq*) ;
 struct pfr_kentry* SLIST_NEXT (struct pfr_kentry*,int ) ;
 int pfr_destroy_kentry (struct pfr_kentry*) ;
 int pfrke_workq ;

__attribute__((used)) static void
pfr_destroy_kentries(struct pfr_kentryworkq *workq)
{
 struct pfr_kentry *p, *q;

 for (p = SLIST_FIRST(workq); p != ((void*)0); p = q) {
  q = SLIST_NEXT(p, pfrke_workq);
  pfr_destroy_kentry(p);
 }
}
