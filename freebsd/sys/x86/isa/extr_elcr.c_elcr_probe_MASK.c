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

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ ELCR_PORT ; 
 int ENXIO ; 
 scalar_t__ bootverbose ; 
 int elcr_found ; 
 int elcr_status ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 

int
FUNC4(void)
{
	int i;

	elcr_status = FUNC1(ELCR_PORT) | FUNC1(ELCR_PORT + 1) << 8;
	if ((elcr_status & (FUNC0(0) | FUNC0(1) | FUNC0(2) |
	    FUNC0(8) | FUNC0(13))) != 0)
		return (ENXIO);
	if (bootverbose) {
		FUNC2("ELCR Found.  ISA IRQs programmed as:\n");
		for (i = 0; i < 16; i++)
			FUNC2(" %2d", i);
		FUNC2("\n");
		for (i = 0; i < 16; i++)
			if (elcr_status & FUNC0(i))
				FUNC2("  L");
			else
				FUNC2("  E");
		FUNC2("\n");
	}
	if (FUNC3("elcr", 0))
		return (ENXIO);
	elcr_found = 1;
	return (0);
}