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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPR_MMCR0 ; 
 int /*<<< orphan*/  SPR_MMCR1 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__** powerpc_pcpu ; 

__attribute__((used)) static int
FUNC8(int cpu, int ri)
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
		pmc_mmcr = FUNC6(SPR_MMCR0);
		pmc_mmcr = FUNC0(pmc_mmcr, 0);
		FUNC7(SPR_MMCR0, pmc_mmcr);
		break;
	case 1:
		pmc_mmcr = FUNC6(SPR_MMCR0);
		pmc_mmcr = FUNC1(pmc_mmcr, 0);
		FUNC7(SPR_MMCR0, pmc_mmcr);
		break;
	case 2:
		pmc_mmcr = FUNC6(SPR_MMCR1);
		pmc_mmcr = FUNC2(pmc_mmcr, 0);
		FUNC7(SPR_MMCR1, pmc_mmcr);
		break;
	case 3:
		pmc_mmcr = FUNC6(SPR_MMCR0);
		pmc_mmcr = FUNC3(pmc_mmcr, 0);
		FUNC7(SPR_MMCR0, pmc_mmcr);
		break;
	case 4:
		pmc_mmcr = FUNC6(SPR_MMCR1);
		pmc_mmcr = FUNC4(pmc_mmcr, 0);
		FUNC7(SPR_MMCR1, pmc_mmcr);
		break;
	case 5:
		pmc_mmcr = FUNC6(SPR_MMCR1);
		pmc_mmcr = FUNC5(pmc_mmcr, 0);
		FUNC7(SPR_MMCR1, pmc_mmcr);
		break;
	default:
		break;
	}
	return 0;
}