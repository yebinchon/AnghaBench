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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(int argc, char **argv)
{
	if (FUNC1(NULL))
		return 1;
	FUNC2((argc > 1) ? argv[1] : NULL, "refs/heads/master",
			"refs/notes/svn/revs");
	FUNC0();
	FUNC3();
	return 0;
}