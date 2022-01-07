
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmclog_procexit {int dummy; } ;
struct pmc_process {TYPE_2__* pp_pmcs; TYPE_1__* pp_proc; } ;
struct pmc_owner {int dummy; } ;
struct pmc {int pm_id; struct pmc_owner* pm_owner; } ;
struct TYPE_4__ {int pp_pmcval; } ;
struct TYPE_3__ {int p_pid; } ;


 int EXT ;
 int LOG ;
 int PMCDBG3 (int ,int ,int,char*,struct pmc*,int ,int ) ;
 int PMCLOG_DESPATCH (struct pmc_owner*) ;
 int PMCLOG_EMIT32 (int ) ;
 int PMCLOG_EMIT64 (int ) ;
 int PMCLOG_RESERVE (struct pmc_owner*,int ,int) ;
 int PMC_TO_ROWINDEX (struct pmc*) ;
 int PROCEXIT ;

void
pmclog_process_procexit(struct pmc *pm, struct pmc_process *pp)
{
 int ri;
 struct pmc_owner *po;

 ri = PMC_TO_ROWINDEX(pm);
 PMCDBG3(LOG,EXT,1,"pm=%p pid=%d v=%jx", pm, pp->pp_proc->p_pid,
     pp->pp_pmcs[ri].pp_pmcval);

 po = pm->pm_owner;

 PMCLOG_RESERVE(po, PROCEXIT, sizeof(struct pmclog_procexit));
 PMCLOG_EMIT32(pm->pm_id);
 PMCLOG_EMIT32(pp->pp_proc->p_pid);
 PMCLOG_EMIT64(pp->pp_pmcs[ri].pp_pmcval);
 PMCLOG_DESPATCH(po);
}
