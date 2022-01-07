
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int * vm_object_t ;
struct vnode {int * v_object; } ;


 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int vm_object_page_remove (int *,int ,int ,int ) ;

void
vn_pages_remove(struct vnode *vp, vm_pindex_t start, vm_pindex_t end)
{
 vm_object_t object;

 if ((object = vp->v_object) == ((void*)0))
  return;
 VM_OBJECT_WLOCK(object);
 vm_object_page_remove(object, start, end, 0);
 VM_OBJECT_WUNLOCK(object);
}
