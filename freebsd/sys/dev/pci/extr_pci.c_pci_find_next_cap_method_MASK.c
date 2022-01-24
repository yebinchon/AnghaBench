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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ PCICAP_ID ; 
 scalar_t__ PCICAP_NEXTPTR ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 

int
FUNC2(device_t dev, device_t child, int capability,
    int start, int *capreg)
{
	uint8_t ptr;

	FUNC0(FUNC1(child, start + PCICAP_ID, 1) == capability,
	    ("start capability is not expected capability"));

	ptr = FUNC1(child, start + PCICAP_NEXTPTR, 1);
	while (ptr != 0) {
		if (FUNC1(child, ptr + PCICAP_ID, 1) == capability) {
			if (capreg != NULL)
				*capreg = ptr;
			return (0);
		}
		ptr = FUNC1(child, ptr + PCICAP_NEXTPTR, 1);
	}

	return (ENOENT);
}