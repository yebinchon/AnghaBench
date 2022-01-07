
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_pindex_t ;
typedef int vm_page_t ;
typedef int vm_object_t ;


 int MPASS (int) ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int vm_fault_populate_check_page (int ) ;
 int vm_page_deactivate (int ) ;
 int vm_page_lock (int ) ;
 int vm_page_lookup (int ,scalar_t__) ;
 int vm_page_next (int ) ;
 int vm_page_unlock (int ) ;
 int vm_page_xunbusy (int ) ;

__attribute__((used)) static void
vm_fault_populate_cleanup(vm_object_t object, vm_pindex_t first,
    vm_pindex_t last)
{
 vm_page_t m;
 vm_pindex_t pidx;

 VM_OBJECT_ASSERT_WLOCKED(object);
 MPASS(first <= last);
 for (pidx = first, m = vm_page_lookup(object, pidx);
     pidx <= last; pidx++, m = vm_page_next(m)) {
  vm_fault_populate_check_page(m);
  vm_page_lock(m);
  vm_page_deactivate(m);
  vm_page_unlock(m);
  vm_page_xunbusy(m);
 }
}
