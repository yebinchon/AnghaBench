
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_long ;
struct pmap {int* pm_context; int pm_active; } ;
typedef int register_t ;


 int ASI_DMMU_DEMAP ;
 int ASI_IMMU_DEMAP ;
 scalar_t__ CPU_ISSET (int ,int *) ;
 int KASSERT (int,char*) ;
 int KERNBASE ;
 int PCPU_GET (int ) ;
 int PMAP_STATS_INC (int ) ;
 int TLB_DEMAP_NUCLEUS ;
 int TLB_DEMAP_PAGE ;
 int TLB_DEMAP_PRIMARY ;
 int TLB_DEMAP_VA (int ) ;
 int cpuid ;
 size_t curcpu ;
 int flush (int ) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 void* ipi_tlb_page_demap (struct pmap*,int ) ;
 int ipi_wait (void*) ;
 struct pmap* kernel_pmap ;
 int stxa (int,int ,int ) ;
 int tlb_npage_demap ;

void
tlb_page_demap(struct pmap *pm, vm_offset_t va)
{
 u_long flags;
 void *cookie;
 register_t s;

 PMAP_STATS_INC(tlb_npage_demap);
 cookie = ipi_tlb_page_demap(pm, va);
 s = intr_disable();
 if (CPU_ISSET(PCPU_GET(cpuid), &pm->pm_active)) {
  KASSERT(pm->pm_context[curcpu] != -1,
      ("tlb_page_demap: inactive pmap?"));
  if (pm == kernel_pmap)
   flags = TLB_DEMAP_NUCLEUS | TLB_DEMAP_PAGE;
  else
   flags = TLB_DEMAP_PRIMARY | TLB_DEMAP_PAGE;

  stxa(TLB_DEMAP_VA(va) | flags, ASI_DMMU_DEMAP, 0);
  stxa(TLB_DEMAP_VA(va) | flags, ASI_IMMU_DEMAP, 0);
  flush(KERNBASE);
 }
 intr_restore(s);
 ipi_wait(cookie);
}
