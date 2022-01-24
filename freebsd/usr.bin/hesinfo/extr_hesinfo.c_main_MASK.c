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
 scalar_t__ ENOENT ; 
 scalar_t__ ENOEXEC ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,char**) ; 
 scalar_t__ FUNC6 (void**) ; 
 char** FUNC7 (void*,char*,char*) ; 
 char* FUNC8 (void*,char*,char*) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int 
FUNC12(int argc, char **argv)
{
	char  **list, **p, *bindname, *name, *type;
	int     lflag = 0, errflg = 0, bflag = 0, c;
	void   *context;

	while ((c = FUNC3(argc, argv, "lb")) != -1) {
		switch (c) {
		case 'l':
			lflag = 1;
			break;
		case 'b':
			bflag = 1;
			break;
		default:
			errflg++;
			break;
		}
	}
	if (argc - optind != 2 || errflg) {
		FUNC1(stderr, "usage: hesinfo [-bl] name type\n");
		FUNC1(stderr, "\t-l selects long format\n");
		FUNC1(stderr, "\t-b also does hes_to_bind conversion\n");
		FUNC0(2);
	}
	name = argv[optind];
	type = argv[optind + 1];

	if (FUNC6(&context) < 0) {
		if (errno == ENOEXEC)
			FUNC11(
			    "hesiod_init: Invalid Hesiod configuration file.");
		else
			FUNC10("hesiod_init");
	}
	/* Display bind name if requested. */
	if (bflag) {
		if (lflag)
			FUNC9("hes_to_bind(%s, %s) expands to\n", name, type);
		bindname = FUNC8(context, name, type);
		if (!bindname) {
			if (lflag)
				FUNC9("nothing\n");
			if (errno == ENOENT)
				FUNC11("hesiod_to_bind: Unknown rhs-extension.");
			else
				FUNC10("hesiod_to_bind");
			FUNC0(1);
		}
		FUNC9("%s\n", bindname);
		FUNC2(bindname);
		if (lflag)
			FUNC9("which ");
	}
	if (lflag)
		FUNC9("resolves to\n");

	/* Do the hesiod resolve and check for errors. */
	list = FUNC7(context, name, type);
	if (!list) {
		if (lflag)
			FUNC9("nothing\n");
		if (errno == ENOENT)
			FUNC11("hesiod_resolve: Hesiod name not found.");
		else
			FUNC10("hesiod_resolve");
		FUNC0(1);
	}
	/* Display the results. */
	for (p = list; *p; p++)
		FUNC9("%s\n", *p);

	FUNC5(context, list);
	FUNC4(context);
	FUNC0(0);
}