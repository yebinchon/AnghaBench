
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int dummy; } ;
struct pfr_ktableworkq {int dummy; } ;
struct pfr_ktable {int pfrkt_t; } ;


 int ACCEPT_FLAGS (int,int) ;
 int EINVAL ;
 int PFR_FLAG_ADDRSTOO ;
 int PFR_FLAG_DUMMY ;
 struct pfr_ktable* RB_FIND (int ,int *,struct pfr_ktable*) ;
 int SLIST_INIT (struct pfr_ktableworkq*) ;
 int SLIST_INSERT_HEAD (struct pfr_ktableworkq*,struct pfr_ktable*,int ) ;
 int V_pfr_ktables ;
 int bcopy (struct pfr_table*,int *,int) ;
 int pfr_clstats_ktables (struct pfr_ktableworkq*,long,int) ;
 int pfr_ktablehead ;
 scalar_t__ pfr_validate_table (int *,int ,int ) ;
 int pfrkt_workq ;
 long time_second ;

int
pfr_clr_tstats(struct pfr_table *tbl, int size, int *nzero, int flags)
{
 struct pfr_ktableworkq workq;
 struct pfr_ktable *p, key;
 int i, xzero = 0;
 long tzero = time_second;

 ACCEPT_FLAGS(flags, PFR_FLAG_DUMMY | PFR_FLAG_ADDRSTOO);
 SLIST_INIT(&workq);
 for (i = 0; i < size; i++) {
  bcopy(tbl + i, &key.pfrkt_t, sizeof(key.pfrkt_t));
  if (pfr_validate_table(&key.pfrkt_t, 0, 0))
   return (EINVAL);
  p = RB_FIND(pfr_ktablehead, &V_pfr_ktables, &key);
  if (p != ((void*)0)) {
   SLIST_INSERT_HEAD(&workq, p, pfrkt_workq);
   xzero++;
  }
 }
 if (!(flags & PFR_FLAG_DUMMY))
  pfr_clstats_ktables(&workq, tzero, flags & PFR_FLAG_ADDRSTOO);
 if (nzero != ((void*)0))
  *nzero = xzero;
 return (0);
}
