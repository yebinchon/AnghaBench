
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* vm_object_t ;
struct vnode {scalar_t__ v_type; scalar_t__ v_writecount; } ;
struct TYPE_8__ {int * swp_tmpfs; } ;
struct TYPE_9__ {TYPE_1__ swp; } ;
struct TYPE_10__ {TYPE_2__ un_pager; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int OBJ_TMPFS ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VM_OBJECT_WLOCK (TYPE_3__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_3__*) ;
 scalar_t__ VREG ;
 int vm_object_clear_flag (TYPE_3__*,int ) ;

void
tmpfs_destroy_vobject(struct vnode *vp, vm_object_t obj)
{

 ASSERT_VOP_ELOCKED(vp, "tmpfs_destroy_vobject");
 if (vp->v_type != VREG || obj == ((void*)0))
  return;

 VM_OBJECT_WLOCK(obj);
 VI_LOCK(vp);
 vm_object_clear_flag(obj, OBJ_TMPFS);
 obj->un_pager.swp.swp_tmpfs = ((void*)0);
 if (vp->v_writecount < 0)
  vp->v_writecount = 0;
 VI_UNLOCK(vp);
 VM_OBJECT_WUNLOCK(obj);
}
