
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_long ;
struct pmap {int* pm_context; int pm_active; } ;
typedef int register_t ;


 int ASI_DMMU_DEMAP ;
 int ASI_IMMU_DEMAP ;
 scalar_t__ CPU_ISSET (int ,int *) ;
 int KASSERT (int,char*) ;
 int KERNBASE ;
 scalar_t__ PAGE_SIZE ;
 int PCPU_GET (int ) ;
 int PMAP_STATS_INC (int ) ;
 int TLB_DEMAP_NUCLEUS ;
 int TLB_DEMAP_PAGE ;
 int TLB_DEMAP_PRIMARY ;
 int TLB_DEMAP_VA (scalar_t__) ;
 int cpuid ;
 size_t curcpu ;
 int flush (int ) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 void* ipi_tlb_range_demap (struct pmap*,scalar_t__,scalar_t__) ;
 int ipi_wait (void*) ;
 struct pmap* kernel_pmap ;
 int stxa (int,int ,int ) ;
 int tlb_nrange_demap ;

void
tlb_range_demap(struct pmap *pm, vm_offset_t start, vm_offset_t end)
{
 vm_offset_t va;
 void *cookie;
 u_long flags;
 register_t s;

 PMAP_STATS_INC(tlb_nrange_demap);
 cookie = ipi_tlb_range_demap(pm, start, end);
 s = intr_disable();
 if (CPU_ISSET(PCPU_GET(cpuid), &pm->pm_active)) {
  KASSERT(pm->pm_context[curcpu] != -1,
      ("tlb_range_demap: inactive pmap?"));
  if (pm == kernel_pmap)
   flags = TLB_DEMAP_NUCLEUS | TLB_DEMAP_PAGE;
  else
   flags = TLB_DEMAP_PRIMARY | TLB_DEMAP_PAGE;

  for (va = start; va < end; va += PAGE_SIZE) {
   stxa(TLB_DEMAP_VA(va) | flags, ASI_DMMU_DEMAP, 0);
   stxa(TLB_DEMAP_VA(va) | flags, ASI_IMMU_DEMAP, 0);
   flush(KERNBASE);
  }
 }
 intr_restore(s);
 ipi_wait(cookie);
}
