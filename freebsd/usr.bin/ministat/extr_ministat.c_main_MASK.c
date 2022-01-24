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
struct winsize {int ws_col; } ;
struct dataset {char* name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CAPH_READ ; 
 int /*<<< orphan*/  FUNC0 (struct dataset*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_DS ; 
 int NCONF ; 
 int /*<<< orphan*/  FUNC2 (struct dataset*,int) ; 
 struct dataset* FUNC3 (int /*<<< orphan*/ *,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dataset*,struct dataset*,int) ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  FUNC6 (struct dataset*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char*,char*) ; 
 char* FUNC17 (char*) ; 
 int FUNC18 (int,char**,char*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 double FUNC23 (char*,char**) ; 
 int FUNC24 (char*,char**,int) ; 
 double* studentpct ; 
 int* symbol ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

int
FUNC26(int argc, char **argv)
{
	const char *setfilenames[MAX_DS - 1];
	struct dataset *ds[MAX_DS - 1];
	FILE *setfiles[MAX_DS - 1];
	int nds;
	double a;
	const char *delim = " \t";
	char *p;
	int c, i, ci;
	int column = 1;
	int flag_s = 0;
	int flag_n = 0;
	int termwidth = 74;
	int suppress_plot = 0;

	if (FUNC20(STDOUT_FILENO)) {
		struct winsize wsz;

		if ((p = FUNC17("COLUMNS")) != NULL && *p != '\0')
			termwidth = FUNC8(p);
		else if (FUNC19(STDOUT_FILENO, TIOCGWINSZ, &wsz) != -1 &&
			 wsz.ws_col > 0)
			termwidth = wsz.ws_col - 2;
	}

	ci = -1;
	while ((c = FUNC18(argc, argv, "AC:c:d:snw:")) != -1)
		switch (c) {
		case 'A':
			suppress_plot = 1;
			break;
		case 'C':
			column = FUNC24(optarg, &p, 10);
			if (p != NULL && *p != '\0')
				FUNC25("Invalid column number.");
			if (column <= 0)
				FUNC25("Column number should be positive.");
			break;
		case 'c':
			a = FUNC23(optarg, &p);
			if (p != NULL && *p != '\0')
				FUNC25("Not a floating point number");
			for (i = 0; i < NCONF; i++)
				if (a == studentpct[i])
					ci = i;
			if (ci == -1)
				FUNC25("No support for confidence level");
			break;
		case 'd':
			if (*optarg == '\0')
				FUNC25("Can't use empty delimiter string");
			delim = optarg;
			break;
		case 'n':
			flag_n = 1;
			break;
		case 's':
			flag_s = 1;
			break;
		case 'w':
			termwidth = FUNC24(optarg, &p, 10);
			if (p != NULL && *p != '\0')
				FUNC25("Invalid width, not a number.");
			if (termwidth < 0)
				FUNC25("Unable to move beyond left margin.");
			break;
		default:
			FUNC25("Unknown option");
			break;
		}
	if (ci == -1)
		ci = 2;
	argc -= optind;
	argv += optind;

	if (argc == 0) {
		setfilenames[0] = "<stdin>";
		setfiles[0] = stdin;
		nds = 1;
	} else {
		if (argc > (MAX_DS - 1))
			FUNC25("Too many datasets.");
		nds = argc;
		for (i = 0; i < nds; i++) {
			setfilenames[i] = argv[i];
			if (!FUNC22(argv[i], "-"))
				setfiles[0] = stdin;
			else
				setfiles[i] = FUNC16(argv[i], "r");
			if (setfiles[i] == NULL)
				FUNC12(2, "Cannot open %s", argv[i]);
		}
	}

	if (FUNC10() < 0)
		FUNC12(2, "capsicum");

	for (i = 0; i < nds; i++)
		if (FUNC11(FUNC15(setfiles[i]), CAPH_READ) < 0)
			FUNC12(2, "unable to limit rights for %s",
			    setfilenames[i]);

	/* Enter Capsicum sandbox. */
	if (FUNC9() < 0)
		FUNC12(2, "unable to enter capability mode");

	for (i = 0; i < nds; i++) {
		ds[i] = FUNC3(setfiles[i], setfilenames[i], column, delim);
		if (setfiles[i] != stdin)
			FUNC14(setfiles[i]);
	}

	for (i = 0; i < nds; i++)
		FUNC21("%c %s\n", symbol[i+1], ds[i]->name);

	if (!flag_n && !suppress_plot) {
		FUNC5(termwidth, flag_s, nds);
		for (i = 0; i < nds; i++)
			FUNC0(ds[i]);
		for (i = 0; i < nds; i++)
			FUNC2(ds[i], i + 1);
		FUNC1();
	}
	FUNC7();
	FUNC6(ds[0], 1);
	for (i = 1; i < nds; i++) {
		FUNC6(ds[i], i + 1);
		if (!flag_n)
			FUNC4(ds[i], ds[0], ci);
	}
	FUNC13(0);
}