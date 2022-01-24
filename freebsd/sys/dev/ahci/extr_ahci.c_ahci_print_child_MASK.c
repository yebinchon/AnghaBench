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
 intptr_t AHCI_EM_UNIT ; 
 int AHCI_UNIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int) ; 

int
FUNC4(device_t dev, device_t child)
{
	intptr_t ivars;
	int retval;

	retval = FUNC1(dev, child);
	ivars = (intptr_t)FUNC2(child);
	if ((ivars & AHCI_EM_UNIT) == 0)
		retval += FUNC3(" at channel %d", (int)ivars & AHCI_UNIT);
	retval += FUNC0(dev, child);
	return (retval);
}