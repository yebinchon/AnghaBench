
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_ktableworkq {int dummy; } ;
struct pfr_ktable {int pfrkt_nflags; } ;


 struct pfr_ktable* SLIST_FIRST (struct pfr_ktableworkq*) ;
 struct pfr_ktable* SLIST_NEXT (struct pfr_ktable*,int ) ;
 int pfr_setflags_ktable (struct pfr_ktable*,int ) ;
 int pfrkt_workq ;

__attribute__((used)) static void
pfr_setflags_ktables(struct pfr_ktableworkq *workq)
{
 struct pfr_ktable *p, *q;

 for (p = SLIST_FIRST(workq); p; p = q) {
  q = SLIST_NEXT(p, pfrkt_workq);
  pfr_setflags_ktable(p, p->pfrkt_nflags);
 }
}
