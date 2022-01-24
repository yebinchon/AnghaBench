#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct pmc_hw {struct pmc* phw_pmc; } ;
struct TYPE_4__ {scalar_t__ pm_armv7_evsel; } ;
struct TYPE_5__ {TYPE_1__ pm_armv7; } ;
struct pmc {scalar_t__ pm_overflowcnt; TYPE_2__ pm_md; } ;
struct TYPE_6__ {struct pmc_hw* pc_armv7pmcs; } ;

/* Variables and functions */
 scalar_t__ PMC_EV_CPU_CYCLES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__** armv7_pcpu ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(int cpu, int ri)
{
	struct pmc_hw *phw;
	uint32_t config;
	struct pmc *pm;

	phw    = &armv7_pcpu[cpu]->pc_armv7pmcs[ri];
	pm     = phw->phw_pmc;
	config = pm->pm_md.pm_armv7.pm_armv7_evsel;

	pm->pm_overflowcnt = 0;

	/*
	 * Configure the event selection.
	 */
	if (config != PMC_EV_CPU_CYCLES) {
		FUNC2(ri);
		FUNC3(config);
	} else
		ri = 31;

	/*
	 * Enable the PMC.
	 */
	FUNC1(ri);
	FUNC0(ri);

	return 0;
}