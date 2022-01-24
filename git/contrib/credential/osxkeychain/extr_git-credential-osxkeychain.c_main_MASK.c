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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

int FUNC6(int argc, const char **argv)
{
	const char *usage =
		"usage: git credential-osxkeychain <get|store|erase>";

	if (!argv[1])
		FUNC2(usage);

	FUNC4();

	if (!FUNC5(argv[1], "get"))
		FUNC3();
	else if (!FUNC5(argv[1], "store"))
		FUNC0();
	else if (!FUNC5(argv[1], "erase"))
		FUNC1();
	/* otherwise, ignore unknown action */

	return 0;
}