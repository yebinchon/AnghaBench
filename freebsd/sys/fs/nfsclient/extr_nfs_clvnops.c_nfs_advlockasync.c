
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_quad_t ;
struct vop_advlockasync_args {struct vnode* a_vp; } ;
struct vnode {int v_lockf; int v_mount; } ;
struct TYPE_4__ {int nm_flag; } ;
struct TYPE_3__ {int n_size; } ;


 int EOPNOTSUPP ;
 int LK_SHARED ;
 int NFSMNT_NOLOCKD ;
 int NFSVOPLOCK (struct vnode*,int ) ;
 int NFSVOPUNLOCK (struct vnode*,int ) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 TYPE_2__* VFSTONFS (int ) ;
 TYPE_1__* VTONFS (struct vnode*) ;
 int lf_advlockasync (struct vop_advlockasync_args*,int *,int ) ;

__attribute__((used)) static int
nfs_advlockasync(struct vop_advlockasync_args *ap)
{
 struct vnode *vp = ap->a_vp;
 u_quad_t size;
 int error;

 if (NFS_ISV4(vp))
  return (EOPNOTSUPP);
 error = NFSVOPLOCK(vp, LK_SHARED);
 if (error)
  return (error);
 if ((VFSTONFS(vp->v_mount)->nm_flag & NFSMNT_NOLOCKD) != 0) {
  size = VTONFS(vp)->n_size;
  NFSVOPUNLOCK(vp, 0);
  error = lf_advlockasync(ap, &(vp->v_lockf), size);
 } else {
  NFSVOPUNLOCK(vp, 0);
  error = EOPNOTSUPP;
 }
 return (error);
}
