
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct faultstate {struct vnode* vp; TYPE_1__* object; } ;
struct TYPE_2__ {scalar_t__ type; struct vnode* handle; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int KASSERT (int,char*) ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int LK_CANRECURSE ;
 int LK_EXCLUSIVE ;
 int LK_NOWAIT ;
 int LK_RETRY ;
 int LK_SHARED ;
 scalar_t__ OBJT_VNODE ;
 int VOP_ISLOCKED (struct vnode*) ;
 int curthread ;
 int release_page (struct faultstate*) ;
 int unlock_and_deallocate (struct faultstate*) ;
 int unlock_vp (struct faultstate*) ;
 int vdrop (struct vnode*) ;
 int vget (struct vnode*,int,int ) ;
 int vhold (struct vnode*) ;

__attribute__((used)) static int
vm_fault_lock_vnode(struct faultstate *fs)
{
 struct vnode *vp;
 int error, locked;

 if (fs->object->type != OBJT_VNODE)
  return (KERN_SUCCESS);
 vp = fs->object->handle;
 if (vp == fs->vp) {
  ASSERT_VOP_LOCKED(vp, "saved vnode is not locked");
  return (KERN_SUCCESS);
 }





 unlock_vp(fs);

 locked = VOP_ISLOCKED(vp);
 if (locked != LK_EXCLUSIVE)
  locked = LK_SHARED;







 error = vget(vp, locked | LK_CANRECURSE | LK_NOWAIT, curthread);
 if (error == 0) {
  fs->vp = vp;
  return (KERN_SUCCESS);
 }

 vhold(vp);
 release_page(fs);
 unlock_and_deallocate(fs);
 error = vget(vp, locked | LK_RETRY | LK_CANRECURSE, curthread);
 vdrop(vp);
 fs->vp = vp;
 KASSERT(error == 0, ("vm_fault: vget failed %d", error));
 return (KERN_RESOURCE_SHORTAGE);
}
