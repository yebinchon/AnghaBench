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
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_CIU_PP_RST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  octeon_ap_boot ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int
FUNC5(int cpuid)
{
	uint64_t cores_in_reset;

	/* 
	 * Release the core if it is in reset, and let it rev up a bit.
	 * The real synchronization happens below via octeon_ap_boot.
	 */
	cores_in_reset = FUNC2(CVMX_CIU_PP_RST);
	if (cores_in_reset & (1ULL << cpuid)) {
	    if (bootverbose)
		FUNC4 ("AP #%d still in reset\n", cpuid);
	    cores_in_reset &= ~(1ULL << cpuid);
	    FUNC3(CVMX_CIU_PP_RST, (uint64_t)(cores_in_reset));
	    FUNC0(2000);    /* Give it a moment to start */
	}

	if (FUNC1(&octeon_ap_boot, ~0, cpuid) == 0)
		return (-1);
	for (;;) {
		FUNC0(1000);
		if (FUNC1(&octeon_ap_boot, 0, ~0) != 0)
			return (0);
		FUNC4("Waiting for cpu%d to start\n", cpuid);
	}
}