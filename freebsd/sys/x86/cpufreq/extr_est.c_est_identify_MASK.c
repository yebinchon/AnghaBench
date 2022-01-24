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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,char*,int) ; 
 int CPUID2_EST ; 
 scalar_t__ CPU_VENDOR_CENTAUR ; 
 scalar_t__ CPU_VENDOR_INTEL ; 
 int cpu_feature2 ; 
 scalar_t__ cpu_high ; 
 scalar_t__ cpu_vendor_id ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC3(driver_t *driver, device_t parent)
{
	device_t child;

	/* Make sure we're not being doubly invoked. */
	if (FUNC1(parent, "est", -1) != NULL)
		return;

	/* Check that CPUID is supported and the vendor is Intel.*/
	if (cpu_high == 0 || (cpu_vendor_id != CPU_VENDOR_INTEL &&
	    cpu_vendor_id != CPU_VENDOR_CENTAUR))
		return;

	/*
	 * Check if the CPU supports EST.
	 */
	if (!(cpu_feature2 & CPUID2_EST))
		return;

	/*
	 * We add a child for each CPU since settings must be performed
	 * on each CPU in the SMP case.
	 */
	child = FUNC0(parent, 10, "est", -1);
	if (child == NULL)
		FUNC2(parent, "add est child failed\n");
}