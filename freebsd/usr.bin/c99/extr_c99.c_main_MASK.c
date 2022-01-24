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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * args ; 
 scalar_t__ cargs ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ nargs ; 
 int optind ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(int argc, char *argv[])
{
	int ch, i;

	args = NULL;
	cargs = nargs = 0;

	while ((ch = FUNC4(argc, argv, "cD:EgI:L:o:O:sU:l:")) != -1) {
		if (ch == 'l') {
			/* Gone too far. Back up and get out. */
			if (argv[optind - 1][0] == '-')
				optind -= 1;
			else
				optind -= 2;
			break;
		} else if (ch == '?')
			FUNC6();
	}

	FUNC0("/usr/bin/cc");
	FUNC0("-std=iso9899:1999");
	FUNC0("-pedantic");
	for (i = 1; i < optind; i++)
		FUNC0(argv[i]);
	while (i < argc) {
		if (FUNC5(argv[i], "-l", 2) == 0) {
			if (argv[i][2] != '\0')
				FUNC1(argv[i++] + 2);
			else {
				if (argv[++i] == NULL)
					FUNC6();
				FUNC1(argv[i++]);
			}
		} else
			FUNC0(argv[i++]);
	}
	FUNC3("/usr/bin/cc", args);
	FUNC2(1, "/usr/bin/cc");
}