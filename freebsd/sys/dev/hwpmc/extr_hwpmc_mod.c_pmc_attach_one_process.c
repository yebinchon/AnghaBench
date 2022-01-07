
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc {int p_flag; int p_pid; int p_textvp; int p_comm; } ;
struct pmc_process {TYPE_1__* pp_pmcs; } ;
struct pmc {int pm_flags; TYPE_2__* pm_owner; } ;
struct TYPE_4__ {int po_flags; } ;
struct TYPE_3__ {struct pmc* pp_pmc; } ;


 int ATT ;
 int EBUSY ;
 int EEXIST ;
 int ENOMEM ;
 int M_TEMP ;
 int PMCDBG5 (int ,int ,int,char*,struct pmc*,int,struct proc*,int ,int ) ;
 int PMC_FLAG_ALLOCATE ;
 int PMC_F_ATTACHED_TO_OWNER ;
 int PMC_F_ATTACH_DONE ;
 int PMC_F_NEEDS_LOGFILE ;
 scalar_t__ PMC_IS_SAMPLING_MODE (int ) ;
 int PMC_PO_OWNS_LOGFILE ;
 int PMC_TO_MODE (struct pmc*) ;
 int PMC_TO_ROWINDEX (struct pmc*) ;
 int PRC ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_HWPMC ;
 int P_KPROC ;
 int SX_XLOCKED ;
 int free (char*,int ) ;
 char* kernelname ;
 struct pmc_process* pmc_find_process_descriptor (struct proc*,int ) ;
 int pmc_getfilename (int ,char**,char**) ;
 int pmc_link_target_process (struct pmc*,struct pmc_process*) ;
 int pmc_log_process_mappings (TYPE_2__*,struct proc*) ;
 int pmc_sx ;
 int pmclog_process_pmcattach (struct pmc*,int ,char*) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
pmc_attach_one_process(struct proc *p, struct pmc *pm)
{
 int ri, error;
 char *fullpath, *freepath;
 struct pmc_process *pp;

 sx_assert(&pmc_sx, SX_XLOCKED);

 PMCDBG5(PRC,ATT,2, "attach-one pm=%p ri=%d proc=%p (%d, %s)", pm,
     PMC_TO_ROWINDEX(pm), p, p->p_pid, p->p_comm);
 ri = PMC_TO_ROWINDEX(pm);


 PROC_LOCK(p);
 p->p_flag |= P_HWPMC;
 PROC_UNLOCK(p);

 if ((pp = pmc_find_process_descriptor(p, PMC_FLAG_ALLOCATE)) == ((void*)0)) {
  error = ENOMEM;
  goto fail;
 }

 if (pp->pp_pmcs[ri].pp_pmc == pm) {
  error = EEXIST;
  goto fail;
 }

 if (pp->pp_pmcs[ri].pp_pmc != ((void*)0)) {
  error = EBUSY;
  goto fail;
 }

 pmc_link_target_process(pm, pp);

 if (PMC_IS_SAMPLING_MODE(PMC_TO_MODE(pm)) &&
     (pm->pm_flags & PMC_F_ATTACHED_TO_OWNER) == 0)
  pm->pm_flags |= PMC_F_NEEDS_LOGFILE;

 pm->pm_flags |= PMC_F_ATTACH_DONE;


 if (pm->pm_owner->po_flags & PMC_PO_OWNS_LOGFILE) {
  if (p->p_flag & P_KPROC) {
   fullpath = kernelname;
   freepath = ((void*)0);
  } else {
   pmc_getfilename(p->p_textvp, &fullpath, &freepath);
   pmclog_process_pmcattach(pm, p->p_pid, fullpath);
  }
  free(freepath, M_TEMP);
  if (PMC_IS_SAMPLING_MODE(PMC_TO_MODE(pm)))
   pmc_log_process_mappings(pm->pm_owner, p);
 }

 return (0);
 fail:
 PROC_LOCK(p);
 p->p_flag &= ~P_HWPMC;
 PROC_UNLOCK(p);
 return (error);
}
