
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct vnode {scalar_t__ v_type; } ;
struct thread {int dummy; } ;
struct nfsvattr {scalar_t__ na_filerev; int na_size; int na_mtime; int na_atime; int na_vattr; } ;
struct nfsrv_descript {int nd_flag; int nd_cred; } ;
typedef int nfsattrbit_t ;


 scalar_t__ LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_SHARED ;
 int ND_NFSV4 ;
 int NFSATTRBIT_CHANGE ;
 int NFSATTRBIT_SIZE ;
 int NFSATTRBIT_TIMEACCESS ;
 int NFSATTRBIT_TIMEMODIFY ;
 int NFSD_DEBUG (int,char*,int,int,int ) ;
 int NFSEXITCODE (int) ;
 scalar_t__ NFSISSET_ATTRBIT (int *,int ) ;
 int NFSPROC_GETATTR ;
 scalar_t__ NFSVOPISLOCKED (struct vnode*) ;
 int NFSVOPLOCK (struct vnode*,int) ;
 int NFSVOPUNLOCK (struct vnode*,int ) ;
 int VOP_GETATTR (struct vnode*,int *,int ) ;
 scalar_t__ VREG ;
 scalar_t__ nfsrv_devidcnt ;
 int nfsrv_proxyds (struct vnode*,int ,int ,int ,struct thread*,int ,int *,int *,int *,struct nfsvattr*,int *) ;

int
nfsvno_getattr(struct vnode *vp, struct nfsvattr *nvap,
    struct nfsrv_descript *nd, struct thread *p, int vpislocked,
    nfsattrbit_t *attrbitp)
{
 int error, gotattr, lockedit = 0;
 struct nfsvattr na;

 if (vpislocked == 0) {





  if (NFSVOPISLOCKED(vp) != LK_EXCLUSIVE) {
   lockedit = 1;
   NFSVOPLOCK(vp, LK_SHARED | LK_RETRY);
  }
 }
 gotattr = 0;
 if (vp->v_type == VREG && nfsrv_devidcnt > 0 && (attrbitp == ((void*)0) ||
     (nd->nd_flag & ND_NFSV4) == 0 ||
     NFSISSET_ATTRBIT(attrbitp, NFSATTRBIT_CHANGE) ||
     NFSISSET_ATTRBIT(attrbitp, NFSATTRBIT_SIZE) ||
     NFSISSET_ATTRBIT(attrbitp, NFSATTRBIT_TIMEACCESS) ||
     NFSISSET_ATTRBIT(attrbitp, NFSATTRBIT_TIMEMODIFY))) {
  error = nfsrv_proxyds(vp, 0, 0, nd->nd_cred, p,
      NFSPROC_GETATTR, ((void*)0), ((void*)0), ((void*)0), &na, ((void*)0));
  if (error == 0)
   gotattr = 1;
 }

 error = VOP_GETATTR(vp, &nvap->na_vattr, nd->nd_cred);
 if (lockedit != 0)
  NFSVOPUNLOCK(vp, 0);





 if (gotattr != 0) {
  nvap->na_atime = na.na_atime;
  nvap->na_mtime = na.na_mtime;
  nvap->na_filerev = na.na_filerev;
  nvap->na_size = na.na_size;
 }
 NFSD_DEBUG(4, "nfsvno_getattr: gotattr=%d err=%d chg=%ju\n", gotattr,
     error, (uintmax_t)na.na_filerev);

 NFSEXITCODE(error);
 return (error);
}
