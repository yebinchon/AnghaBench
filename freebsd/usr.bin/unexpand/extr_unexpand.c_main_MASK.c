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
 int /*<<< orphan*/  LC_CTYPE ; 
 int all ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int nstops ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC5 (char*) ; 
 int* tabstops ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

int
FUNC8(int argc, char *argv[])
{
	int ch, failed;
	char *filename;

	FUNC4(LC_CTYPE, "");

	nstops = 1;
	tabstops[0] = 8;
	while ((ch = FUNC2(argc, argv, "at:")) != -1) {
		switch (ch) {
		case 'a':	/* Un-expand all spaces, not just leading. */
			all = 1;
			break;
		case 't':	/* Specify tab list, implies -a. */
			FUNC3(optarg);
			all = 1;
			break;
		default:
			FUNC6();
			/*NOTREACHED*/
		}
	}
	argc -= optind;
	argv += optind;

	failed = 0;
	if (argc == 0)
		failed |= FUNC5("stdin");
	else {
		while ((filename = *argv++) != NULL) {
			if (FUNC1(filename, "r", stdin) == NULL) {
				FUNC7("%s", filename);
				failed = 1;
			} else
				failed |= FUNC5(filename);
		}
	}
	FUNC0(failed != 0);
}