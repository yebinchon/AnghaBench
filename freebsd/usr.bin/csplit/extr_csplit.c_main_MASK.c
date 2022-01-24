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
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; } ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  LC_ALL ; 
 int LONG_MAX ; 
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup ; 
 char* currfile ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int doclean ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 () ; 
 int FUNC11 (int,char**,char*) ; 
 int /*<<< orphan*/  handlesig ; 
 int /*<<< orphan*/ * infile ; 
 char* infn ; 
 scalar_t__ FUNC12 (unsigned char) ; 
 int kflag ; 
 scalar_t__ lineno ; 
 int maxfiles ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int nfiles ; 
 char const* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/ * overfile ; 
 char const* prefix ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ reps ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int sflag ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 scalar_t__ FUNC20 (char const*) ; 
 void* FUNC21 (char const*,char**,int) ; 
 long sufflen ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ truncofs ; 
 int /*<<< orphan*/  FUNC23 () ; 

int
FUNC24(int argc, char *argv[])
{
	struct sigaction sa;
	long i;
	int ch;
	const char *expr;
	char *ep, *p;
	FILE *ofp;

	FUNC15(LC_ALL, "");

	kflag = sflag = 0;
	prefix = "xx";
	sufflen = 2;
	while ((ch = FUNC11(argc, argv, "ksf:n:")) > 0) {
		switch (ch) {
		case 'f':
			prefix = optarg;
			break;
		case 'k':
			kflag = 1;
			break;
		case 'n':
			errno = 0;
			sufflen = FUNC21(optarg, &ep, 10);
			if (sufflen <= 0 || *ep != '\0' || errno != 0)
				FUNC4(1, "%s: bad suffix length", optarg);
			break;
		case 's':
			sflag = 1;
			break;
		default:
			FUNC23();
			/*NOTREACHED*/
		}
	}

	if (sufflen + FUNC20(prefix) >= PATH_MAX)
		FUNC4(1, "name too long");

	argc -= optind;
	argv += optind;

	if ((infn = *argv++) == NULL)
		FUNC23();
	if (FUNC19(infn, "-") == 0) {
		infile = stdin;
		infn = "stdin";
	} else if ((infile = FUNC7(infn, "r")) == NULL)
		FUNC3(1, "%s", infn);

	if (!kflag) {
		doclean = 1;
		FUNC0(cleanup);
		sa.sa_flags = 0;
		sa.sa_handler = handlesig;
		FUNC18(&sa.sa_mask);
		FUNC17(&sa.sa_mask, SIGHUP);
		FUNC17(&sa.sa_mask, SIGINT);
		FUNC17(&sa.sa_mask, SIGTERM);
		FUNC16(SIGHUP, &sa, NULL);
		FUNC16(SIGINT, &sa, NULL);
		FUNC16(SIGTERM, &sa, NULL);
	}

	lineno = 0;
	nfiles = 0;
	truncofs = 0;
	overfile = NULL;

	/* Ensure 10^sufflen < LONG_MAX. */
	for (maxfiles = 1, i = 0; i < sufflen; i++) {
		if (maxfiles > LONG_MAX / 10)
			FUNC4(1, "%ld: suffix too long (limit %ld)",
			    sufflen, i);
		maxfiles *= 10;
	}

	/* Create files based on supplied patterns. */
	while (nfiles < maxfiles - 1 && (expr = *argv++) != NULL) {
		/* Look ahead & see if this pattern has any repetitions. */
		if (*argv != NULL && **argv == '{') {
			errno = 0;
			reps = FUNC21(*argv + 1, &ep, 10);
			if (reps < 0 || *ep != '}' || errno != 0)
				FUNC4(1, "%s: bad repetition count", *argv + 1);
			argv++;
		} else
			reps = 0;

		if (*expr == '/' || *expr == '%') {
			do
				FUNC2(expr);
			while (reps-- != 0 && nfiles < maxfiles - 1);
		} else if (FUNC12((unsigned char)*expr))
			FUNC1(expr);
		else
			FUNC4(1, "%s: unrecognised pattern", expr);
	}

	/* Copy the rest into a new file. */
	if (!FUNC6(infile)) {
		ofp = FUNC13();
		while ((p = FUNC10()) != NULL && FUNC8(p, ofp) != EOF)
			;
		if (!sflag)
			FUNC14("%jd\n", (intmax_t)FUNC9(ofp));
		if (FUNC5(ofp) != 0)
			FUNC3(1, "%s", currfile);
	}

	FUNC22(NULL, 0);
	doclean = 0;

	return (0);
}