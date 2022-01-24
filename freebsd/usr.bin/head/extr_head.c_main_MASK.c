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
typedef  int off_t ;
typedef  int /*<<< orphan*/  fileargs_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FCNTL ; 
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  FA_OPEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  long_opts ; 
 int /*<<< orphan*/  FUNC14 (char**) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 int FUNC16 (int /*<<< orphan*/ ,char**,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,char**,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 

int
FUNC20(int argc, char *argv[])
{
	FILE *fp;
	char *ep;
	off_t bytecnt;
	int ch, first, linecnt, eval;
	fileargs_t *fa;
	cap_rights_t rights;

	linecnt = -1;
	eval = 0;
	bytecnt = -1;

	FUNC14(argv);
	while ((ch = FUNC11(argc, argv, "+n:c:", long_opts, NULL)) != -1) {
		switch(ch) {
		case 'c':
			bytecnt = FUNC16(optarg, &ep, 10);
			if (*ep || bytecnt <= 0)
				FUNC5(1, "illegal byte count -- %s", optarg);
			break;
		case 'n':
			linecnt = FUNC17(optarg, &ep, 10);
			if (*ep || linecnt <= 0)
				FUNC5(1, "illegal line count -- %s", optarg);
			break;
		case '?':
		default:
			FUNC18();
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	fa = FUNC10(argc, argv, O_RDONLY, 0,
	    FUNC0(&rights, CAP_READ, CAP_FSTAT, CAP_FCNTL), FA_OPEN);
	if (fa == NULL)
		FUNC4(1, "unable to init casper");

	FUNC1();
	if (FUNC3() < 0 || FUNC2() < 0)
		FUNC4(1, "unable to enter capability mode");

	if (linecnt != -1 && bytecnt != -1)
		FUNC5(1, "can't combine line and byte counts");
	if (linecnt == -1)
		linecnt = 10;
	if (*argv != NULL) {
		for (first = 1; *argv != NULL; ++argv) {
			if ((fp = FUNC8(fa, *argv, "r")) == NULL) {
				FUNC19("%s", *argv);
				eval = 1;
				continue;
			}
			if (argc > 1) {
				(void)FUNC15("%s==> %s <==\n",
				    first ? "" : "\n", *argv);
				first = 0;
			}
			if (bytecnt == -1)
				FUNC12(fp, linecnt);
			else
				FUNC13(fp, bytecnt);
			(void)FUNC7(fp);
		}
	} else if (bytecnt == -1)
		FUNC12(stdin, linecnt);
	else
		FUNC13(stdin, bytecnt);

	FUNC9(fa);
	FUNC6(eval);
}