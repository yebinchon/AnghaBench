
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct nfscllockowner {int nfsl_lock; } ;
struct nfscllock {scalar_t__ nfslo_type; scalar_t__ nfslo_end; scalar_t__ nfslo_first; } ;


 scalar_t__ F_UNLCK ;
 struct nfscllock* LIST_FIRST (int *) ;
 struct nfscllock* LIST_NEXT (struct nfscllock*,int ) ;
 int nfscl_freelock (struct nfscllock*,int) ;
 int nfscl_insertlock (struct nfscllockowner*,struct nfscllock*,struct nfscllock*,int) ;
 int nfslo_list ;

__attribute__((used)) static int
nfscl_updatelock(struct nfscllockowner *lp, struct nfscllock **new_lopp,
    struct nfscllock **other_lopp, int local)
{
 struct nfscllock *new_lop = *new_lopp;
 struct nfscllock *lop, *tlop, *ilop;
 struct nfscllock *other_lop;
 int unlock = 0, modified = 0;
 u_int64_t tmp;




 if (new_lop->nfslo_type == F_UNLCK)
  unlock = 1;
 ilop = (struct nfscllock *)lp;
 lop = LIST_FIRST(&lp->nfsl_lock);
 while (lop != ((void*)0)) {




     if (lop->nfslo_end >= new_lop->nfslo_first) {
  if (new_lop->nfslo_end < lop->nfslo_first) {





      break;
  }
  if (new_lop->nfslo_type == lop->nfslo_type ||
      (new_lop->nfslo_first <= lop->nfslo_first &&
       new_lop->nfslo_end >= lop->nfslo_end)) {







      if (new_lop->nfslo_type != lop->nfslo_type ||
   new_lop->nfslo_first != lop->nfslo_first ||
   new_lop->nfslo_end != lop->nfslo_end)
   modified = 1;
      if (lop->nfslo_first < new_lop->nfslo_first)
   new_lop->nfslo_first = lop->nfslo_first;
      if (lop->nfslo_end > new_lop->nfslo_end)
   new_lop->nfslo_end = lop->nfslo_end;
      tlop = lop;
      lop = LIST_NEXT(lop, nfslo_list);
      nfscl_freelock(tlop, local);
      continue;
  }





  if (new_lop->nfslo_first <= lop->nfslo_first) {







      if (lop->nfslo_first != new_lop->nfslo_end) {
   lop->nfslo_first = new_lop->nfslo_end;
   modified = 1;
      }
      break;
  }
  if (new_lop->nfslo_end >= lop->nfslo_end) {
      if (lop->nfslo_end != new_lop->nfslo_first) {
   lop->nfslo_end = new_lop->nfslo_first;
   modified = 1;
      }
      ilop = lop;
      lop = LIST_NEXT(lop, nfslo_list);
      continue;
  }
  tmp = new_lop->nfslo_first;
  if (unlock) {
      other_lop = new_lop;
      *new_lopp = ((void*)0);
  } else {
      other_lop = *other_lopp;
      *other_lopp = ((void*)0);
  }
  other_lop->nfslo_first = new_lop->nfslo_end;
  other_lop->nfslo_end = lop->nfslo_end;
  other_lop->nfslo_type = lop->nfslo_type;
  lop->nfslo_end = tmp;
  nfscl_insertlock(lp, other_lop, lop, local);
  ilop = lop;
  modified = 1;
  break;
     }
     ilop = lop;
     lop = LIST_NEXT(lop, nfslo_list);
     if (lop == ((void*)0))
  break;
 }




 if (!unlock) {
  nfscl_insertlock(lp, new_lop, ilop, local);
  *new_lopp = ((void*)0);
  modified = 1;
 }
 return (modified);
}
