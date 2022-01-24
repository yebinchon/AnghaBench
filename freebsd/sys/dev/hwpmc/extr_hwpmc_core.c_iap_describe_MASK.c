#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pmc_info {int /*<<< orphan*/  pm_enabled; int /*<<< orphan*/  pm_class; int /*<<< orphan*/  pm_name; } ;
struct pmc_hw {int phw_state; struct pmc* phw_pmc; } ;
struct pmc {int dummy; } ;
typedef  int /*<<< orphan*/  iap_name ;
struct TYPE_2__ {struct pmc_hw* pc_corepmcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PMC_CLASS_IAP ; 
 int PMC_NAME_MAX ; 
 int PMC_PHW_FLAG_IS_ENABLED ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_1__** core_pcpu ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC2(int cpu, int ri, struct pmc_info *pi, struct pmc **ppmc)
{
	int error;
	struct pmc_hw *phw;
	char iap_name[PMC_NAME_MAX];

	phw = &core_pcpu[cpu]->pc_corepmcs[ri];

	(void) FUNC1(iap_name, sizeof(iap_name), "IAP-%d", ri);
	if ((error = FUNC0(iap_name, pi->pm_name, PMC_NAME_MAX,
	    NULL)) != 0)
		return (error);

	pi->pm_class = PMC_CLASS_IAP;

	if (phw->phw_state & PMC_PHW_FLAG_IS_ENABLED) {
		pi->pm_enabled = TRUE;
		*ppmc          = phw->phw_pmc;
	} else {
		pi->pm_enabled = FALSE;
		*ppmc          = NULL;
	}

	return (0);
}