
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int vm_object_t ;
typedef scalar_t__ daddr_t ;


 int KASSERT (int,char*) ;
 scalar_t__ SWAPBLK_NONE ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 scalar_t__ swp_pager_meta_build (int ,int ,scalar_t__) ;
 scalar_t__ swp_pager_meta_ctl (int ,int ,int ) ;
 int vm_object_pip_add (int ,int) ;
 int vm_object_pip_wakeup (int ) ;

__attribute__((used)) static bool
swp_pager_xfer_source(vm_object_t srcobject, vm_object_t dstobject,
    vm_pindex_t pindex, daddr_t addr)
{
 daddr_t dstaddr;

 if (swp_pager_meta_ctl(dstobject, pindex, 0) != SWAPBLK_NONE) {

  return (0);
 }





 vm_object_pip_add(srcobject, 1);
 VM_OBJECT_WUNLOCK(srcobject);
 vm_object_pip_add(dstobject, 1);
 dstaddr = swp_pager_meta_build(dstobject, pindex, addr);
 KASSERT(dstaddr == SWAPBLK_NONE,
     ("Unexpected destination swapblk"));
 vm_object_pip_wakeup(dstobject);
 VM_OBJECT_WLOCK(srcobject);
 vm_object_pip_wakeup(srcobject);
 return (1);
}
