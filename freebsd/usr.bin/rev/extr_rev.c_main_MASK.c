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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int FUNC6 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

int
FUNC11(int argc, char *argv[])
{
	const char *filename;
	wchar_t *p, *t;
	FILE *fp;
	size_t len;
	int ch, rval;

	FUNC8(LC_ALL, "");

	while ((ch = FUNC6(argc, argv, "")) != -1)
		switch(ch) {
		case '?':
		default:
			FUNC9();
		}

	argc -= optind;
	argv += optind;

	fp = stdin;
	filename = "stdin";
	rval = 0;
	do {
		if (*argv) {
			if ((fp = FUNC5(*argv, "r")) == NULL) {
				FUNC10("%s", *argv);
				rval = 1;
				++argv;
				continue;
			}
			filename = *argv++;
		}
		while ((p = FUNC4(fp, &len)) != NULL) {
			if (p[len - 1] == '\n')
				--len;
			for (t = p + len - 1; t >= p; --t)
				FUNC7(*t);
			FUNC7('\n');
		}
		if (FUNC3(fp)) {
			FUNC10("%s", filename);
			FUNC0(fp);
			rval = 1;
		}
		(void)FUNC2(fp);
	} while(*argv);
	FUNC1(rval);
}