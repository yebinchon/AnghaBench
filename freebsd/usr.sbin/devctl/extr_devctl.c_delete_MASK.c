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
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int FUNC3 (int,char**,char*) ; 
 scalar_t__ optind ; 

__attribute__((used)) static int
FUNC4(int ac, char **av)
{
	bool force;
	int ch;

	force = false;
	while ((ch = FUNC3(ac, av, "f")) != -1)
		switch (ch) {
		case 'f':
			force = true;
			break;
		default:
			FUNC0();
		}
	ac -= optind;
	av += optind;

	if (ac != 1)
		FUNC0();
	if (FUNC1(av[0], force) < 0)
		FUNC2(1, "Failed to delete %s", av[0]);
	return (0);
}