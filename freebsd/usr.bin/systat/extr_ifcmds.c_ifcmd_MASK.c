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
 int /*<<< orphan*/  CMDLINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int curscale ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 () ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/ * matchline ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int needsort ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int showpps ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 

int
FUNC9(const char *cmd, const char *args)
{
	int scale;

	if (FUNC7(cmd, "scale")) {
		if ((scale = FUNC4(args)) != -1)
			curscale = scale;
		else {
			FUNC6(CMDLINE, 0);
			FUNC1();
			FUNC0("what scale? ");
			FUNC0(FUNC3());
		}
	} else if (FUNC7(cmd, "match")) {
		if (args != NULL && *args != '\0' && FUNC5(args, "*", 2) != 0) {
			/* We got a valid match line */
			if (matchline != NULL)
				FUNC2(matchline);
			needsort = 1;
			matchline = FUNC8(args);
		} else {
			/* Empty or * pattern, turn filtering off */
			if (matchline != NULL)
				FUNC2(matchline);
			needsort = 1;
			matchline = NULL;
		}
	} else if (FUNC7(cmd, "pps"))
		showpps = !showpps;

	return (1);
}