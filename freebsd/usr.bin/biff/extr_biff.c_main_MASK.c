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
 int S_IXGRP ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(int argc, char *argv[])
{
	struct stat sb;
	int ch;
	char *name;


	while ((ch = FUNC2(argc, argv, "")) != -1)
		switch(ch) {
		case '?':
		default:
			FUNC6();
		}
	argc -= optind;
	argv += optind;

	if ((name = FUNC5(STDIN_FILENO)) == NULL &&
	    (name = FUNC5(STDOUT_FILENO)) == NULL &&
	    (name = FUNC5(STDERR_FILENO)) == NULL)
		FUNC1(2, "unknown tty");

	if (FUNC4(name, &sb))
		FUNC1(2, "stat");

	if (*argv == NULL) {
		(void)FUNC3("is %s\n",
		    sb.st_mode & S_IXUSR ? "y" :
		    sb.st_mode & S_IXGRP ? "b" : "n");
		return (sb.st_mode & (S_IXUSR | S_IXGRP) ? 0 : 1);

	}

	switch (argv[0][0]) {
	case 'n':
		if (FUNC0(name, sb.st_mode & ~(S_IXUSR | S_IXGRP)) < 0)
			FUNC1(2, "%s", name);
		break;
	case 'y':
		if (FUNC0(name, (sb.st_mode & ~(S_IXUSR | S_IXGRP)) | S_IXUSR)
		    < 0)
			FUNC1(2, "%s", name);
		break;
	case 'b':
		if (FUNC0(name, (sb.st_mode & ~(S_IXUSR | S_IXGRP)) | S_IXGRP)
		    < 0)
			FUNC1(2, "%s", name);
		break;
	default:
		FUNC6();
	}
	return (sb.st_mode & (S_IXUSR | S_IXGRP) ? 0 : 1);
}