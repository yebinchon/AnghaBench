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
struct pmc_hw {struct pmc* phw_pmc; } ;
struct pmc {int dummy; } ;
typedef  int /*<<< orphan*/  register_t ;
struct TYPE_2__ {struct pmc_hw* pc_ppcpmcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  SPR_970MMCR0 ; 
 int /*<<< orphan*/  SPR_970MMCR1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__** powerpc_pcpu ; 

__attribute__((used)) static int
FUNC4(int cpu, int ri, int config)
{
	struct pmc *pm;
	struct pmc_hw *phw;
	register_t pmc_mmcr;

	phw    = &powerpc_pcpu[cpu]->pc_ppcpmcs[ri];
	pm     = phw->phw_pmc;

	/*
	 * Disable the PMCs.
	 */
	switch (ri) {
	case 0:
	case 1:
		pmc_mmcr = FUNC2(SPR_970MMCR0);
		pmc_mmcr = FUNC0(pmc_mmcr, config, ri);
		FUNC3(SPR_970MMCR0, pmc_mmcr);
		break;
	case 2:
	case 3:
	case 4:
	case 5:
	case 6:
	case 7:
		pmc_mmcr = FUNC2(SPR_970MMCR1);
		pmc_mmcr = FUNC1(pmc_mmcr, config, ri);
		FUNC3(SPR_970MMCR1, pmc_mmcr);
		break;
	}
	return 0;
}