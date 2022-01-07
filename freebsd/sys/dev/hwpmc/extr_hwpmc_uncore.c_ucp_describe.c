
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ucp_name ;
struct pmc_info {int pm_enabled; int pm_class; int pm_name; } ;
struct pmc_hw {int phw_state; struct pmc* phw_pmc; } ;
struct pmc {int dummy; } ;
struct TYPE_2__ {struct pmc_hw* pc_uncorepmcs; } ;


 int FALSE ;
 int PMC_CLASS_UCP ;
 int PMC_NAME_MAX ;
 int PMC_PHW_FLAG_IS_ENABLED ;
 int TRUE ;
 int copystr (char*,int ,int,int *) ;
 int snprintf (char*,int,char*,int) ;
 TYPE_1__** uncore_pcpu ;

__attribute__((used)) static int
ucp_describe(int cpu, int ri, struct pmc_info *pi, struct pmc **ppmc)
{
 int error;
 struct pmc_hw *phw;
 char ucp_name[PMC_NAME_MAX];

 phw = &uncore_pcpu[cpu]->pc_uncorepmcs[ri];

 (void) snprintf(ucp_name, sizeof(ucp_name), "UCP-%d", ri);
 if ((error = copystr(ucp_name, pi->pm_name, PMC_NAME_MAX,
     ((void*)0))) != 0)
  return (error);

 pi->pm_class = PMC_CLASS_UCP;

 if (phw->phw_state & PMC_PHW_FLAG_IS_ENABLED) {
  pi->pm_enabled = TRUE;
  *ppmc = phw->phw_pmc;
 } else {
  pi->pm_enabled = FALSE;
  *ppmc = ((void*)0);
 }

 return (0);
}
