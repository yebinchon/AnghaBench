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
struct unittype {int dummy; } ;
typedef  int /*<<< orphan*/  History ;
typedef  int /*<<< orphan*/  HistEvent ;
typedef  int /*<<< orphan*/  EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  EL_EDITOR ; 
 int /*<<< orphan*/  EL_HIST ; 
 int /*<<< orphan*/  EL_PROMPT ; 
 int /*<<< orphan*/  EL_SIGNAL ; 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  H_ENTER ; 
 int /*<<< orphan*/  H_SETSIZE ; 
 char* UNITSFILE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct unittype*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (struct unittype*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* havestr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct unittype*) ; 
 int /*<<< orphan*/  longopts ; 
 char* numfmt ; 
 char* optarg ; 
 int optind ; 
 char* outputformat ; 
 int prefixcount ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  prompt ; 
 char* promptstr ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (struct unittype*,struct unittype*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int terse ; 
 int unitcount ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int verbose ; 
 char* wantstr ; 

int
FUNC22(int argc, char **argv)
{

	struct unittype have, want;
	int optchar;
	bool quiet;
	bool readfile;
	bool quit;
	History *inhistory;
	EditLine *el;
	HistEvent ev;
	int inputsz;
	char const * history_file;

	quiet = false;
	readfile = false;
	history_file = NULL;
	outputformat = numfmt;
	quit = false;
	while ((optchar = FUNC12(argc, argv, "+ehf:o:qtvH:UV", longopts, NULL)) != -1) {
		switch (optchar) {
		case 'e':
			outputformat = "%6e";
			break;
		case 'f':
			readfile = true;
			if (FUNC20(optarg) == 0)
				FUNC18(NULL);
			else
				FUNC18(optarg);
			break;
		case 'H':
			history_file = optarg;
			break;
		case 'q':
			quiet = true;
			break;
		case 't':
			terse = true;
			break;
		case 'o':
			outputformat = optarg;
			break;
		case 'v':
			verbose = true;
			break;
		case 'V':
			FUNC11(stderr, "FreeBSD units\n");
			/* FALLTHROUGH */
		case 'U':
			if (FUNC0(UNITSFILE, F_OK) == 0)
				FUNC17("%s\n", UNITSFILE);
			else
				FUNC17("Units data file not found");
			FUNC10(0);
		case 'h':
			/* FALLTHROUGH */

		default:
			FUNC21();
		}
	}

	if (!readfile)
		FUNC18(NULL);

	if (optind == argc - 2) {
		if (FUNC2() < 0)
			FUNC9(1, "unable to enter capability mode");

		havestr = argv[optind];
		wantstr = argv[optind + 1];
		FUNC16(&have);
		FUNC1(&have, havestr, 0, 1);
		FUNC3(&have);
		FUNC16(&want);
		FUNC1(&want, wantstr, 0, 1);
		FUNC3(&want);
		FUNC19(&have, &want);
	} else {
		inhistory = FUNC15();
		el = FUNC6(argv[0], stdin, stdout, stderr);
		FUNC7(el, EL_PROMPT, &prompt);
		FUNC7(el, EL_EDITOR, "emacs");
		FUNC7(el, EL_SIGNAL, 1);
		FUNC7(el, EL_HIST, history, inhistory);
		FUNC8(el, NULL);
		FUNC13(inhistory, &ev, H_SETSIZE, 800);
		if (inhistory == 0)
			FUNC9(1, "Could not initialize history");

		if (FUNC2() < 0)
			FUNC9(1, "unable to enter capability mode");

		if (!quiet)
			FUNC17("%d units, %d prefixes\n", unitcount,
			    prefixcount);
		while (!quit) {
			do {
				FUNC16(&have);
				if (!quiet)
					promptstr = "You have: ";
				havestr = FUNC5(el, &inputsz);
				if (havestr == NULL) {
					quit = true;
					break;
				}
				if (inputsz > 0)
					FUNC13(inhistory, &ev, H_ENTER,
					havestr);
			} while (FUNC1(&have, havestr, 0, 1) ||
			    FUNC3(&have));
			if (quit) {
				break;
			}
			do {
				FUNC16(&want);
				if (!quiet)
					promptstr = "You want: ";
				wantstr = FUNC5(el, &inputsz);
				if (wantstr == NULL) {
					quit = true;
					break;
				}
				if (inputsz > 0)
					FUNC13(inhistory, &ev, H_ENTER,
					wantstr);
			} while (FUNC1(&want, wantstr, 0, 1) ||
			    FUNC3(&want));
			if (quit) {
				break;
			}
			FUNC19(&have, &want);
		}

		FUNC14(inhistory);
		FUNC4(el);
	}

	return (0);
}