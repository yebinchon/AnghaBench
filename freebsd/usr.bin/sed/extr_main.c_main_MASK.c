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
 int /*<<< orphan*/  CU_FILE ; 
 int /*<<< orphan*/  CU_STRING ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  REG_EXTENDED ; 
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int aflag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int eflag ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char**,char*) ; 
 char* inplace ; 
 int ispan ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int nflag ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  prog ; 
 int /*<<< orphan*/  rflags ; 
 int /*<<< orphan*/  rval ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17(int argc, char *argv[])
{
	int c, fflag;
	char *temp_arg;

	(void) FUNC10(LC_ALL, "");

	fflag = 0;
	inplace = NULL;

	while ((c = FUNC7(argc, argv, "EI:ae:f:i:lnru")) != -1)
		switch (c) {
		case 'r':		/* Gnu sed compat */
		case 'E':
			rflags = REG_EXTENDED;
			break;
		case 'I':
			inplace = optarg;
			ispan = 1;	/* span across input files */
			break;
		case 'a':
			aflag = 1;
			break;
		case 'e':
			eflag = 1;
			if ((temp_arg = FUNC8(FUNC14(optarg) + 2)) == NULL)
				FUNC4(1, "malloc");
			FUNC13(temp_arg, optarg);
			FUNC12(temp_arg, "\n");
			FUNC0(CU_STRING, temp_arg);
			break;
		case 'f':
			fflag = 1;
			FUNC0(CU_FILE, optarg);
			break;
		case 'i':
			inplace = optarg;
			ispan = 0;	/* don't span across input files */
			break;
		case 'l':
			if(FUNC11(stdout, NULL, _IOLBF, 0) != 0)
				FUNC16("setting line buffered output failed");
			break;
		case 'n':
			nflag = 1;
			break;
		case 'u':
			if(FUNC11(stdout, NULL, _IONBF, 0) != 0)
				FUNC16("setting unbuffered output failed");
			break;
		default:
		case '?':
			FUNC15();
		}
	argc -= optind;
	argv += optind;

	/* First usage case; script is the first arg */
	if (!eflag && !fflag && *argv) {
		FUNC0(CU_STRING, *argv);
		argv++;
	}

	FUNC3();

	/* Continue with first and start second usage */
	if (*argv)
		for (; *argv; argv++)
			FUNC1(*argv);
	else
		FUNC1(NULL);
	FUNC9();
	FUNC2(prog, NULL);
	if (FUNC6(stdout))
		FUNC4(1, "stdout");
	FUNC5(rval);
}