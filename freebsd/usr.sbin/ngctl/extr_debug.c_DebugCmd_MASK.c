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
 int CMDRTN_OK ; 
 int CMDRTN_USAGE ; 
 int FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(int ac, char **av)
{
	int level;

	/* Get arguments */
	switch (ac) {
	case 2:
		if (!FUNC3(av[1], "+"))
			level = FUNC0(-1) + 1;
		else if (!FUNC3(av[1], "-"))
			level = FUNC0(-1) - 1;
		else if ((level = FUNC1(av[1])) < 0)
			return (CMDRTN_USAGE);
		FUNC0(level);
		break;
	case 1:
		FUNC2("Current debug level is %d\n", FUNC0(-1));
		break;
	default:
		return (CMDRTN_USAGE);
	}
	return (CMDRTN_OK);
}