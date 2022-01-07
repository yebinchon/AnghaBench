
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; int v_vflag; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsexstuff {int dummy; } ;
struct TYPE_2__ {int cn_flags; } ;
struct nameidata {TYPE_1__ ni_cnd; struct vnode* ni_dvp; struct vnode* ni_vp; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOTDIR ;
 int NFSEXITCODE (int) ;
 int SAVENAME ;
 scalar_t__ VDIR ;
 int VOP_RMDIR (struct vnode*,struct vnode*,TYPE_1__*) ;
 int VV_ROOT ;
 int nfsvno_relpathbuf (struct nameidata*) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
nfsvno_rmdirsub(struct nameidata *ndp, int is_v4, struct ucred *cred,
    struct thread *p, struct nfsexstuff *exp)
{
 struct vnode *vp;
 int error = 0;

 vp = ndp->ni_vp;
 if (vp->v_type != VDIR) {
  error = ENOTDIR;
  goto out;
 }



 if (ndp->ni_dvp == vp) {
  error = EINVAL;
  goto out;
 }



 if (vp->v_vflag & VV_ROOT)
  error = EBUSY;
out:
 if (!error)
  error = VOP_RMDIR(ndp->ni_dvp, vp, &ndp->ni_cnd);
 if (ndp->ni_dvp == vp)
  vrele(ndp->ni_dvp);
 else
  vput(ndp->ni_dvp);
 vput(vp);
 if ((ndp->ni_cnd.cn_flags & SAVENAME) != 0)
  nfsvno_relpathbuf(ndp);
 NFSEXITCODE(error);
 return (error);
}
