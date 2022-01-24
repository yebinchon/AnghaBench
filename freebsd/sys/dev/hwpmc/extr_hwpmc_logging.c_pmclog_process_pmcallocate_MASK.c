#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pmclog_pmcallocatedyn {int dummy; } ;
struct pmclog_pmcallocate {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pm_ev_name; } ;
struct pmc_soft {TYPE_1__ ps_ev; } ;
struct pmc_owner {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pm_reloadcount; } ;
struct pmc {TYPE_2__ pm_sc; int /*<<< orphan*/  pm_flags; int /*<<< orphan*/  pm_event; int /*<<< orphan*/  pm_id; struct pmc_owner* pm_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  PMCALLOCATE ; 
 int /*<<< orphan*/  PMCALLOCATEDYN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct pmc*) ; 
 int /*<<< orphan*/  FUNC1 (struct pmc_owner*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pmc_owner*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ PMC_CLASS_SOFT ; 
 int /*<<< orphan*/  PMC_NAME_MAX ; 
 scalar_t__ FUNC7 (struct pmc*) ; 
 struct pmc_soft* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pmc_soft*) ; 

void
FUNC10(struct pmc *pm)
{
	struct pmc_owner *po;
	struct pmc_soft *ps;

	po = pm->pm_owner;

	FUNC0(LOG,ALL,1, "pm=%p", pm);

	if (FUNC7(pm) == PMC_CLASS_SOFT) {
		FUNC6(po, PMCALLOCATEDYN,
		    sizeof(struct pmclog_pmcallocatedyn));
		FUNC2(pm->pm_id);
		FUNC2(pm->pm_event);
		FUNC2(pm->pm_flags);
		FUNC2(0);
		FUNC3(pm->pm_sc.pm_reloadcount);
		ps = FUNC8(pm->pm_event);
		if (ps != NULL)
			FUNC5(ps->ps_ev.pm_ev_name,PMC_NAME_MAX);
		else
			FUNC4(PMC_NAME_MAX);
		FUNC9(ps);
		FUNC1(po);
	} else {
		FUNC6(po, PMCALLOCATE,
		    sizeof(struct pmclog_pmcallocate));
		FUNC2(pm->pm_id);
		FUNC2(pm->pm_event);
		FUNC2(pm->pm_flags);
		FUNC2(0);
		FUNC3(pm->pm_sc.pm_reloadcount);
		FUNC1(po);
	}
}