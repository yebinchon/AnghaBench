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
struct bsdar {char* progname; int options; char* filename; char mode; int argc; char** argv; int /*<<< orphan*/ * posarg; } ;

/* Variables and functions */
 int AR_A ; 
 int AR_B ; 
 int AR_C ; 
 int AR_CC ; 
 int AR_D ; 
 int AR_J ; 
 int AR_O ; 
 int AR_S ; 
 int AR_SS ; 
 int AR_TR ; 
 int AR_U ; 
 int AR_V ; 
 int AR_Z ; 
 int /*<<< orphan*/  EX_OK ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  EX_USAGE ; 
#define  OPTION_HELP 128 
 int /*<<< orphan*/  FUNC0 (struct bsdar*) ; 
 int /*<<< orphan*/  FUNC1 (struct bsdar*) ; 
 int /*<<< orphan*/  FUNC2 (struct bsdar*) ; 
 int /*<<< orphan*/  FUNC3 (struct bsdar*) ; 
 int /*<<< orphan*/  FUNC4 (struct bsdar*) ; 
 int /*<<< orphan*/  FUNC5 (struct bsdar*) ; 
 int /*<<< orphan*/  FUNC6 (struct bsdar*) ; 
 int /*<<< orphan*/  FUNC7 (struct bsdar*) ; 
 int /*<<< orphan*/  FUNC8 (struct bsdar*) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct bsdar*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct bsdar*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC16 () ; 
 int /*<<< orphan*/  longopts ; 
 char* FUNC17 (size_t) ; 
 int /*<<< orphan*/  FUNC18 (struct bsdar*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct bsdar*,char*,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (struct bsdar*,int) ; 
 scalar_t__ FUNC23 (char*,char) ; 
 scalar_t__ FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,size_t) ; 
 int FUNC26 (char*) ; 

