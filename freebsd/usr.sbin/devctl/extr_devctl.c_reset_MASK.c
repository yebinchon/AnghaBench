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
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int FUNC2 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(int ac, char **av)
{
	bool detach_drv;
	int ch;

	detach_drv = false;
	while ((ch = FUNC2(ac, av, "d")) != -1)
		switch (ch) {
		case 'd':
			detach_drv = true;
			break;
		default:
			FUNC3();
		}
	ac -= optind;
	av += optind;

	if (ac != 1)
		FUNC3();
	if (FUNC0(av[0], detach_drv) < 0)
		FUNC1(1, "Failed to reset %s", av[0]);
	return (0);
}