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
 int RB_HALT ; 
 int /*<<< orphan*/  WD_TO_NEVER ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *junk, int howto)
{

	if (howto & RB_HALT) {
		FUNC2("\n");
		FUNC2("The operating system has halted.\n");
		FUNC2("Please press any key to reboot.\n\n");

		FUNC3(WD_TO_NEVER);

		switch (FUNC0()) {
		case -1:		/* No console, just die */
			FUNC1();
			/* NOTREACHED */
		default:
			break;
		}
	}
}