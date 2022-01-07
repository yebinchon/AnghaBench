
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef scalar_t__ uint64_t ;
struct nfslockfile {int lf_locallock; } ;
struct nfslockconflict {int dummy; } ;
struct nfslock {scalar_t__ lo_end; scalar_t__ lo_first; int lo_flags; } ;
typedef int NFSPROC_T ;


 struct nfslock* LIST_FIRST (int *) ;
 struct nfslock* LIST_NEXT (struct nfslock*,int ) ;
 int NFSEXITCODE (int) ;
 int NFSLCK_UNLOCK ;
 int lo_lckowner ;
 int nfsrv_dolocal (int ,struct nfslockfile*,int,int ,scalar_t__,scalar_t__,struct nfslockconflict*,int *) ;

__attribute__((used)) static int
nfsrv_locallock(vnode_t vp, struct nfslockfile *lfp, int flags,
    uint64_t first, uint64_t end, struct nfslockconflict *cfp, NFSPROC_T *p)
{
 struct nfslock *lop, *nlop;
 int error = 0;


 lop = LIST_FIRST(&lfp->lf_locallock);
 while (first < end && lop != ((void*)0)) {
  nlop = LIST_NEXT(lop, lo_lckowner);
  if (first >= lop->lo_end) {

   lop = nlop;
  } else if (first < lop->lo_first) {

   if (end <= lop->lo_first) {

    error = nfsrv_dolocal(vp, lfp, flags,
        NFSLCK_UNLOCK, first, end, cfp, p);
    if (error != 0)
     break;
    first = end;
   } else {

    error = nfsrv_dolocal(vp, lfp, flags,
        NFSLCK_UNLOCK, first, lop->lo_first, cfp,
        p);
    if (error != 0)
     break;
    first = lop->lo_first;
   }
  } else {

   if (end <= lop->lo_end) {

    error = nfsrv_dolocal(vp, lfp, flags,
        lop->lo_flags, first, end, cfp, p);
    if (error != 0)
     break;
    first = end;
   } else {

    error = nfsrv_dolocal(vp, lfp, flags,
        lop->lo_flags, first, lop->lo_end, cfp, p);
    if (error != 0)
     break;
    first = lop->lo_end;
    lop = nlop;
   }
  }
 }
 if (first < end && error == 0)

  error = nfsrv_dolocal(vp, lfp, flags, NFSLCK_UNLOCK, first,
      end, cfp, p);

 NFSEXITCODE(error);
 return (error);
}
