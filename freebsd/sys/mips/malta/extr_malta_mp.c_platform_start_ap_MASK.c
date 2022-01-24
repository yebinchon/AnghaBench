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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MVPCONTROL_VPC ; 
 int /*<<< orphan*/  TCSTATUS_A ; 
 int /*<<< orphan*/  VPECONF0_VPA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  malta_ap_boot ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC9(int cpuid)
{
	uint32_t reg;
	int timeout;

	/* Enter into configuration */
	reg = FUNC6(0, 1);
	reg |= (MVPCONTROL_VPC);
	FUNC8(0, 1, reg);

	FUNC7(cpuid);

	/*
	 * Hint: how to set entry point.
	 * reg = 0x80000000;
	 * mttc0(2, 3, reg);
	 */

	/* Enable thread */
	reg = FUNC3(2, 1);
	reg |= (TCSTATUS_A);
	FUNC4(2, 1, reg);

	/* Unhalt CPU core */
	FUNC4(2, 4, 0);

	/* Activate VPE */
	reg = FUNC3(1, 2);
	reg |= (VPECONF0_VPA);
	FUNC4(1, 2, reg);

	/* Out of configuration */
	reg = FUNC6(0, 1);
	reg &= ~(MVPCONTROL_VPC);
	FUNC8(0, 1, reg);

	FUNC2();

	if (FUNC1(&malta_ap_boot, ~0, cpuid) == 0)
		return (-1);

	FUNC5("Waiting for cpu%d to start\n", cpuid);

	timeout = 100;
	do {
		FUNC0(1000);
		if (FUNC1(&malta_ap_boot, 0, ~0) != 0) {
			FUNC5("CPU %d started\n", cpuid);
			return (0);
		}
	} while (timeout--);

	FUNC5("CPU %d failed to start\n", cpuid);

	return (0);
}