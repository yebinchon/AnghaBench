
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * vm_object_t ;
struct TYPE_2__ {scalar_t__ bv_cnt; } ;
struct bufobj {scalar_t__ bo_numoutput; TYPE_1__ bo_dirty; } ;
struct vnode {int v_iflag; struct bufobj v_bufobj; int * v_object; } ;
struct mount {int dummy; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_UNLOCK (struct bufobj*) ;
 int EIO ;
 scalar_t__ LK_DOWNGRADE ;
 scalar_t__ LK_EXCLUSIVE ;
 scalar_t__ LK_UPGRADE ;
 int MNT_WAIT ;
 int OBJPC_SYNC ;
 int VI_DOOMED ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 scalar_t__ VOP_ISLOCKED (struct vnode*) ;
 int VOP_LOCK (struct vnode*,scalar_t__) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_NOWAIT ;
 int V_WAIT ;
 int bufobj_wwait (struct bufobj*,int ,int ) ;
 int ffs_syncvnode (struct vnode*,int ,int ) ;
 int panic (char*) ;
 scalar_t__ vm_object_mightbedirty (int *) ;
 int vm_object_page_clean (int *,int ,int ,int ) ;
 int vn_finished_write (struct mount*) ;
 scalar_t__ vn_start_write (struct vnode*,struct mount**,int ) ;

__attribute__((used)) static int
ffs_rawread_sync(struct vnode *vp)
{
 int error;
 int upgraded;
 struct bufobj *bo;
 struct mount *mp;
 vm_object_t obj;


 bo = &vp->v_bufobj;
 BO_LOCK(bo);
 VI_LOCK(vp);
 if (bo->bo_numoutput > 0 ||
     bo->bo_dirty.bv_cnt > 0 ||
     ((obj = vp->v_object) != ((void*)0) &&
      vm_object_mightbedirty(obj))) {
  VI_UNLOCK(vp);
  BO_UNLOCK(bo);

  if (vn_start_write(vp, &mp, V_NOWAIT) != 0) {
   if (VOP_ISLOCKED(vp) != LK_EXCLUSIVE)
    upgraded = 1;
   else
    upgraded = 0;
   VOP_UNLOCK(vp, 0);
   (void) vn_start_write(vp, &mp, V_WAIT);
   VOP_LOCK(vp, LK_EXCLUSIVE);
  } else if (VOP_ISLOCKED(vp) != LK_EXCLUSIVE) {
   upgraded = 1;

   VOP_LOCK(vp, LK_UPGRADE);
  } else
   upgraded = 0;


  VI_LOCK(vp);

  if ((vp->v_iflag & VI_DOOMED) != 0) {
   VI_UNLOCK(vp);
   if (upgraded != 0)
    VOP_LOCK(vp, LK_DOWNGRADE);
   vn_finished_write(mp);
   return (EIO);
  }

  if ((obj = vp->v_object) != ((void*)0) &&
      vm_object_mightbedirty(obj)) {
   VI_UNLOCK(vp);
   VM_OBJECT_WLOCK(obj);
   vm_object_page_clean(obj, 0, 0, OBJPC_SYNC);
   VM_OBJECT_WUNLOCK(obj);
  } else
   VI_UNLOCK(vp);


  BO_LOCK(bo);
  error = bufobj_wwait(&vp->v_bufobj, 0, 0);
  if (error != 0) {

   BO_UNLOCK(bo);
   if (upgraded != 0)
    VOP_LOCK(vp, LK_DOWNGRADE);
   vn_finished_write(mp);
   return (error);
  }

  if (bo->bo_dirty.bv_cnt > 0) {
   BO_UNLOCK(bo);
   if ((error = ffs_syncvnode(vp, MNT_WAIT, 0)) != 0) {
    if (upgraded != 0)
     VOP_LOCK(vp, LK_DOWNGRADE);
    vn_finished_write(mp);
    return (error);
   }
   BO_LOCK(bo);
   if (bo->bo_numoutput > 0 || bo->bo_dirty.bv_cnt > 0)
    panic("ffs_rawread_sync: dirty bufs");
  }
  BO_UNLOCK(bo);
  if (upgraded != 0)
   VOP_LOCK(vp, LK_DOWNGRADE);
  vn_finished_write(mp);
 } else {
  VI_UNLOCK(vp);
  BO_UNLOCK(bo);
 }
 return 0;
}
