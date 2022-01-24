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
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int bsd ; 
 int byteorder ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 char* locname ; 
 scalar_t__ FUNC13 (char*,int) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  undefok ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ verbose ; 
 scalar_t__ warnings ; 
 int /*<<< orphan*/  warnok ; 
 scalar_t__ yydebug ; 
 int /*<<< orphan*/  FUNC21 () ; 

int
FUNC22(int argc, char **argv)
{
	int c;
	char *lfname = NULL;
	char *cfname = NULL;
	char *wfname = NULL;
	DIR *dir;

	FUNC6();
	FUNC7();
	FUNC8();
	FUNC9();
	FUNC10();
	FUNC11();
	FUNC12();

	yydebug = 0;

	(void) FUNC18(LC_ALL, "");

	while ((c = FUNC5(argc, argv, "blw:i:cf:u:vUD")) != -1) {
		switch (c) {
		case 'D':
			bsd = 1;
			break;
		case 'b':
		case 'l':
			if (byteorder != 0)
				FUNC20();
			byteorder = c == 'b' ? 4321 : 1234;
			break;
		case 'v':
			verbose++;
			break;
		case 'i':
			lfname = optarg;
			break;
		case 'u':
			FUNC17(optarg);
			break;
		case 'f':
			cfname = optarg;
			break;
		case 'U':
			undefok++;
			break;
		case 'c':
			warnok++;
			break;
		case 'w':
			wfname = optarg;
			break;
		case '?':
			FUNC20();
			break;
		}
	}

	if ((argc - 1) != (optind)) {
		FUNC20();
	}
	locname = argv[argc - 1];
	if (verbose) {
		(void) FUNC15("Processing locale %s.\n", locname);
	}

	if (cfname) {
		if (verbose)
			(void) FUNC15("Loading charmap %s.\n", cfname);
		FUNC16(cfname);
		(void) FUNC21();
	}

	if (wfname) {
		if (verbose)
			(void) FUNC15("Loading widths %s.\n", wfname);
		FUNC16(wfname);
		(void) FUNC21();
	}

	if (verbose) {
		(void) FUNC15("Loading POSIX portable characters.\n");
	}
	FUNC0();

	if (lfname) {
		FUNC16(lfname);
	} else {
		FUNC16(NULL);
	}

	/* make the directory for the locale if not already present */
	if (!bsd) {
		while ((dir = FUNC14(locname)) == NULL) {
			if ((errno != ENOENT) ||
			    (FUNC13(locname, 0755) <  0)) {
				FUNC4("%s", FUNC19(errno));
			}
		}
		(void) FUNC2(dir);
		(void) FUNC13(FUNC3(FUNC1()), 0755);
	}

	(void) FUNC21();
	if (verbose) {
		(void) FUNC15("All done.\n");
	}
	return (warnings ? 1 : 0);
}