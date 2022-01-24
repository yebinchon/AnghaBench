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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int /*<<< orphan*/  LC_ALL ; 
 unsigned long TIOCGETA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int cflag ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int dflag ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int iflag ; 
 int FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  long_opts ; 
 void* numchars ; 
 void* numfields ; 
 int /*<<< orphan*/  FUNC18 (char**) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 scalar_t__ repeats ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC21 (char*,char*) ; 
 void* FUNC22 (int /*<<< orphan*/ ,char**,int) ; 
 int uflag ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC25 (int argc, char *argv[])
{
	wchar_t *tprev, *tthis;
	FILE *ifp, *ofp;
	int ch, comp;
	size_t prevbuflen, thisbuflen, b1;
	char *prevline, *thisline, *p;
	const char *ifn;
	cap_rights_t rights;

	(void) FUNC19(LC_ALL, "");

	FUNC18(argv);
	while ((ch = FUNC16(argc, argv, "+cdif:s:u", long_opts,
	    NULL)) != -1)
		switch (ch) {
		case 'c':
			cflag = 1;
			break;
		case 'd':
			dflag = 1;
			break;
		case 'i':
			iflag = 1;
			break;
		case 'f':
			numfields = FUNC22(optarg, &p, 10);
			if (numfields < 0 || *p)
				FUNC9(1, "illegal field skip value: %s", optarg);
			break;
		case 's':
			numchars = FUNC22(optarg, &p, 10);
			if (numchars < 0 || *p)
				FUNC9(1, "illegal character skip value: %s", optarg);
			break;
		case 'u':
			uflag = 1;
			break;
		case '?':
		default:
			FUNC23();
		}

	argc -= optind;
	argv += optind;

	if (argc > 2)
		FUNC23();

	ifp = stdin;
	ifn = "stdin";
	ofp = stdout;
	if (argc > 0 && FUNC21(argv[0], "-") != 0)
		ifp = FUNC12(ifn = argv[0], "r");
	FUNC0(&rights, CAP_FSTAT, CAP_READ);
	if (FUNC6(FUNC13(ifp), &rights) < 0)
		FUNC8(1, "unable to limit rights for %s", ifn);
	FUNC0(&rights, CAP_FSTAT, CAP_WRITE);
	if (argc > 1)
		ofp = FUNC12(argv[1], "w");
	else
		FUNC2(&rights, CAP_IOCTL);
	if (FUNC6(FUNC13(ofp), &rights) < 0) {
		FUNC8(1, "unable to limit rights for %s",
		    argc > 1 ? argv[1] : "stdout");
	}
	if (FUNC1(&rights, CAP_IOCTL)) {
		unsigned long cmd;

		cmd = TIOCGETA; /* required by isatty(3) in printf(3) */

		if (FUNC5(FUNC13(ofp), &cmd, 1) < 0) {
			FUNC8(1, "unable to limit ioctls for %s",
			    argc > 1 ? argv[1] : "stdout");
		}
	}

	FUNC3();
	if (FUNC4() < 0)
		FUNC8(1, "unable to enter capability mode");

	prevbuflen = thisbuflen = 0;
	prevline = thisline = NULL;

	if (FUNC15(&prevline, &prevbuflen, ifp) < 0) {
		if (FUNC11(ifp))
			FUNC8(1, "%s", ifn);
		FUNC10(0);
	}
	tprev = FUNC7(prevline);

	tthis = NULL;
	while (FUNC15(&thisline, &thisbuflen, ifp) >= 0) {
		if (tthis != NULL)
			FUNC14(tthis);
		tthis = FUNC7(thisline);

		if (tthis == NULL && tprev == NULL)
			comp = FUNC17(thisline, prevline);
		else if (tthis == NULL || tprev == NULL)
			comp = 1;
		else
			comp = FUNC24(tthis, tprev);

		if (comp) {
			/* If different, print; set previous to new value. */
			FUNC20(ofp, prevline);
			p = prevline;
			b1 = prevbuflen;
			prevline = thisline;
			prevbuflen = thisbuflen;
			if (tprev != NULL)
				FUNC14(tprev);
			tprev = tthis;
			thisline = p;
			thisbuflen = b1;
			tthis = NULL;
			repeats = 0;
		} else
			++repeats;
	}
	if (FUNC11(ifp))
		FUNC8(1, "%s", ifn);
	FUNC20(ofp, prevline);
	FUNC10(0);
}