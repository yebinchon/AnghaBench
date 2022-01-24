#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* zipped; int ziplen; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUM_SUFFIXES ; 
 int Nflag ; 
 int /*<<< orphan*/  OPT_LIST ; 
 int SUFFIX_MAXLEN ; 
 int cflag ; 
 int dflag ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exit_value ; 
 int fflag ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int kflag ; 
 int lflag ; 
 int /*<<< orphan*/  longopts ; 
 int nflag ; 
 int numflag ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC11 (char*,int*,char***) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ qflag ; 
 int rflag ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int FUNC15 (char*) ; 
 TYPE_1__* suffixes ; 
 int tflag ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int vflag ; 

int
FUNC17(int argc, char **argv)
{
	const char *progname = FUNC7();
#ifndef SMALL
	char *gzip;
	int len;
#endif
	int ch;

	FUNC13();

#ifndef SMALL
	if ((gzip = FUNC5("GZIP")) != NULL)
		FUNC11(gzip, &argc, &argv);
#endif

	/*
	 * XXX
	 * handle being called `gunzip', `zcat' and `gzcat'
	 */
	if (FUNC14(progname, "gunzip") == 0)
		dflag = 1;
	else if (FUNC14(progname, "zcat") == 0 ||
		 FUNC14(progname, "gzcat") == 0)
		dflag = cflag = 1;

#ifdef SMALL
#define OPT_LIST "123456789cdhlV"
#else
#define OPT_LIST "123456789acdfhklLNnqrS:tVv"
#endif

	while ((ch = FUNC6(argc, argv, OPT_LIST, longopts, NULL)) != -1) {
		switch (ch) {
		case '1': case '2': case '3':
		case '4': case '5': case '6':
		case '7': case '8': case '9':
			numflag = ch - '0';
			break;
		case 'c':
			cflag = 1;
			break;
		case 'd':
			dflag = 1;
			break;
		case 'l':
			lflag = 1;
			dflag = 1;
			break;
		case 'V':
			FUNC1();
			/* NOTREACHED */
#ifndef SMALL
		case 'a':
			FUNC4(stderr, "%s: option --ascii ignored on this system\n", progname);
			break;
		case 'f':
			fflag = 1;
			break;
		case 'k':
			kflag = 1;
			break;
		case 'L':
			FUNC0();
			/* NOT REACHED */
		case 'N':
			nflag = 0;
			Nflag = 1;
			break;
		case 'n':
			nflag = 1;
			Nflag = 0;
			break;
		case 'q':
			qflag = 1;
			break;
		case 'r':
			rflag = 1;
			break;
		case 'S':
			len = FUNC15(optarg);
			if (len != 0) {
				if (len > SUFFIX_MAXLEN)
					FUNC2(1, "incorrect suffix: '%s': too long", optarg);
				suffixes[0].zipped = optarg;
				suffixes[0].ziplen = len;
			} else {
				suffixes[NUM_SUFFIXES - 1].zipped = "";
				suffixes[NUM_SUFFIXES - 1].ziplen = 0;
			}
			break;
		case 't':
			cflag = 1;
			tflag = 1;
			dflag = 1;
			break;
		case 'v':
			vflag = 1;
			break;
#endif
		default:
			FUNC16();
			/* NOTREACHED */
		}
	}
	argv += optind;
	argc -= optind;

	if (argc == 0) {
		if (dflag)	/* stdin mode */
			FUNC9();
		else		/* stdout mode */
			FUNC10();
	} else {
		do {
			FUNC8(argv[0]);
		} while (*++argv);
	}
#ifndef SMALL
	if (qflag == 0 && lflag && argc > 1)
		FUNC12(-1, 0, "(totals)", 0);
#endif
	FUNC3(exit_value);
}