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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int PCIM_HTCAP_HOST ; 
 int PCIM_HTCAP_SLAVE ; 
 int PCIM_HTCMD_CAP_MASK ; 
 scalar_t__ PCIR_HT_COMMAND ; 
 int /*<<< orphan*/  PCIY_HT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 

int
FUNC3(device_t dev, device_t child, int capability, int *capreg)
{
	int ptr, error;
	uint16_t val;

	error = FUNC0(child, PCIY_HT, &ptr);
	if (error)
		return (error);

	/*
	 * Traverse the capabilities list checking each HT capability
	 * to see if it matches the requested HT capability.
	 */
	for (;;) {
		val = FUNC2(child, ptr + PCIR_HT_COMMAND, 2);
		if (capability == PCIM_HTCAP_SLAVE ||
		    capability == PCIM_HTCAP_HOST)
			val &= 0xe000;
		else
			val &= PCIM_HTCMD_CAP_MASK;
		if (val == capability) {
			if (capreg != NULL)
				*capreg = ptr;
			return (0);
		}

		/* Skip to the next HT capability. */
		if (FUNC1(child, PCIY_HT, ptr, &ptr) != 0)
			break;
	}

	return (ENOENT);
}