int
FUNC27(int argc, char **argv)
{
	struct bsdar	*bsdar, bsdar_storage;
	char		*p;
	size_t		 len;
	int		 i, opt, Dflag, Uflag;

	bsdar = &bsdar_storage;
	FUNC18(bsdar, 0, sizeof(*bsdar));
	Dflag = 0;
	Uflag = 0;

	if ((bsdar->progname = FUNC16()) == NULL)
		bsdar->progname = "ar";

	/* Act like ranlib if our name ends in "ranlib"; this
	 * accommodates arm-freebsd7.1-ranlib, bsdranlib, etc. */
	len = FUNC26(bsdar->progname);
	if (len >= FUNC26("ranlib") &&
	    FUNC24(bsdar->progname + len - FUNC26("ranlib"), "ranlib") == 0) {
		while ((opt = FUNC15(argc, argv, "tDUV", longopts,
		    NULL)) != -1) {
			switch(opt) {
			case 't':
				/* Ignored. */
				break;
			case 'D':
				Dflag = 1;
				Uflag = 0;
				break;
			case 'U':
				Uflag = 1;
				Dflag = 0;
				break;
			case 'V':
				FUNC21();
				break;
			case OPTION_HELP:
				FUNC20();
			default:
				FUNC20();
			}
		}
		argv += optind;
		argc -= optind;

		if (*argv == NULL)
			FUNC20();

		/* Enable determinstic mode unless -U is set. */
		if (Uflag == 0)
			bsdar->options |= AR_D;
		bsdar->options |= AR_S;
		while ((bsdar->filename = *argv++) != NULL)
			FUNC5(bsdar);

		FUNC14(EX_OK);
	} else {
		if (argc < 2)
			FUNC11();

		if (*argv[1] != '-') {
			len = FUNC26(argv[1]) + 2;
			if ((p = FUNC17(len)) == NULL)
				FUNC10(bsdar, EX_SOFTWARE, errno,
				    "malloc failed");
			*p = '-';
			(void)FUNC25(p + 1, argv[1], len - 1);
			argv[1] = p;
		}
	}

	while ((opt = FUNC15(argc, argv, "abCcdDfijlMmopqrSsTtUuVvxz",
	    longopts, NULL)) != -1) {
		switch(opt) {
		case 'a':
			bsdar->options |= AR_A;
			break;
		case 'b':
		case 'i':
			bsdar->options |= AR_B;
			break;
		case 'C':
			bsdar->options |= AR_CC;
			break;
		case 'c':
			bsdar->options |= AR_C;
			break;
		case 'd':
			FUNC22(bsdar, opt);
			break;
		case 'D':
			Dflag = 1;
			Uflag = 0;
			break;
		case 'f':
		case 'T':
			bsdar->options |= AR_TR;
			break;
		case 'j':
			/* ignored */
			break;
		case 'l':
			/* ignored, for GNU ar comptibility */
			break;
		case 'M':
			FUNC22(bsdar, opt);
			break;
		case 'm':
			FUNC22(bsdar, opt);
			break;
		case 'o':
			bsdar->options |= AR_O;
			break;
		case 'p':
			FUNC22(bsdar, opt);
			break;
		case 'q':
			FUNC22(bsdar, opt);
			break;
		case 'r':
			FUNC22(bsdar, opt);
			break;
		case 'S':
			bsdar->options |= AR_SS;
			break;
		case 's':
			bsdar->options |= AR_S;
			break;
		case 't':
			FUNC22(bsdar, opt);
			break;
		case 'U':
			Uflag = 1;
			Dflag = 0;
			break;
		case 'u':
			bsdar->options |= AR_U;
			break;
		case 'V':
			FUNC12();
			break;
		case 'v':
			bsdar->options |= AR_V;
			break;
		case 'x':
			FUNC22(bsdar, opt);
			break;
		case 'z':
			/* ignored */
			break;
		case OPTION_HELP:
			FUNC11();
		default:
			FUNC11();
		}
	}

	argv += optind;
	argc -= optind;

	if (*argv == NULL && bsdar->mode != 'M')
		FUNC11();

	if (bsdar->options & AR_A && bsdar->options & AR_B)
		FUNC10(bsdar, EX_USAGE, 0,
		    "only one of -a and -[bi] options allowed");

	if (bsdar->options & AR_J && bsdar->options & AR_Z)
		FUNC10(bsdar, EX_USAGE, 0,
		    "only one of -j and -z options allowed");

	if (bsdar->options & AR_S && bsdar->options & AR_SS)
		FUNC10(bsdar, EX_USAGE, 0,
		    "only one of -s and -S options allowed");

	if (bsdar->options & (AR_A | AR_B)) {
		if (*argv == NULL)
			FUNC10(bsdar, EX_USAGE, 0,
			    "no position operand specified");
		if ((bsdar->posarg = FUNC9(*argv)) == NULL)
			FUNC10(bsdar, EX_SOFTWARE, errno,
			    "basename failed");
		argc--;
		argv++;
	}

	/* Set determinstic mode for -D, and by default without -U. */
	if (Dflag || (Uflag == 0 && (bsdar->mode == 'q' || bsdar->mode == 'r' ||
	    (bsdar->mode == '\0' && bsdar->options & AR_S))))
		bsdar->options |= AR_D;

	if (bsdar->options & AR_A)
		FUNC19(bsdar, "-a", "mqr");
	if (bsdar->options & AR_B)
		FUNC19(bsdar, "-b", "mqr");
	if (bsdar->options & AR_C)
		FUNC19(bsdar, "-c", "qr");
	if (bsdar->options & AR_CC)
		FUNC19(bsdar, "-C", "x");
	if (Dflag)
		FUNC19(bsdar, "-D", "qr");
	if (Uflag)
		FUNC19(bsdar, "-U", "qr");
	if (bsdar->options & AR_O)
		FUNC19(bsdar, "-o", "x");
	if (bsdar->options & AR_SS)
		FUNC19(bsdar, "-S", "mqr");
	if (bsdar->options & AR_U)
		FUNC19(bsdar, "-u", "qrx");

	if (bsdar->mode == 'M') {
		FUNC6(bsdar);
		FUNC14(EX_OK);
	}

	if ((bsdar->filename = *argv) == NULL)
		FUNC11();

	bsdar->argc = --argc;
	bsdar->argv = ++argv;

	if ((!bsdar->mode || FUNC23("ptx", bsdar->mode)) &&
	    bsdar->options & AR_S) {
		FUNC5(bsdar);
		if (!bsdar->mode)
			FUNC14(EX_OK);
	}

	switch(bsdar->mode) {
	case 'd':
		FUNC0(bsdar);
		break;
	case 'm':
		FUNC1(bsdar);
		break;
	case 'p':
		FUNC2(bsdar);
		break;
	case 'q':
		FUNC3(bsdar);
		break;
	case 'r':
		FUNC4(bsdar);
		break;
	case 't':
		FUNC7(bsdar);
		break;
	case 'x':
		FUNC8(bsdar);
		break;
	default:
		FUNC11();
		/* NOTREACHED */
	}

	for (i = 0; i < bsdar->argc; i++)
		if (bsdar->argv[i] != NULL)
			FUNC13(bsdar, 0, "%s: not found in archive",
			    bsdar->argv[i]);

	FUNC14(EX_OK);
}