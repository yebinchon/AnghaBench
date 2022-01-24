#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct pmc_mdep {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* pc_ppcpmcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PMC ; 
 int PSL_PMM ; 
 int /*<<< orphan*/  SPR_MMCR0 ; 
 int /*<<< orphan*/  SPR_MMCR0_FC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__** powerpc_pcpu ; 

__attribute__((used)) static int
FUNC5(struct pmc_mdep *md, int cpu)
{
	uint32_t mmcr0 = FUNC2(SPR_MMCR0);

	FUNC3(FUNC1() & ~PSL_PMM);
	mmcr0 |= SPR_MMCR0_FC;
	FUNC4(SPR_MMCR0, mmcr0);

	FUNC0(powerpc_pcpu[cpu]->pc_ppcpmcs, M_PMC);
	FUNC0(powerpc_pcpu[cpu], M_PMC);

	return 0;
}