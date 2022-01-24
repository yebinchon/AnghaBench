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
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AMDPM_HW_PSTATE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CPU_VENDOR_AMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int amd_pminfo ; 
 int /*<<< orphan*/  cpu_id ; 
 scalar_t__ cpu_vendor_id ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(driver_t *driver, device_t parent)
{

	if (FUNC3(parent, "hwpstate", -1) != NULL)
		return;

	if (cpu_vendor_id != CPU_VENDOR_AMD || FUNC1(cpu_id) < 0x10)
		return;

	/*
	 * Check if hardware pstate enable bit is set.
	 */
	if ((amd_pminfo & AMDPM_HW_PSTATE) == 0) {
		FUNC2(parent, "hwpstate enable bit is not set.\n");
		return;
	}

	if (FUNC5("hwpstate", 0))
		return;

	if (FUNC0(parent, 10, "hwpstate", -1) == NULL)
		FUNC4(parent, "hwpstate: add child failed\n");
}