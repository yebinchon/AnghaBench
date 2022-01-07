
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct nfsstate {int ls_lock; } ;
struct nfslockfile {int lf_locallock; } ;
struct nfslock {int lo_flags; scalar_t__ lo_end; scalar_t__ lo_first; struct nfslockfile* lo_lfp; struct nfsstate* lo_stp; } ;


 struct nfslock* LIST_FIRST (int *) ;
 struct nfslock* LIST_NEXT (struct nfslock*,int ) ;
 int NFSLCK_UNLOCK ;
 int lo_lckowner ;
 int nfsrv_freenfslock (struct nfslock*) ;
 int nfsrv_insertlock (struct nfslock*,struct nfslock*,struct nfsstate*,struct nfslockfile*) ;
 int panic (char*) ;

__attribute__((used)) static void
nfsrv_updatelock(struct nfsstate *stp, struct nfslock **new_lopp,
    struct nfslock **other_lopp, struct nfslockfile *lfp)
{
 struct nfslock *new_lop = *new_lopp;
 struct nfslock *lop, *tlop, *ilop;
 struct nfslock *other_lop = *other_lopp;
 int unlock = 0, myfile = 0;
 u_int64_t tmp;




 if (new_lop->lo_flags & NFSLCK_UNLOCK)
  unlock = 1;
 if (stp != ((void*)0)) {
  ilop = (struct nfslock *)stp;
  lop = LIST_FIRST(&stp->ls_lock);
 } else {
  ilop = (struct nfslock *)lfp;
  lop = LIST_FIRST(&lfp->lf_locallock);
 }
 while (lop != ((void*)0)) {




     if (lop->lo_lfp == lfp) {
       myfile = 1;
       if (lop->lo_end >= new_lop->lo_first) {
  if (new_lop->lo_end < lop->lo_first) {





   break;
  }
  if (new_lop->lo_flags == lop->lo_flags ||
      (new_lop->lo_first <= lop->lo_first &&
       new_lop->lo_end >= lop->lo_end)) {







   if (lop->lo_first < new_lop->lo_first)
    new_lop->lo_first = lop->lo_first;
   if (lop->lo_end > new_lop->lo_end)
    new_lop->lo_end = lop->lo_end;
   tlop = lop;
   lop = LIST_NEXT(lop, lo_lckowner);
   nfsrv_freenfslock(tlop);
   continue;
  }





  if (new_lop->lo_first <= lop->lo_first) {







   lop->lo_first = new_lop->lo_end;
   break;
  }
  if (new_lop->lo_end >= lop->lo_end) {
   lop->lo_end = new_lop->lo_first;
   ilop = lop;
   lop = LIST_NEXT(lop, lo_lckowner);
   continue;
  }
  tmp = new_lop->lo_first;
  if (other_lop == ((void*)0)) {
   if (!unlock)
    panic("nfsd srv update unlock");
   other_lop = new_lop;
   *new_lopp = ((void*)0);
  }
  other_lop->lo_first = new_lop->lo_end;
  other_lop->lo_end = lop->lo_end;
  other_lop->lo_flags = lop->lo_flags;
  other_lop->lo_stp = stp;
  other_lop->lo_lfp = lfp;
  lop->lo_end = tmp;
  nfsrv_insertlock(other_lop, lop, stp, lfp);
  *other_lopp = ((void*)0);
  ilop = lop;
  break;
       }
     }
     ilop = lop;
     lop = LIST_NEXT(lop, lo_lckowner);
     if (myfile && (lop == ((void*)0) || lop->lo_lfp != lfp))
  break;
 }




 if (!unlock) {
  nfsrv_insertlock(new_lop, ilop, stp, lfp);
  *new_lopp = ((void*)0);
 }
}
