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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

int
FUNC8(int argc, char *argv[])
{
	const char *file;
	FILE *in;
	bool found, qflag, sflag;
	int c;

	qflag = sflag = false;

	while ((c = FUNC3(argc, argv, "qs")) != -1) {
		switch (c) {
		case 'q':
			qflag = true;
			break;
		case 's':
			sflag = true;
			break;
		default:
			FUNC6();
		}
	}
	argc -= optind;
	argv += optind;

	found = false;

	if (argc == 0) {
		if (FUNC5(sflag, qflag, stdin))
			found = true;
	} else {
		while (argc--) {
			file = *argv++;
			in = FUNC2(file, "r");
			if (in == NULL) {
				if (!qflag)
					FUNC7("%s", file);
				continue;
			}
			if (!qflag)
				FUNC4("%s:\n", file);
			if (FUNC5(sflag, qflag, in))
				found = true;
			FUNC1(in);
		}
	}
	FUNC0(found ? 0 : 1);
}