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
 long DEFNICE ; 
 scalar_t__ ENOENT ; 
 long INT_MAX ; 
 long INT_MIN ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 scalar_t__ FUNC0 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 long FUNC9 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int
FUNC12(int argc, char *argv[])
{
	long niceness = DEFNICE;
	int ch;
	char *ep;

	/* Obsolescent syntax: -number, --number */
	if (argc >= 2 && argv[1][0] == '-' && (argv[1][1] == '-' ||
	    FUNC6((unsigned char)argv[1][1])) && FUNC8(argv[1], "--") != 0)
		if (FUNC0(&argv[1], "-n%s", argv[1] + 1) < 0)
			FUNC1(1, "asprintf");

	while ((ch = FUNC4(argc, argv, "n:")) != -1) {
		switch (ch) {
		case 'n':
			errno = 0;
			niceness = FUNC9(optarg, &ep, 10);
			if (ep == optarg || *ep != '\0' || errno ||
			    niceness < INT_MIN || niceness > INT_MAX)
				FUNC2(1, "%s: invalid nice value", optarg);
			break;
		default:
			FUNC10();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc == 0)
		FUNC10();

	errno = 0;
	niceness += FUNC5(PRIO_PROCESS, 0);
	if (errno)
		FUNC11("getpriority");
	else if (FUNC7(PRIO_PROCESS, 0, (int)niceness))
		FUNC11("setpriority");
	FUNC3(*argv, argv);
	FUNC1(errno == ENOENT ? 127 : 126, "%s", *argv);
}