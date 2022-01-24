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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(int num, const char *state, int expected, int got, int res,
    int res_expected)
{

	if (res != res_expected) {
		FUNC2("not ok %-2d", num);
		FUNC3(state);
		FUNC2("poll result %d expected %d. ",
		    res, res_expected);
	} else {
		if (expected == got)
			FUNC2("ok %-2d    ", num);
		else
			FUNC2("not ok %-2d", num);
		FUNC3(state);
	}
	FUNC2("expected %s; got %s\n", FUNC0(expected),
	    FUNC0(got));
	FUNC1(stdout);
}