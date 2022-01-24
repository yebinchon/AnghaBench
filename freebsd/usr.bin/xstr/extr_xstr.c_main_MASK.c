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
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  _PATH_TMP ; 
 scalar_t__ cflg ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  onintr ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ readstd ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 char* strings ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  vflg ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(int argc, char *argv[])
{
	int c;
	int fdesc;

	while ((c = FUNC5(argc, argv, "-cv")) != -1)
		switch (c) {
		case '-':
			readstd++;
			break;
		case 'c':
			cflg++;
			break;
		case 'v':
			vflg++;
			break;
		default:
			FUNC13();
		}
	argc -= optind;
	argv += optind;
		
	if (FUNC10(SIGINT, SIG_IGN) == SIG_DFL)
		FUNC10(SIGINT, onintr);
	if (cflg || (argc == 0 && !readstd))
		FUNC7();
	else {
		strings = FUNC11(_PATH_TMP);
		if (strings == NULL)
			FUNC1(1, "strdup() failed");
		fdesc = FUNC8(strings);
		if (fdesc == -1)
			FUNC1(1, "Unable to create temporary file");
		FUNC0(fdesc);
	}

	while (readstd || argc > 0) {
		if (FUNC4("x.c", "w", stdout) == NULL)
			FUNC1(1, "x.c");
		if (!readstd && FUNC4(argv[0], "r", stdin) == NULL)
			FUNC1(2, "%s", argv[0]);
		FUNC9("x.c");
		if (readstd == 0)
			argc--, argv++;
		else
			readstd = 0;
	}
	FUNC3();
	if (cflg == 0)
		FUNC14();
	if (strings[0] == '/')
		FUNC6(FUNC12(strings));
	FUNC2(0);
}