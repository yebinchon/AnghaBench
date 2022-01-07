
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_1__* vm_object_t ;
struct vnode {int v_vflag; } ;
struct mount {int dummy; } ;
typedef int boolean_t ;
struct TYPE_8__ {scalar_t__ backing_object_offset; scalar_t__ size; scalar_t__ type; struct vnode* handle; struct TYPE_8__* backing_object; } ;


 void* FALSE ;
 scalar_t__ IDX_TO_OFF (scalar_t__) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int MNT_WAIT ;
 int OBJPC_INVAL ;
 int OBJPC_SYNC ;
 int OBJPR_CLEANONLY ;
 int OBJPR_NOTMAPPED ;
 scalar_t__ OBJT_DEVICE ;
 scalar_t__ OBJT_VNODE ;
 scalar_t__ OFF_TO_IDX (scalar_t__) ;
 scalar_t__ PAGE_MASK ;
 int TRUE ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int VOP_FSYNC (struct vnode*,int ,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VV_NOSYNC ;
 int V_WAIT ;
 scalar_t__ atop (scalar_t__) ;
 int curthread ;
 scalar_t__ old_msync ;
 scalar_t__ vm_object_mightbedirty (TYPE_1__*) ;
 int vm_object_page_clean (TYPE_1__*,scalar_t__,scalar_t__,int) ;
 int vm_object_page_remove (TYPE_1__*,scalar_t__,scalar_t__,int) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int ) ;

boolean_t
vm_object_sync(vm_object_t object, vm_ooffset_t offset, vm_size_t size,
    boolean_t syncio, boolean_t invalidate)
{
 vm_object_t backing_object;
 struct vnode *vp;
 struct mount *mp;
 int error, flags, fsync_after;
 boolean_t res;

 if (object == ((void*)0))
  return (TRUE);
 res = TRUE;
 error = 0;
 VM_OBJECT_WLOCK(object);
 while ((backing_object = object->backing_object) != ((void*)0)) {
  VM_OBJECT_WLOCK(backing_object);
  offset += object->backing_object_offset;
  VM_OBJECT_WUNLOCK(object);
  object = backing_object;
  if (object->size < OFF_TO_IDX(offset + size))
   size = IDX_TO_OFF(object->size) - offset;
 }
 if (object->type == OBJT_VNODE &&
     vm_object_mightbedirty(object) != 0 &&
     ((vp = object->handle)->v_vflag & VV_NOSYNC) == 0) {
  VM_OBJECT_WUNLOCK(object);
  (void) vn_start_write(vp, &mp, V_WAIT);
  vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
  if (syncio && !invalidate && offset == 0 &&
      atop(size) == object->size) {






   flags = 0;
   fsync_after = TRUE;
  } else {
   flags = (syncio || invalidate) ? OBJPC_SYNC : 0;
   flags |= invalidate ? (OBJPC_SYNC | OBJPC_INVAL) : 0;
   fsync_after = FALSE;
  }
  VM_OBJECT_WLOCK(object);
  res = vm_object_page_clean(object, offset, offset + size,
      flags);
  VM_OBJECT_WUNLOCK(object);
  if (fsync_after)
   error = VOP_FSYNC(vp, MNT_WAIT, curthread);
  VOP_UNLOCK(vp, 0);
  vn_finished_write(mp);
  if (error != 0)
   res = FALSE;
  VM_OBJECT_WLOCK(object);
 }
 if ((object->type == OBJT_VNODE ||
      object->type == OBJT_DEVICE) && invalidate) {
  if (object->type == OBJT_DEVICE)





   flags = OBJPR_NOTMAPPED;
  else if (old_msync)
   flags = 0;
  else
   flags = OBJPR_CLEANONLY;
  vm_object_page_remove(object, OFF_TO_IDX(offset),
      OFF_TO_IDX(offset + size + PAGE_MASK), flags);
 }
 VM_OBJECT_WUNLOCK(object);
 return (res);
}
