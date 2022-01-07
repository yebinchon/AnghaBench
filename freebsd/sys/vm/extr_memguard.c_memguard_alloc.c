
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ u_long ;


 int KERN_SUCCESS ;
 int MG_GUARD_AROUND ;
 int M_NEXTFIT ;
 int M_NOWAIT ;
 int PAGE_SIZE ;
 int VMEM_ALLOC ;
 int kernel_object ;
 int kmem_back (int ,int,scalar_t__,int) ;
 int memguard_arena ;
 int memguard_fail_kva ;
 int memguard_fail_pgs ;
 int memguard_options ;
 scalar_t__ memguard_physlimit ;
 int memguard_succ ;
 int memguard_wasted ;
 scalar_t__ round_page (unsigned long) ;
 unsigned long roundup2 (unsigned long,int) ;
 int trunc_page (int) ;
 unsigned long* v2sizep (int ) ;
 scalar_t__* v2sizev (int ) ;
 int vmem_alloc (int ,scalar_t__,int,int*) ;
 scalar_t__ vmem_size (int ,int ) ;
 int vmem_xfree (int ,int,scalar_t__) ;

void *
memguard_alloc(unsigned long req_size, int flags)
{
 vm_offset_t addr, origaddr;
 u_long size_p, size_v;
 int do_guard, error, rv;

 size_p = round_page(req_size);
 if (size_p == 0)
  return (((void*)0));






 size_v = size_p;
 do_guard = (memguard_options & MG_GUARD_AROUND) != 0;
 if (do_guard)
  size_v += 2 * PAGE_SIZE;







 if (vmem_size(memguard_arena, VMEM_ALLOC) >= memguard_physlimit &&
     req_size < PAGE_SIZE) {
  addr = (vm_offset_t)((void*)0);
  memguard_fail_pgs++;
  goto out;
 }





 error = vmem_alloc(memguard_arena, size_v, M_NEXTFIT | M_NOWAIT,
     &origaddr);
 if (error != 0) {
  memguard_fail_kva++;
  addr = (vm_offset_t)((void*)0);
  goto out;
 }
 addr = origaddr;
 if (do_guard)
  addr += PAGE_SIZE;
 rv = kmem_back(kernel_object, addr, size_p, flags);
 if (rv != KERN_SUCCESS) {
  vmem_xfree(memguard_arena, origaddr, size_v);
  memguard_fail_pgs++;
  addr = (vm_offset_t)((void*)0);
  goto out;
 }
 *v2sizep(trunc_page(addr)) = req_size;
 *v2sizev(trunc_page(addr)) = size_v;
 memguard_succ++;
 if (req_size < PAGE_SIZE) {
  memguard_wasted += (PAGE_SIZE - req_size);
  if (do_guard) {





   req_size = roundup2(req_size, 16);
   addr += (PAGE_SIZE - req_size);
  }
 }
out:
 return ((void *)addr);
}
