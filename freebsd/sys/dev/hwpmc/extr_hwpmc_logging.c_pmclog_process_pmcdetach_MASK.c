#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pmclog_pmcdetach {int dummy; } ;
struct pmc_owner {int dummy; } ;
struct pmc {int /*<<< orphan*/  pm_id; struct pmc_owner* pm_owner; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATT ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct pmc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PMCDETACH ; 
 int /*<<< orphan*/  FUNC1 (struct pmc_owner*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pmc_owner*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(struct pmc *pm, pid_t pid)
{
	struct pmc_owner *po;

	FUNC0(LOG,ATT,1,"!pm=%p pid=%d", pm, pid);

	po = pm->pm_owner;

	FUNC3(po, PMCDETACH, sizeof(struct pmclog_pmcdetach));
	FUNC2(pm->pm_id);
	FUNC2(pid);
	FUNC1(po);
}