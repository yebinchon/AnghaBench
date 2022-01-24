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
struct stat {int st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int S_IWGRP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char *argv[])
{
	struct stat sb;
	char *tty;
	int ch;

	while ((ch = FUNC3(argc, argv, "")) != -1)
		switch (ch) {
		case '?':
		default:
			FUNC7();
		}
	argc -= optind;
	argv += optind;

	if ((tty = FUNC6(STDIN_FILENO)) == NULL &&
	    (tty = FUNC6(STDOUT_FILENO)) == NULL &&
	    (tty = FUNC6(STDERR_FILENO)) == NULL)
		FUNC1(2, "ttyname");
	if (FUNC5(tty, &sb) < 0)
		FUNC1(2, "%s", tty);

	if (*argv == NULL) {
		if (sb.st_mode & S_IWGRP) {
			(void)FUNC4("is y");
			FUNC2(0);
		}
		(void)FUNC4("is n");
		FUNC2(1);
	}

	switch (*argv[0]) {
	case 'y':
		if (FUNC0(tty, sb.st_mode | S_IWGRP) < 0)
			FUNC1(2, "%s", tty);
		FUNC2(0);
	case 'n':
		if (FUNC0(tty, sb.st_mode & ~S_IWGRP) < 0)
			FUNC1(2, "%s", tty);
		FUNC2(1);
	}

	FUNC7();
	return(0);
}