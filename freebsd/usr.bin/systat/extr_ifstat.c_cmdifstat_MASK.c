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
 int FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ needclear ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wnd ; 

int
FUNC5(const char *cmd, const char *args)
{
	int	retval = 0;

	retval = FUNC0(cmd, args);
	/* ifcmd() returns 1 on success */
	if (retval == 1) {
		if (needclear) {
			FUNC3();
			FUNC2();
			FUNC4(wnd);
			FUNC1();
			needclear = 0;
		}
	}
	return (retval);
}