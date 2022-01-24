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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char *argv[])
{
	int ch;

	while ((ch = FUNC3(argc, argv, "")) != -1)
		switch(ch) {
		case '?':
		default:
			FUNC4();
		}
	argc -= optind;
	argv += optind;

	switch(argc) {
	case 0:
		if (FUNC0(NULL))
			FUNC1(1, NULL);
		break;
	case 1:
		if (FUNC0(*argv))
			FUNC1(1, "%s", *argv);
		break;
	default:
		FUNC4();
	}
	FUNC2(0);
}