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
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KBDC_ECHO ; 
 scalar_t__ KBD_ECHO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(KBDC kbdc)
{
	/* enable the keyboard port, but disable the keyboard intr. */
	if (FUNC2(kbdc, TRUE, FALSE))
		/* CONTROLLER ERROR: there is very little we can do... */
		return ENXIO;

	/* see if something is present */
	FUNC5(kbdc, KBDC_ECHO);
	if (FUNC1(kbdc) != KBD_ECHO) {
		FUNC0(kbdc, 10);
		FUNC3(kbdc);
		FUNC4(kbdc);
		return ENXIO;
	}

	/* enable the keyboard port and intr. */
	if (FUNC2(kbdc, TRUE, TRUE)) {
		/*
		 * CONTROLLER ERROR 
		 * This is serious; the keyboard intr is left disabled! 
		 */
		return ENXIO;
	}

	return 0;
}