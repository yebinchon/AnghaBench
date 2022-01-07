
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_ooffset_t ;
typedef TYPE_4__* vm_object_t ;
struct vnode {scalar_t__ v_usecount; int v_vflag; TYPE_4__* v_object; } ;
struct ucred {int dummy; } ;
struct TYPE_14__ {int dr_policy; } ;
struct TYPE_12__ {scalar_t__ writemappings; int vnp_size; } ;
struct TYPE_13__ {TYPE_1__ vnp; } ;
struct TYPE_15__ {int ref_count; int type; void* handle; TYPE_3__ domain; TYPE_2__ un_pager; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int KASSERT (int,char*) ;
 int OBJT_DEAD ;
 int OBJT_VNODE ;
 int OBJ_SIZEVNLOCK ;
 int OFF_TO_IDX (int ) ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VM_OBJECT_WLOCK (TYPE_4__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_4__*) ;
 int VV_VMSIZEVNLOCK ;
 int refcount_acquire (int*) ;
 int refcount_init (int*,int ) ;
 int round_page (int ) ;
 TYPE_4__* vm_object_allocate (int ,int ) ;
 int vm_object_color (TYPE_4__*,int ) ;
 int vm_object_destroy (TYPE_4__*) ;
 int vm_object_set_flag (TYPE_4__*,int ) ;
 int vnode_domainset ;
 int vrefact (struct vnode*) ;

vm_object_t
vnode_pager_alloc(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t offset, struct ucred *cred)
{
 vm_object_t object;
 struct vnode *vp;




 if (handle == ((void*)0))
  return (((void*)0));

 vp = (struct vnode *)handle;
 ASSERT_VOP_LOCKED(vp, "vnode_pager_alloc");
 KASSERT(vp->v_usecount != 0, ("vnode_pager_alloc: no vnode reference"));
retry:
 object = vp->v_object;

 if (object == ((void*)0)) {



  object = vm_object_allocate(OBJT_VNODE,
      OFF_TO_IDX(round_page(size)));

  object->un_pager.vnp.vnp_size = size;
  object->un_pager.vnp.writemappings = 0;
  object->domain.dr_policy = vnode_domainset;
  object->handle = handle;
  if ((vp->v_vflag & VV_VMSIZEVNLOCK) != 0) {
   VM_OBJECT_WLOCK(object);
   vm_object_set_flag(object, OBJ_SIZEVNLOCK);
   VM_OBJECT_WUNLOCK(object);
  }
  VI_LOCK(vp);
  if (vp->v_object != ((void*)0)) {



   VI_UNLOCK(vp);
   VM_OBJECT_WLOCK(object);
   KASSERT(object->ref_count == 1,
       ("leaked ref %p %d", object, object->ref_count));
   object->type = OBJT_DEAD;
   refcount_init(&object->ref_count, 0);
   VM_OBJECT_WUNLOCK(object);
   vm_object_destroy(object);
   goto retry;
  }
  vp->v_object = object;
  VI_UNLOCK(vp);
 } else {
  VM_OBJECT_WLOCK(object);
  refcount_acquire(&object->ref_count);



  VM_OBJECT_WUNLOCK(object);
 }
 vrefact(vp);
 return (object);
}
