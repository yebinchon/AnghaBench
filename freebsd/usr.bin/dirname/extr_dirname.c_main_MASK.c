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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char **argv)
{
	char *p;
	int ch;

	if (FUNC1() < 0 || FUNC0() < 0)
		FUNC3(1, "capsicum");

	while ((ch = FUNC5(argc, argv, "")) != -1)
		switch(ch) {
		case '?':
		default:
			FUNC7();
		}
	argc -= optind;
	argv += optind;

	if (argc < 1)
		FUNC7();

	while (argc--) {
		if ((p = FUNC2(*argv)) == NULL)
			FUNC3(1, "%s", *argv);
		argv++;
		(void)FUNC6("%s\n", p);
	}
	FUNC4(0);
}