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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int CPUID_HV_MSR_SYNIC ; 
 int ENXIO ; 
 scalar_t__ VM_GUEST_HV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int hyperv_features ; 
 scalar_t__ vm_guest ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{

	if (FUNC0(dev) != 0 || vm_guest != VM_GUEST_HV ||
	    (hyperv_features & CPUID_HV_MSR_SYNIC) == 0)
		return (ENXIO);

	FUNC1(dev, "Hyper-V Vmbus");
	return (BUS_PROBE_DEFAULT);
}