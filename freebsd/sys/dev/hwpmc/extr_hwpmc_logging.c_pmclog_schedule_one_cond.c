
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmclog_buffer {scalar_t__ plb_ptr; scalar_t__ plb_base; } ;
struct pmc_owner {struct pmclog_buffer** po_curbuf; } ;


 int PMC_CALL_HOOK_UNLOCKED (int ,int ,int *) ;
 scalar_t__ PMC_CPU_HAS_SAMPLES (int) ;
 int PMC_FN_DO_SAMPLES ;
 int curcpu ;
 int curthread ;
 int pmclog_schedule_io (struct pmc_owner*,int) ;
 int spinlock_enter () ;
 int spinlock_exit () ;

__attribute__((used)) static void
pmclog_schedule_one_cond(struct pmc_owner *po)
{
 struct pmclog_buffer *plb;
 int cpu;

 spinlock_enter();
 cpu = curcpu;

 if (PMC_CPU_HAS_SAMPLES(cpu))
  PMC_CALL_HOOK_UNLOCKED(curthread, PMC_FN_DO_SAMPLES, ((void*)0));

 plb = po->po_curbuf[cpu];
 if (plb && plb->plb_ptr != plb->plb_base)
  pmclog_schedule_io(po, 1);
 spinlock_exit();
}
