
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmspace {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct pmap {int* pm_context; int pm_tsb; int pm_active; } ;
struct TYPE_2__ {struct vmspace* p_vmspace; } ;


 int AA_DMMU_PCXR ;
 int AA_DMMU_TSB ;
 int AA_IMMU_TSB ;
 int ASI_DMMU ;
 int ASI_IMMU ;
 int CPU_SET (int,int *) ;
 int CPU_SET_ATOMIC (int,int *) ;
 int KERNBASE ;
 int PCPU_GET (int ) ;
 scalar_t__ PCPU_PTR (int ) ;
 int PCPU_SET (int ,...) ;
 int TLB_CXR_PGSZ_MASK ;
 int atomic_store_acq_ptr (uintptr_t*,uintptr_t) ;
 int cpuid ;
 int critical_enter () ;
 int critical_exit () ;
 size_t curcpu ;
 int flush (int ) ;
 int ldxa (int ,int ) ;
 int pmap ;
 int stxa (int ,int ,int) ;
 int tlb_ctx ;
 int tlb_ctx_max ;
 int tlb_ctx_min ;
 int tlb_flush_user () ;
 struct pmap* vmspace_pmap (struct vmspace*) ;

void
pmap_activate(struct thread *td)
{
 struct vmspace *vm;
 struct pmap *pm;
 int context;

 critical_enter();
 vm = td->td_proc->p_vmspace;
 pm = vmspace_pmap(vm);

 context = PCPU_GET(tlb_ctx);
 if (context == PCPU_GET(tlb_ctx_max)) {
  tlb_flush_user();
  context = PCPU_GET(tlb_ctx_min);
 }
 PCPU_SET(tlb_ctx, context + 1);

 pm->pm_context[curcpu] = context;




 CPU_SET(PCPU_GET(cpuid), &pm->pm_active);
 PCPU_SET(pmap, pm);


 stxa(AA_DMMU_TSB, ASI_DMMU, pm->pm_tsb);
 stxa(AA_IMMU_TSB, ASI_IMMU, pm->pm_tsb);
 stxa(AA_DMMU_PCXR, ASI_DMMU, (ldxa(AA_DMMU_PCXR, ASI_DMMU) &
     TLB_CXR_PGSZ_MASK) | context);
 flush(KERNBASE);
 critical_exit();
}
