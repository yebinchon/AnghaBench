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
 int /*<<< orphan*/  CONS_BLANKTIME ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(char *arg)
{
	int nsec;

	if (!FUNC5(arg, "off")) {
		nsec = 0;
	} else {
		nsec = FUNC0(arg);

		if ((*arg == '\0') || (nsec < 1)) {
			FUNC4();
			FUNC2(1, "argument must be a positive number");
		}
	}

	if (FUNC3(0, CONS_BLANKTIME, &nsec) == -1) {
		FUNC4();
		FUNC1(1, "setting screensaver period");
	}
}