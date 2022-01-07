
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_fsync_args {int a_waitfor; struct vnode* a_vp; } ;
struct TYPE_2__ {scalar_t__ bv_cnt; } ;
struct bufobj {scalar_t__ bo_numoutput; TYPE_1__ bo_dirty; } ;
struct vnode {scalar_t__ v_type; struct bufobj v_bufobj; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_UNLOCK (struct bufobj*) ;
 scalar_t__ DOINGSOFTDEP (struct vnode*) ;
 int MNT_WAIT ;
 scalar_t__ VDIR ;
 scalar_t__ VREG ;
 int ffs_syncvnode (struct vnode*,int ,int ) ;
 int softdep_fsync (struct vnode*) ;

__attribute__((used)) static int
ffs_fsync(struct vop_fsync_args *ap)
{
 struct vnode *vp;
 struct bufobj *bo;
 int error;

 vp = ap->a_vp;
 bo = &vp->v_bufobj;
retry:
 error = ffs_syncvnode(vp, ap->a_waitfor, 0);
 if (error)
  return (error);
 if (ap->a_waitfor == MNT_WAIT && DOINGSOFTDEP(vp)) {
  error = softdep_fsync(vp);
  if (error)
   return (error);






  BO_LOCK(bo);
  if ((vp->v_type == VREG || vp->v_type == VDIR) &&
      (bo->bo_numoutput > 0 || bo->bo_dirty.bv_cnt > 0)) {
   BO_UNLOCK(bo);
   goto retry;
  }
  BO_UNLOCK(bo);
 }
 return (0);
}
