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
 int /*<<< orphan*/  allopt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  longopt ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(int argc, char *argv[])
{
	int ch;

	while ((ch = FUNC2(argc, argv, "al")) != -1)
		switch (ch) {
		case 'a':
			allopt++;
			break;
		case 'l':
			longopt++;
			break;
		default:
			FUNC5();
			/* NOTREACHED */
		}

	FUNC4(stdout);
	if (argc == optind)
		FUNC0();
	else {
		for (; optind < argc; optind++)
			(void)FUNC3(argv[optind]);
	}
	FUNC1(0);
}