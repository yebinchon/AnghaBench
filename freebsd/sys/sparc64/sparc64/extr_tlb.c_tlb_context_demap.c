
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmap {int* pm_context; int pm_active; } ;
typedef int register_t ;


 int ASI_DMMU_DEMAP ;
 int ASI_IMMU_DEMAP ;
 scalar_t__ CPU_ISSET (int ,int *) ;
 int KASSERT (int,char*) ;
 int KERNBASE ;
 int PCPU_GET (int ) ;
 int PMAP_STATS_INC (int ) ;
 int TLB_DEMAP_CONTEXT ;
 int TLB_DEMAP_PRIMARY ;
 int cpuid ;
 size_t curcpu ;
 int flush (int ) ;
 int intr_disable () ;
 int intr_restore (int ) ;
 void* ipi_tlb_context_demap (struct pmap*) ;
 int ipi_wait (void*) ;
 int stxa (int,int ,int ) ;
 int tlb_ncontext_demap ;

void
tlb_context_demap(struct pmap *pm)
{
 void *cookie;
 register_t s;
 PMAP_STATS_INC(tlb_ncontext_demap);
 cookie = ipi_tlb_context_demap(pm);
 s = intr_disable();
 if (CPU_ISSET(PCPU_GET(cpuid), &pm->pm_active)) {
  KASSERT(pm->pm_context[curcpu] != -1,
      ("tlb_context_demap: inactive pmap?"));
  stxa(TLB_DEMAP_PRIMARY | TLB_DEMAP_CONTEXT, ASI_DMMU_DEMAP, 0);
  stxa(TLB_DEMAP_PRIMARY | TLB_DEMAP_CONTEXT, ASI_IMMU_DEMAP, 0);
  flush(KERNBASE);
 }
 intr_restore(s);
 ipi_wait(cookie);
}
