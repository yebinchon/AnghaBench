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
 int /*<<< orphan*/  Aflag ; 
 int Dflag ; 
 int /*<<< orphan*/  Hflag ; 
 scalar_t__ Lflag ; 
 int Nflag ; 
 int /*<<< orphan*/  Rflag ; 
 int aflag ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  attrib ; 
 int /*<<< orphan*/  bflag ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  dflag ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ fromfile ; 
 int FUNC4 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gflag ; 
 int /*<<< orphan*/  lflag ; 
 int /*<<< orphan*/  load_opt_flag ; 
 int /*<<< orphan*/  longopts ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  pflag ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  uflag ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* varname ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int wflag ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(int argc, char **argv)
{
	int ch, i;

	while ((ch = FUNC4(argc, argv, "aAbdDf:gHlLNn:OpRt:uw",
		    longopts, NULL)) != -1) {
		switch (ch) {
		case 'a':
			aflag++;
			break;
		case 'A':
			Aflag++;
			break;
		case 'b':
			bflag++;
			break;
		case 'd':
			dflag++;
			break;
		case 'D':
			Dflag++;
			break;
		case 'g':
			gflag++;
			break;
		case 'H':
			Hflag++;
			break;
		case 'l':
			lflag++;
			break;
		case 'L':
			Lflag++;
			break;
		case 'n':
			varname = optarg;
			break;
		case 'N':
			Nflag++;
			break;
		case 'O':
			load_opt_flag++;
			break;
		case 'p':
			pflag++;
			break;
		case 'R':
			Rflag++;
			break;
		case 't':
			attrib = FUNC10(optarg, NULL, 16);
			break;
		case 'u':
			uflag++;
			break;
		case 'w':
			wflag++;
			break;
		case 'f':
			FUNC3(fromfile);
			fromfile = FUNC9(optarg);
			break;
		case 0:
			FUNC2(1, "unknown or unimplemented option\n");
			break;
		default:
			FUNC11();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc == 1)
		varname = argv[0];

	if (aflag + Dflag + wflag > 1) {
		FUNC12("Can only use one of -a (--append), "
		    "-D (--delete) and -w (--write)");
		FUNC11();
	}

	if (aflag + Dflag + wflag > 0 && varname == NULL) {
		FUNC12("Must specify a variable for -a (--append), "
		    "-D (--delete) or -w (--write)");
		FUNC11();
	}

	if (aflag)
		FUNC0(varname, NULL);
	else if (Dflag)
		FUNC1(varname);
	else if (wflag)
		FUNC13(varname, NULL);
	else if (Lflag)
		FUNC5();
	else if (fromfile) {
		Nflag = 1;
		FUNC6(NULL, NULL);
	} else if (varname) {
		pflag++;
		FUNC7(varname);
	} else if (argc > 0) {
		pflag++;
		for (i = 0; i < argc; i++)
			FUNC7(argv[i]);
	} else
		FUNC8();
}