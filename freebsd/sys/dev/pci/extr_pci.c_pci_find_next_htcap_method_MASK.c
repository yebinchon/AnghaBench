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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ PCICAP_ID ; 
 int PCIM_HTCAP_HOST ; 
 int PCIM_HTCAP_SLAVE ; 
 int PCIM_HTCMD_CAP_MASK ; 
 scalar_t__ PCIR_HT_COMMAND ; 
 scalar_t__ PCIY_HT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 

int
FUNC3(device_t dev, device_t child, int capability,
    int start, int *capreg)
{
	int ptr;
	uint16_t val;

	FUNC0(FUNC2(child, start + PCICAP_ID, 1) == PCIY_HT,
	    ("start capability is not HyperTransport capability"));
	ptr = start;

	/*
	 * Traverse the capabilities list checking each HT capability
	 * to see if it matches the requested HT capability.
	 */
	for (;;) {
		/* Skip to the next HT capability. */
		if (FUNC1(child, PCIY_HT, ptr, &ptr) != 0)
			break;

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
	}

	return (ENOENT);
}