
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; int pfrkt_cnt; } ;
struct pfr_kentryworkq {int dummy; } ;
struct pfr_kentry {int pfrke_mark; scalar_t__ pfrke_not; } ;
struct pfr_addr {scalar_t__ pfra_not; int pfra_fback; } ;


 int ACCEPT_FLAGS (int,int) ;
 int EINVAL ;
 int EPERM ;
 int ESRCH ;
 int PFR_FB_CONFLICT ;
 int PFR_FB_DELETED ;
 int PFR_FB_DUPLICATE ;
 int PFR_FB_NONE ;
 int PFR_FLAG_DUMMY ;
 int PFR_FLAG_FEEDBACK ;
 int PFR_FLAG_USERIOCTL ;
 int PFR_TFLAG_ACTIVE ;
 int PFR_TFLAG_CONST ;
 int PF_RULES_WASSERT () ;
 int SLIST_INIT (struct pfr_kentryworkq*) ;
 int SLIST_INSERT_HEAD (struct pfr_kentryworkq*,struct pfr_kentry*,int ) ;
 struct pfr_kentry* pfr_lookup_addr (struct pfr_ktable*,struct pfr_addr*,int) ;
 struct pfr_ktable* pfr_lookup_table (struct pfr_table*) ;
 int pfr_mark_addrs (struct pfr_ktable*) ;
 int pfr_remove_kentries (struct pfr_ktable*,struct pfr_kentryworkq*) ;
 int pfr_reset_feedback (struct pfr_addr*,int) ;
 scalar_t__ pfr_validate_addr (struct pfr_addr*) ;
 scalar_t__ pfr_validate_table (struct pfr_table*,int ,int) ;
 int pfrke_workq ;
 int senderr (int) ;

int
pfr_del_addrs(struct pfr_table *tbl, struct pfr_addr *addr, int size,
    int *ndel, int flags)
{
 struct pfr_ktable *kt;
 struct pfr_kentryworkq workq;
 struct pfr_kentry *p;
 struct pfr_addr *ad;
 int i, rv, xdel = 0, log = 1;

 PF_RULES_WASSERT();

 ACCEPT_FLAGS(flags, PFR_FLAG_DUMMY | PFR_FLAG_FEEDBACK);
 if (pfr_validate_table(tbl, 0, flags & PFR_FLAG_USERIOCTL))
  return (EINVAL);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void*)0) || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
  return (ESRCH);
 if (kt->pfrkt_flags & PFR_TFLAG_CONST)
  return (EPERM);
 for (i = kt->pfrkt_cnt; i > 0; i >>= 1)
  log++;
 if (size > kt->pfrkt_cnt/log) {

  pfr_mark_addrs(kt);
 } else {

  for (i = 0, ad = addr; i < size; i++, ad++) {
   if (pfr_validate_addr(ad))
    return (EINVAL);
   p = pfr_lookup_addr(kt, ad, 1);
   if (p != ((void*)0))
    p->pfrke_mark = 0;
  }
 }
 SLIST_INIT(&workq);
 for (i = 0, ad = addr; i < size; i++, ad++) {
  if (pfr_validate_addr(ad))
   senderr(EINVAL);
  p = pfr_lookup_addr(kt, ad, 1);
  if (flags & PFR_FLAG_FEEDBACK) {
   if (p == ((void*)0))
    ad->pfra_fback = PFR_FB_NONE;
   else if (p->pfrke_not != ad->pfra_not)
    ad->pfra_fback = PFR_FB_CONFLICT;
   else if (p->pfrke_mark)
    ad->pfra_fback = PFR_FB_DUPLICATE;
   else
    ad->pfra_fback = PFR_FB_DELETED;
  }
  if (p != ((void*)0) && p->pfrke_not == ad->pfra_not &&
      !p->pfrke_mark) {
   p->pfrke_mark = 1;
   SLIST_INSERT_HEAD(&workq, p, pfrke_workq);
   xdel++;
  }
 }
 if (!(flags & PFR_FLAG_DUMMY))
  pfr_remove_kentries(kt, &workq);
 if (ndel != ((void*)0))
  *ndel = xdel;
 return (0);
_bad:
 if (flags & PFR_FLAG_FEEDBACK)
  pfr_reset_feedback(addr, size);
 return (rv);
}
