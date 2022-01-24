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
 int CPUID_HV_ET_MASK ; 
 int /*<<< orphan*/  VMBUS_ET_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int hyperv_features ; 
 int /*<<< orphan*/ * hyperv_tc64 ; 

__attribute__((used)) static void
FUNC3(driver_t *driver, device_t parent)
{
	if (FUNC2(parent) != 0 ||
	    FUNC1(parent, VMBUS_ET_NAME, -1) != NULL ||
	    (hyperv_features & CPUID_HV_ET_MASK) != CPUID_HV_ET_MASK ||
	    hyperv_tc64 == NULL)
		return;

	FUNC0(parent, VMBUS_ET_NAME, -1);
}