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
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long IOC_DIRMASK ; 
#define  IOC_IN 131 
#define  IOC_INOUT 130 
#define  IOC_OUT 129 
#define  IOC_VOID 128 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned long FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 

int
FUNC8(int ac, char **av)
{
	unsigned long cmd;
	const char *name;
	char *cp;
	int group, i;

	if (ac < 2)
		FUNC7(av);
	FUNC4("  command :  dir  group num  len name\n");
	for (i = 1; i < ac; i++) {
		errno = 0;
		cmd = FUNC5(av[i], &cp, 0);
		if (*cp != '\0' || errno != 0) {
			FUNC2(stderr, "Invalid integer: %s\n", av[i]);
			FUNC7(av);
		}
		FUNC4("0x%08lx: ", cmd);
		switch (cmd & IOC_DIRMASK) {
		case IOC_VOID:
			FUNC4("VOID ");
			break;
		case IOC_OUT:
			FUNC4("OUT  ");
			break;
		case IOC_IN:
			FUNC4("IN   ");
			break;
		case IOC_INOUT:
			FUNC4("INOUT");
			break;
		default:
			FUNC4("%01lx ???", (cmd & IOC_DIRMASK) >> 29);
			break;
		}
		FUNC4(" ");
		group = FUNC0(cmd);
		if (FUNC3(group))
			FUNC4(" '%c' ", group);
		else
			FUNC4(" 0x%02x", group);
		FUNC4(" %3lu %4lu", cmd & 0xff, FUNC1(cmd));
		name = FUNC6(cmd);
		if (name != NULL)
			FUNC4(" %s", name);
		FUNC4("\n");
	}
	return (0);
}