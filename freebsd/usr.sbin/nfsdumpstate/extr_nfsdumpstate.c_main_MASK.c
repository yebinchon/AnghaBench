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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(int argc, char **argv)
{
	int ch, openstate;
	char *lockfile;

	if (FUNC5("nfsd") < 0)
		FUNC2(1, "nfsd not loaded - self terminating");
	openstate = 0;
	lockfile = NULL;
	while ((ch = FUNC4(argc, argv, "ol:")) != -1)
		switch (ch) {
		case 'o':
			openstate = 1;
			break;
		case 'l':
			lockfile = optarg;
			break;
		default:
			FUNC6();
		}
	argc -= optind;
	argv += optind;

	if (openstate == 0 && lockfile == NULL)
		openstate = 1;
	else if (openstate != 0 && lockfile != NULL)
		FUNC2(1, "-o and -l cannot both be specified");

	/*
	 * For -o, dump all open/lock state.
	 * For -l, dump lock state for that file.
	 */
	if (openstate != 0)
		FUNC1();
	else
		FUNC0(lockfile);
	FUNC3(0);
}