
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfsstate {int ls_lock; } ;
struct nfslockfile {int lf_locallock; int lf_lock; } ;
struct TYPE_3__ {int * le_prev; } ;
struct nfslock {scalar_t__ lo_first; TYPE_1__ lo_lckfile; struct nfslockfile* lo_lfp; struct nfsstate* lo_stp; } ;
struct TYPE_4__ {int srvlocks; } ;


 struct nfslock* LIST_END (int *) ;
 struct nfslock* LIST_FIRST (int *) ;
 int LIST_INSERT_AFTER (struct nfslock*,struct nfslock*,int ) ;
 int LIST_INSERT_HEAD (int *,struct nfslock*,int ) ;
 struct nfslock* LIST_NEXT (struct nfslock*,int ) ;
 int lo_lckfile ;
 int lo_lckowner ;
 int nfsrv_openpluslock ;
 TYPE_2__ nfsstatsv1 ;

__attribute__((used)) static void
nfsrv_insertlock(struct nfslock *new_lop, struct nfslock *insert_lop,
    struct nfsstate *stp, struct nfslockfile *lfp)
{
 struct nfslock *lop, *nlop;

 new_lop->lo_stp = stp;
 new_lop->lo_lfp = lfp;

 if (stp != ((void*)0)) {

  lop = LIST_FIRST(&lfp->lf_lock);
  if (lop == LIST_END(&lfp->lf_lock) ||
      new_lop->lo_first <= lop->lo_first) {
   LIST_INSERT_HEAD(&lfp->lf_lock, new_lop, lo_lckfile);
  } else {
   nlop = LIST_NEXT(lop, lo_lckfile);
   while (nlop != LIST_END(&lfp->lf_lock) &&
          nlop->lo_first < new_lop->lo_first) {
    lop = nlop;
    nlop = LIST_NEXT(lop, lo_lckfile);
   }
   LIST_INSERT_AFTER(lop, new_lop, lo_lckfile);
  }
 } else {
  new_lop->lo_lckfile.le_prev = ((void*)0);
 }





 if (stp == ((void*)0) && (struct nfslockfile *)insert_lop == lfp)
  LIST_INSERT_HEAD(&lfp->lf_locallock, new_lop, lo_lckowner);
 else if ((struct nfsstate *)insert_lop == stp)
  LIST_INSERT_HEAD(&stp->ls_lock, new_lop, lo_lckowner);
 else
  LIST_INSERT_AFTER(insert_lop, new_lop, lo_lckowner);
 if (stp != ((void*)0)) {
  nfsstatsv1.srvlocks++;
  nfsrv_openpluslock++;
 }
}
