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
struct TYPE_2__ {scalar_t__ chip_id; } ;
struct bcm_platform {int pmu_addr; TYPE_1__ cid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_platform*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_platform*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ BHND_CHIPID_BCM4785 ; 
 int /*<<< orphan*/  BHND_PMU_WATCHDOG ; 
 int /*<<< orphan*/  BMIPS_BCMCFG_PLLCFG3_SM ; 
 int /*<<< orphan*/  CHIPC_WATCHDOG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bcm_platform* FUNC3 () ; 
 int /*<<< orphan*/  bcm_platform_data_avail ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8(void)
{
	struct bcm_platform	*bp;
	bool			 bcm4785war;

	FUNC7("bcm::platform_reset()\n");
	FUNC5();

#ifdef CFE
	/* Fall back on CFE if reset requested during platform
	 * data initialization */
	if (!bcm_platform_data_avail) {
		cfe_exit(0, 0);
		while (1);
	}
#endif

	bp = FUNC3();
	bcm4785war = false;

	/* Handle BCM4785-specific behavior */
	if (bp->cid.chip_id == BHND_CHIPID_BCM4785) {
		bcm4785war = true;

		/* Switch to async mode */
		FUNC2(BMIPS_BCMCFG_PLLCFG3_SM);
	}

	/* Set watchdog (PMU or ChipCommon) */
	if (bp->pmu_addr != 0x0) {
		FUNC1(bp, BHND_PMU_WATCHDOG, 1);
	} else
		FUNC0(bp, CHIPC_WATCHDOG, 1);

	/* BCM4785 */
	if (bcm4785war) {
		FUNC6();
		__asm __volatile("wait");
	}

	while (1);
}