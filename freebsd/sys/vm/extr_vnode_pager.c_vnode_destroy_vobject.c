
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bo_flag; } ;
struct vnode {struct vm_object* v_object; TYPE_1__ v_bufobj; } ;
struct vm_object {scalar_t__ type; scalar_t__ ref_count; int flags; struct vnode* handle; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int BO_DEAD ;
 int BO_LOCK (TYPE_1__*) ;
 int BO_UNLOCK (TYPE_1__*) ;
 int KASSERT (int ,char*) ;
 int MPASS (int) ;
 int OBJPC_SYNC ;
 scalar_t__ OBJT_VNODE ;
 int OBJ_DEAD ;
 int VM_OBJECT_WLOCK (struct vm_object*) ;
 int VM_OBJECT_WUNLOCK (struct vm_object*) ;
 int V_SAVE ;
 int umtx_shm_object_terminated (struct vm_object*) ;
 int vinvalbuf (struct vnode*,int ,int ,int ) ;
 int vm_object_page_clean (struct vm_object*,int ,int ,int ) ;
 int vm_object_set_flag (struct vm_object*,int) ;
 int vm_object_terminate (struct vm_object*) ;
 int vm_pager_deallocate (struct vm_object*) ;

void
vnode_destroy_vobject(struct vnode *vp)
{
 struct vm_object *obj;

 obj = vp->v_object;
 if (obj == ((void*)0) || obj->handle != vp)
  return;
 ASSERT_VOP_ELOCKED(vp, "vnode_destroy_vobject");
 VM_OBJECT_WLOCK(obj);
 MPASS(obj->type == OBJT_VNODE);
 umtx_shm_object_terminated(obj);
 if (obj->ref_count == 0) {



  if ((obj->flags & OBJ_DEAD) == 0) {
   vm_object_set_flag(obj, OBJ_DEAD);




   vm_object_page_clean(obj, 0, 0, OBJPC_SYNC);
   VM_OBJECT_WUNLOCK(obj);

   vinvalbuf(vp, V_SAVE, 0, 0);

   BO_LOCK(&vp->v_bufobj);
   vp->v_bufobj.bo_flag |= BO_DEAD;
   BO_UNLOCK(&vp->v_bufobj);

   VM_OBJECT_WLOCK(obj);
   vm_object_terminate(obj);
  } else {






   vp->v_object = ((void*)0);
   VM_OBJECT_WUNLOCK(obj);
  }
 } else {



  vm_pager_deallocate(obj);
  VM_OBJECT_WUNLOCK(obj);
 }
 KASSERT(vp->v_object == ((void*)0), ("vp %p obj %p", vp, vp->v_object));
}
