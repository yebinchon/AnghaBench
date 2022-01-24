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
 int AMDPM_FID ; 
 int AMDPM_VID ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int amd_pminfo ; 
 int cpu_id ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(driver_t *driver, device_t parent)
{

	if ((amd_pminfo & AMDPM_FID) == 0 || (amd_pminfo & AMDPM_VID) == 0)
		return;
	switch (cpu_id & 0xf00) {
	case 0x600:
	case 0xf00:
		break;
	default:
		return;
	}
	if (FUNC1(parent, "powernow", -1) != NULL)
		return;
	if (FUNC0(parent, 10, "powernow", -1) == NULL)
		FUNC2(parent, "powernow: add child failed\n");
}