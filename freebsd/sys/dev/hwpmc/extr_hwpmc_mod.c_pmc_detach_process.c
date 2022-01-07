
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct proc* p_pptr; int p_children; int p_comm; int p_pid; } ;
struct pmc {int pm_flags; int pm_targets; } ;


 int ATT ;
 scalar_t__ LIST_EMPTY (int *) ;
 struct proc* LIST_FIRST (int *) ;
 struct proc* LIST_NEXT (struct proc*,int ) ;
 int PMCDBG5 (int ,int ,int,char*,struct pmc*,int ,struct proc*,int ,int ) ;
 int PMC_FLAG_REMOVE ;
 int PMC_F_ATTACH_DONE ;
 int PMC_F_DESCENDANTS ;
 int PMC_TO_ROWINDEX (struct pmc*) ;
 int PRC ;
 int SX_XLOCKED ;
 int p_sibling ;
 int pmc_detach_one_process (struct proc*,struct pmc*,int ) ;
 int pmc_sx ;
 int proctree_lock ;
 int sx_assert (int *,int ) ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

__attribute__((used)) static int
pmc_detach_process(struct proc *p, struct pmc *pm)
{
 struct proc *top;

 sx_assert(&pmc_sx, SX_XLOCKED);

 PMCDBG5(PRC,ATT,1, "detach pm=%p ri=%d proc=%p (%d, %s)", pm,
     PMC_TO_ROWINDEX(pm), p, p->p_pid, p->p_comm);

 if ((pm->pm_flags & PMC_F_DESCENDANTS) == 0)
  return pmc_detach_one_process(p, pm, PMC_FLAG_REMOVE);







 sx_slock(&proctree_lock);

 top = p;

 for (;;) {
  (void) pmc_detach_one_process(p, pm, PMC_FLAG_REMOVE);

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

 done:
 sx_sunlock(&proctree_lock);

 if (LIST_EMPTY(&pm->pm_targets))
  pm->pm_flags &= ~PMC_F_ATTACH_DONE;

 return 0;
}
