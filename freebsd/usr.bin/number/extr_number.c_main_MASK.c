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
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*) ; 
 int lflag ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char *argv[])
{
	int ch, first;
	char line[256];

	lflag = 0;
	while ((ch = FUNC4(argc, argv, "l")) != -1)
		switch (ch) {
		case 'l':
			lflag = 1;
			break;
		case '?':
		default:
			FUNC7();
		}
	argc -= optind;
	argv += optind;

	if (*argv == NULL)
		for (first = 1;
		    FUNC3(line, sizeof(line), stdin) != NULL; first = 0) {
			if (FUNC6(line, '\n') == NULL)
				FUNC1(1, "line too long.");
			if (!first)
				(void)FUNC5("...\n");
			FUNC0(line);
		}
	else
		for (first = 1; *argv != NULL; first = 0, ++argv) {
			if (!first)
				(void)FUNC5("...\n");
			FUNC0(*argv);
		}
	FUNC2(0);
}