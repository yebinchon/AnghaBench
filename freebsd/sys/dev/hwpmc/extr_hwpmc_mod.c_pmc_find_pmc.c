
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pmc_process {TYPE_1__* pp_pmcs; } ;
struct pmc_owner {int dummy; } ;
struct pmc {int pm_flags; struct pmc_owner* pm_owner; } ;
typedef int pmc_id_t ;
struct TYPE_6__ {int td_proc; } ;
struct TYPE_5__ {size_t pmd_npmc; } ;
struct TYPE_4__ {struct pmc* pp_pmc; } ;


 int EINVAL ;
 int ESRCH ;
 int FND ;
 int PMC ;
 int PMCDBG1 (int ,int ,int,char*,int ) ;
 int PMCDBG2 (int ,int ,int,char*,int ,struct pmc*) ;
 int PMC_FLAG_NONE ;
 int PMC_F_ATTACHED_TO_OWNER ;
 int PMC_F_DESCENDANTS ;
 size_t PMC_ID_TO_ROWINDEX (int ) ;
 TYPE_3__* curthread ;
 TYPE_2__* md ;
 struct pmc_owner* pmc_find_owner_descriptor (int ) ;
 struct pmc* pmc_find_pmc_descriptor_in_process (struct pmc_owner*,int ) ;
 struct pmc_process* pmc_find_process_descriptor (int ,int ) ;

__attribute__((used)) static int
pmc_find_pmc(pmc_id_t pmcid, struct pmc **pmc)
{

 struct pmc *pm, *opm;
 struct pmc_owner *po;
 struct pmc_process *pp;

 PMCDBG1(PMC,FND,1, "find-pmc id=%d", pmcid);
 if (PMC_ID_TO_ROWINDEX(pmcid) >= md->pmd_npmc)
  return (EINVAL);

 if ((po = pmc_find_owner_descriptor(curthread->td_proc)) == ((void*)0)) {





  if ((pp = pmc_find_process_descriptor(curthread->td_proc,
      PMC_FLAG_NONE)) == ((void*)0)) {
   return ESRCH;
  } else {
   opm = pp->pp_pmcs[PMC_ID_TO_ROWINDEX(pmcid)].pp_pmc;
   if (opm == ((void*)0))
    return ESRCH;
   if ((opm->pm_flags & (PMC_F_ATTACHED_TO_OWNER|
       PMC_F_DESCENDANTS)) != (PMC_F_ATTACHED_TO_OWNER|
       PMC_F_DESCENDANTS))
    return ESRCH;
   po = opm->pm_owner;
  }
 }

 if ((pm = pmc_find_pmc_descriptor_in_process(po, pmcid)) == ((void*)0))
  return EINVAL;

 PMCDBG2(PMC,FND,2, "find-pmc id=%d -> pmc=%p", pmcid, pm);

 *pmc = pm;
 return 0;
}
