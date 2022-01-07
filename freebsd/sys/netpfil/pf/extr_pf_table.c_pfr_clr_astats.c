
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; } ;
struct pfr_kentryworkq {int dummy; } ;
struct pfr_kentry {int dummy; } ;
struct pfr_addr {int pfra_fback; } ;


 int ACCEPT_FLAGS (int,int) ;
 int EINVAL ;
 int ESRCH ;
 int PFR_FB_CLEARED ;
 int PFR_FB_NONE ;
 int PFR_FLAG_DUMMY ;
 int PFR_FLAG_FEEDBACK ;
 int PFR_TFLAG_ACTIVE ;
 int PF_RULES_WASSERT () ;
 int SLIST_INIT (struct pfr_kentryworkq*) ;
 int SLIST_INSERT_HEAD (struct pfr_kentryworkq*,struct pfr_kentry*,int ) ;
 int pfr_clstats_kentries (struct pfr_kentryworkq*,int ,int ) ;
 struct pfr_kentry* pfr_lookup_addr (struct pfr_ktable*,struct pfr_addr*,int) ;
 struct pfr_ktable* pfr_lookup_table (struct pfr_table*) ;
 int pfr_reset_feedback (struct pfr_addr*,int) ;
 scalar_t__ pfr_validate_addr (struct pfr_addr*) ;
 scalar_t__ pfr_validate_table (struct pfr_table*,int ,int ) ;
 int pfrke_workq ;
 int senderr (int) ;

int
pfr_clr_astats(struct pfr_table *tbl, struct pfr_addr *addr, int size,
    int *nzero, int flags)
{
 struct pfr_ktable *kt;
 struct pfr_kentryworkq workq;
 struct pfr_kentry *p;
 struct pfr_addr *ad;
 int i, rv, xzero = 0;

 PF_RULES_WASSERT();

 ACCEPT_FLAGS(flags, PFR_FLAG_DUMMY | PFR_FLAG_FEEDBACK);
 if (pfr_validate_table(tbl, 0, 0))
  return (EINVAL);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void*)0) || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
  return (ESRCH);
 SLIST_INIT(&workq);
 for (i = 0, ad = addr; i < size; i++, ad++) {
  if (pfr_validate_addr(ad))
   senderr(EINVAL);
  p = pfr_lookup_addr(kt, ad, 1);
  if (flags & PFR_FLAG_FEEDBACK) {
   ad->pfra_fback = (p != ((void*)0)) ?
       PFR_FB_CLEARED : PFR_FB_NONE;
  }
  if (p != ((void*)0)) {
   SLIST_INSERT_HEAD(&workq, p, pfrke_workq);
   xzero++;
  }
 }

 if (!(flags & PFR_FLAG_DUMMY))
  pfr_clstats_kentries(&workq, 0, 0);
 if (nzero != ((void*)0))
  *nzero = xzero;
 return (0);
_bad:
 if (flags & PFR_FLAG_FEEDBACK)
  pfr_reset_feedback(addr, size);
 return (rv);
}
