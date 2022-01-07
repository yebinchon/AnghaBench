
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct vnode {scalar_t__ v_type; scalar_t__ v_mount; scalar_t__ v_mountedhere; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_3__ {int cn_namelen; char* cn_nameptr; } ;
struct nameidata {struct vnode* ni_startdir; struct vnode* ni_dvp; TYPE_1__ ni_cnd; struct vnode* ni_vp; } ;
typedef int fhandle_t ;


 int EEXIST ;
 int EINVAL ;
 int EISDIR ;
 int ENOTDIR ;
 int ENOTEMPTY ;
 int EPERM ;
 int EXDEV ;
 int LK_EXCLUSIVE ;
 int ND_NFSV2 ;
 int ND_NFSV4 ;
 int NFSDEV_MAXMIRRORS ;
 int NFSD_DEBUG (int,char*,...) ;
 int NFSEXITCODE (int) ;
 scalar_t__ NFSVOPLOCK (struct vnode*,int ) ;
 int NFSVOPUNLOCK (struct vnode*,int ) ;
 int PNFS_FILENAME_LEN ;
 scalar_t__ VDIR ;
 int VOP_RENAME (struct vnode*,struct vnode*,TYPE_1__*,struct vnode*,struct vnode*,TYPE_1__*) ;
 int nfsd_recalldelegation (struct vnode*,struct thread*) ;
 int nfsrv_checkremove (struct vnode*,int,struct thread*) ;
 int nfsrv_pnfsremove (struct vnode**,int,char*,int *,struct thread*) ;
 int nfsrv_pnfsremovesetup (struct vnode*,struct thread*,struct vnode**,int*,char*,int *) ;
 int nfsvno_relpathbuf (struct nameidata*) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
nfsvno_rename(struct nameidata *fromndp, struct nameidata *tondp,
    u_int32_t ndstat, u_int32_t ndflag, struct ucred *cred, struct thread *p)
{
 struct vnode *fvp, *tvp, *tdvp, *dsdvp[NFSDEV_MAXMIRRORS];
 int error = 0, mirrorcnt;
 char fname[PNFS_FILENAME_LEN + 1];
 fhandle_t fh;

 dsdvp[0] = ((void*)0);
 fvp = fromndp->ni_vp;
 if (ndstat) {
  vrele(fromndp->ni_dvp);
  vrele(fvp);
  error = ndstat;
  goto out1;
 }
 tdvp = tondp->ni_dvp;
 tvp = tondp->ni_vp;
 if (tvp != ((void*)0)) {
  if (fvp->v_type == VDIR && tvp->v_type != VDIR) {
   error = (ndflag & ND_NFSV2) ? EISDIR : EEXIST;
   goto out;
  } else if (fvp->v_type != VDIR && tvp->v_type == VDIR) {
   error = (ndflag & ND_NFSV2) ? ENOTDIR : EEXIST;
   goto out;
  }
  if (tvp->v_type == VDIR && tvp->v_mountedhere) {
   error = (ndflag & ND_NFSV2) ? ENOTEMPTY : EXDEV;
   goto out;
  }






  if ((tondp->ni_cnd.cn_namelen == 1 &&
       tondp->ni_cnd.cn_nameptr[0] == '.') ||
      (tondp->ni_cnd.cn_namelen == 2 &&
       tondp->ni_cnd.cn_nameptr[0] == '.' &&
       tondp->ni_cnd.cn_nameptr[1] == '.')) {
   error = EINVAL;
   goto out;
  }
 }
 if (fvp->v_type == VDIR && fvp->v_mountedhere) {
  error = (ndflag & ND_NFSV2) ? ENOTEMPTY : EXDEV;
  goto out;
 }
 if (fvp->v_mount != tdvp->v_mount) {
  error = (ndflag & ND_NFSV2) ? ENOTEMPTY : EXDEV;
  goto out;
 }
 if (fvp == tdvp) {
  error = (ndflag & ND_NFSV2) ? ENOTEMPTY : EINVAL;
  goto out;
 }
 if (fvp == tvp) {




  error = -1;
  goto out;
 }
 if (ndflag & ND_NFSV4) {
  if (NFSVOPLOCK(fvp, LK_EXCLUSIVE) == 0) {
   error = nfsrv_checkremove(fvp, 0, p);
   NFSVOPUNLOCK(fvp, 0);
  } else
   error = EPERM;
  if (tvp && !error)
   error = nfsrv_checkremove(tvp, 1, p);
 } else {







  nfsd_recalldelegation(fvp, p);
 }
 if (error == 0 && tvp != ((void*)0)) {
  nfsrv_pnfsremovesetup(tvp, p, dsdvp, &mirrorcnt, fname, &fh);
  NFSD_DEBUG(4, "nfsvno_rename: pnfsremovesetup"
      " dsdvp=%p\n", dsdvp[0]);
 }
out:
 if (!error) {
  error = VOP_RENAME(fromndp->ni_dvp, fromndp->ni_vp,
      &fromndp->ni_cnd, tondp->ni_dvp, tondp->ni_vp,
      &tondp->ni_cnd);
 } else {
  if (tdvp == tvp)
   vrele(tdvp);
  else
   vput(tdvp);
  if (tvp)
   vput(tvp);
  vrele(fromndp->ni_dvp);
  vrele(fvp);
  if (error == -1)
   error = 0;
 }






 if (error == 0 && dsdvp[0] != ((void*)0)) {
  nfsrv_pnfsremove(dsdvp, mirrorcnt, fname, &fh, p);
  NFSD_DEBUG(4, "nfsvno_rename: pnfsremove\n");
 }

 vrele(tondp->ni_startdir);
 nfsvno_relpathbuf(tondp);
out1:
 vrele(fromndp->ni_startdir);
 nfsvno_relpathbuf(fromndp);
 NFSEXITCODE(error);
 return (error);
}
