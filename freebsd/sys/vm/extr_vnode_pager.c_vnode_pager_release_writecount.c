
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_3__* vm_object_t ;
struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct TYPE_8__ {scalar_t__ writemappings; } ;
struct TYPE_9__ {TYPE_1__ vnp; } ;
struct TYPE_10__ {scalar_t__ type; struct vnode* handle; TYPE_2__ un_pager; } ;


 int LK_RETRY ;
 int LK_SHARED ;
 scalar_t__ OBJT_VNODE ;
 int VM_OBJECT_WLOCK (TYPE_3__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_3__*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int vdrop (struct vnode*) ;
 int vhold (struct vnode*) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int ) ;
 int vnode_pager_update_writecount (TYPE_3__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
vnode_pager_release_writecount(vm_object_t object, vm_offset_t start,
    vm_offset_t end)
{
 struct vnode *vp;
 struct mount *mp;
 vm_offset_t inc;

 VM_OBJECT_WLOCK(object);





 if (object->type != OBJT_VNODE) {
  VM_OBJECT_WUNLOCK(object);
  return;
 }





 inc = end - start;
 if (object->un_pager.vnp.writemappings != inc) {
  object->un_pager.vnp.writemappings -= inc;
  VM_OBJECT_WUNLOCK(object);
  return;
 }

 vp = object->handle;
 vhold(vp);
 VM_OBJECT_WUNLOCK(object);
 mp = ((void*)0);
 vn_start_write(vp, &mp, V_WAIT);
 vn_lock(vp, LK_SHARED | LK_RETRY);







 vnode_pager_update_writecount(object, end, start);
 VOP_UNLOCK(vp, 0);
 vdrop(vp);
 if (mp != ((void*)0))
  vn_finished_write(mp);
}
