
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct vm_domain {int dummy; } ;
struct TYPE_2__ {int v_page_count; } ;


 int M_WAITOK ;
 scalar_t__ PAGE_SIZE ;
 int PHYS_TO_VM_PAGE (int ) ;
 int VM_PROT_RW ;
 int kernel_arena ;
 int kernel_pmap ;
 int pmap_change_prot (scalar_t__,scalar_t__,int ) ;
 int pmap_kextract (scalar_t__) ;
 int pmap_remove (int ,scalar_t__,scalar_t__) ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ trunc_page (scalar_t__) ;
 TYPE_1__ vm_cnt ;
 int vm_domain_free_lock (struct vm_domain*) ;
 int vm_domain_free_unlock (struct vm_domain*) ;
 int vm_domain_freecnt_inc (struct vm_domain*,int) ;
 struct vm_domain* vm_pagequeue_domain (int ) ;
 int vm_phys_free_pages (int ,int ) ;
 int vmem_add (int ,scalar_t__,scalar_t__,int ) ;

void
kmem_bootstrap_free(vm_offset_t start, vm_size_t size)
{

 struct vm_domain *vmd;
 vm_offset_t end, va;
 vm_paddr_t pa;
 vm_page_t m;

 end = trunc_page(start + size);
 start = round_page(start);







 pmap_change_prot(start, end - start, VM_PROT_RW);

 for (va = start; va < end; va += PAGE_SIZE) {
  pa = pmap_kextract(va);
  m = PHYS_TO_VM_PAGE(pa);

  vmd = vm_pagequeue_domain(m);
  vm_domain_free_lock(vmd);
  vm_phys_free_pages(m, 0);
  vm_domain_free_unlock(vmd);

  vm_domain_freecnt_inc(vmd, 1);
  vm_cnt.v_page_count++;
 }
 pmap_remove(kernel_pmap, start, end);
 (void)vmem_add(kernel_arena, start, end - start, M_WAITOK);

}
