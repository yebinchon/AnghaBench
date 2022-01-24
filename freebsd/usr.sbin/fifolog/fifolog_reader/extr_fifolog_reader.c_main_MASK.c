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
struct fifolog_reader {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  REG_NOSUB ; 
 int /*<<< orphan*/  Render ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char* const) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct fifolog_reader* FUNC5 (char* const) ; 
 int /*<<< orphan*/  FUNC6 (struct fifolog_reader*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fifolog_reader*,int) ; 
 int /*<<< orphan*/ * fo ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC10 (void*) ; 
 int FUNC11 (int,char* const*,char*) ; 
 int opt_B ; 
 int opt_E ; 
 int /*<<< orphan*/ * opt_R ; 
 char* opt_T ; 
 char* opt_o ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int FUNC15 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int*) ; 

int
FUNC17(int argc, char * const *argv)
{
	int ch, i;
	off_t o;
	struct fifolog_reader *fl;

	FUNC16(&opt_E);
	opt_o = "-";
	while ((ch = FUNC11(argc, argv, "b:B:e:E:o:R:tT:")) != -1) {
		switch (ch) {
		case 'b':
			opt_B = FUNC15(optarg, NULL, 0);
			break;
		case 'B':
			opt_B = FUNC10(optarg);
			if (opt_B == -1)
				FUNC3(1, "Didn't understand \"%s\"", optarg);
			break;
		case 'e':
			opt_E = FUNC15(optarg, NULL, 0);
			break;
		case 'E':
			opt_E = FUNC10(optarg);
			if (opt_E == -1)
				FUNC3(1, "Didn't understand \"%s\"", optarg);
			break;
		case 'o':
			opt_o = optarg;
			break;
		case 'R':
			opt_R = optarg;
			break;
		case 't':
			opt_T = "%Y%m%d%H%M%S";
			break;
		case 'T':
			opt_T = optarg;
			break;
		default:
			FUNC0();
		}
	}
	argc -= optind;
	argv += optind;

	if (opt_R != NULL) {
		i = FUNC12(&R, opt_R, REG_NOSUB);
		if (i != 0) {
			char buf[BUFSIZ];
			(void)FUNC13(i, &R, buf, sizeof buf);
			FUNC9(stderr, "-R argument: %s\n", buf);
			FUNC4 (1);
		}
	}

	if (argv[0] == NULL)
		FUNC0();

	FUNC9(stderr, "From\t%s %d", (intmax_t)opt_B, FUNC1(&opt_B));
	FUNC9(stderr, "To\t%s %d", (intmax_t)opt_E, FUNC1(&opt_E));
	if (opt_B >= opt_E)
		FUNC3(1, "Begin time not before End time");

	fl = FUNC5(argv[0]);

	if (!FUNC14(opt_o, "-"))
		fo = stdout;
	else {
		fo = FUNC8(opt_o, "w");
		if (fo == NULL)
			FUNC2(1, "Cannot open: %s", argv[1]);
	}

	o = FUNC7(fl, opt_B);
	FUNC6(fl, o, Render, NULL, opt_E);
	return (0);
}