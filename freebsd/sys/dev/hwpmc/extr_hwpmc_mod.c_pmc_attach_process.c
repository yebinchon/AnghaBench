
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct proc* p_pptr; int p_children; int p_comm; int p_pid; } ;
struct pmc {int pm_flags; } ;


 int ATT ;
 int EPERM ;
 int LIST_EMPTY (int *) ;
 struct proc* LIST_FIRST (int *) ;
 struct proc* LIST_NEXT (struct proc*,int ) ;
 int PMCDBG5 (int ,int ,int,char*,struct pmc*,int ,struct proc*,int ,int ) ;
 int PMC_F_DESCENDANTS ;
 int PMC_PP_ENABLE_MSR_ACCESS ;
 int PMC_TO_ROWINDEX (struct pmc*) ;
 int PRC ;
 int SX_XLOCKED ;
 int p_sibling ;
 int pmc_attach_one_process (struct proc*,struct pmc*) ;
 int pmc_detach_process (struct proc*,struct pmc*) ;
 int pmc_sx ;
 int proctree_lock ;
 int sx_assert (int *,int ) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

__attribute__((used)) static int
pmc_attach_process(struct proc *p, struct pmc *pm)
{
 int error;
 struct proc *top;

 sx_assert(&pmc_sx, SX_XLOCKED);

 PMCDBG5(PRC,ATT,1, "attach pm=%p ri=%d proc=%p (%d, %s)", pm,
     PMC_TO_ROWINDEX(pm), p, p->p_pid, p->p_comm);







 if ((pm->pm_flags & PMC_PP_ENABLE_MSR_ACCESS) != 0)
  return EPERM;

 if ((pm->pm_flags & PMC_F_DESCENDANTS) == 0)
  return pmc_attach_one_process(p, pm);






 sx_slock(&proctree_lock);

 top = p;

 for (;;) {
  if ((error = pmc_attach_one_process(p, pm)) != 0)
   break;
  if (!LIST_EMPTY(&p->p_children))
   p = LIST_FIRST(&p->p_children);
  else for (;;) {
   if (p == top)
    goto done;
   if (LIST_NEXT(p, p_sibling)) {
    p = LIST_NEXT(p, p_sibling);
    break;
   }
   p = p->p_pptr;
  }
 }

 if (error)
  (void) pmc_detach_process(top, pm);

 done:
 sx_sunlock(&proctree_lock);
 return error;
}
