
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_mount; int v_iflag; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsexstuff {int dummy; } ;
struct nameidata {struct vnode* ni_vp; struct vnode* ni_dvp; int ni_cnd; } ;


 int EEXIST ;
 int EPERM ;
 int EXDEV ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int NFSEXITCODE (int) ;
 int NFSVOPLOCK (struct vnode*,int) ;
 int NFSVOPUNLOCK (struct vnode*,int ) ;
 int VI_DOOMED ;
 int VOP_LINK (struct vnode*,struct vnode*,int *) ;
 int nfsvno_relpathbuf (struct nameidata*) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
nfsvno_link(struct nameidata *ndp, struct vnode *vp, struct ucred *cred,
    struct thread *p, struct nfsexstuff *exp)
{
 struct vnode *xp;
 int error = 0;

 xp = ndp->ni_vp;
 if (xp != ((void*)0)) {
  error = EEXIST;
 } else {
  xp = ndp->ni_dvp;
  if (vp->v_mount != xp->v_mount)
   error = EXDEV;
 }
 if (!error) {
  NFSVOPLOCK(vp, LK_EXCLUSIVE | LK_RETRY);
  if ((vp->v_iflag & VI_DOOMED) == 0)
   error = VOP_LINK(ndp->ni_dvp, vp, &ndp->ni_cnd);
  else
   error = EPERM;
  if (ndp->ni_dvp == vp)
   vrele(ndp->ni_dvp);
  else
   vput(ndp->ni_dvp);
  NFSVOPUNLOCK(vp, 0);
 } else {
  if (ndp->ni_dvp == ndp->ni_vp)
   vrele(ndp->ni_dvp);
  else
   vput(ndp->ni_dvp);
  if (ndp->ni_vp)
   vrele(ndp->ni_vp);
 }
 nfsvno_relpathbuf(ndp);
 NFSEXITCODE(error);
 return (error);
}
