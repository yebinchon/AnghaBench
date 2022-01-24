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
typedef  int u_int ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 scalar_t__ CPU_VENDOR_INTEL ; 
 int cpu_high ; 
 scalar_t__ cpu_vendor_id ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 

__attribute__((used)) static void
FUNC4(driver_t *driver, device_t parent)
{
	device_t child;
	u_int regs[4];

	/* Make sure we're not being doubly invoked. */
	if (FUNC1(parent, "coretemp", -1) != NULL)
		return;

	/* Check that CPUID 0x06 is supported and the vendor is Intel.*/
	if (cpu_high < 6 || cpu_vendor_id != CPU_VENDOR_INTEL)
		return;
	/*
	 * CPUID 0x06 returns 1 if the processor has on-die thermal
	 * sensors. EBX[0:3] contains the number of sensors.
	 */
	FUNC3(0x06, regs);
	if ((regs[0] & 0x1) != 1)
		return;

	/*
	 * We add a child for each CPU since settings must be performed
	 * on each CPU in the SMP case.
	 */
	child = FUNC0(parent, "coretemp", -1);
	if (child == NULL)
		FUNC2(parent, "add coretemp child failed\n");
}