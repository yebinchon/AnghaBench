
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int vm_page_t ;
typedef int vm_ooffset_t ;
typedef int vm_object_t ;


 int OFF_TO_IDX (int ) ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int vm_page_grab_valid (int *,int ,int ,int) ;

__attribute__((used)) static vm_page_t
vm_imgact_hold_page(vm_object_t object, vm_ooffset_t offset)
{
 vm_page_t m;
 vm_pindex_t pindex;

 pindex = OFF_TO_IDX(offset);
 VM_OBJECT_WLOCK(object);
 (void)vm_page_grab_valid(&m, object, pindex,
     VM_ALLOC_NORMAL | VM_ALLOC_NOBUSY | VM_ALLOC_WIRED);
 VM_OBJECT_WUNLOCK(object);
 return (m);
}
