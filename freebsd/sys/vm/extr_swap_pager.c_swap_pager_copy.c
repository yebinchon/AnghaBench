
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_object_t ;
struct TYPE_13__ {int type; int size; int * handle; } ;


 int NOBJLIST (int *) ;
 int OBJT_DEFAULT ;
 int TAILQ_REMOVE (int ,TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_1__*) ;
 int VM_OBJECT_WLOCK (TYPE_1__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_1__*) ;
 int pager_object_list ;
 int sw_alloc_sx ;
 int swp_pager_meta_free_all (TYPE_1__*) ;
 int swp_pager_meta_transfer (TYPE_1__*,TYPE_1__*,int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vm_object_pip_add (TYPE_1__*,int) ;
 int vm_object_pip_wakeup (TYPE_1__*) ;

void
swap_pager_copy(vm_object_t srcobject, vm_object_t dstobject,
    vm_pindex_t offset, int destroysource)
{

 VM_OBJECT_ASSERT_WLOCKED(srcobject);
 VM_OBJECT_ASSERT_WLOCKED(dstobject);





 if (destroysource && srcobject->handle != ((void*)0)) {
  vm_object_pip_add(srcobject, 1);
  VM_OBJECT_WUNLOCK(srcobject);
  vm_object_pip_add(dstobject, 1);
  VM_OBJECT_WUNLOCK(dstobject);
  sx_xlock(&sw_alloc_sx);
  TAILQ_REMOVE(NOBJLIST(srcobject->handle), srcobject,
      pager_object_list);
  sx_xunlock(&sw_alloc_sx);
  VM_OBJECT_WLOCK(dstobject);
  vm_object_pip_wakeup(dstobject);
  VM_OBJECT_WLOCK(srcobject);
  vm_object_pip_wakeup(srcobject);
 }




 swp_pager_meta_transfer(srcobject, dstobject, offset, dstobject->size);







 if (destroysource) {
  swp_pager_meta_free_all(srcobject);






  srcobject->type = OBJT_DEFAULT;
 }
}
