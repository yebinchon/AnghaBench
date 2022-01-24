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
 int DUMP_ALL ; 
 int DUMP_FBF ; 
 int DUMP_FMT_RAW ; 
 int DUMP_FMT_TXT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,char**,char const*) ; 
 int hex ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int,char**,int*,float,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int,char**,int*) ; 
 int /*<<< orphan*/  FUNC21 (int,char**,int*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int FUNC26 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  vesa_cols ; 
 int /*<<< orphan*/  vesa_rows ; 
 int /*<<< orphan*/  FUNC30 (int,char**,int*) ; 
 scalar_t__ vt4_mode ; 
 int /*<<< orphan*/  FUNC31 (char*,char*) ; 

int
FUNC32(int argc, char **argv)
{
	char    *font, *type, *termmode;
	const char *opts;
	int	dumpmod, dumpopt, opt;

	vt4_mode = FUNC5();

	FUNC4();

	dumpmod = 0;
	dumpopt = DUMP_FBF;
	termmode = NULL;
	if (vt4_mode)
		opts = "b:Cc:fg:h:Hi:M:m:pPr:S:s:T:t:x";
	else
		opts = "b:Cc:deE:fg:h:Hi:l:LM:m:pPr:S:s:T:t:x";

	while ((opt = FUNC3(argc, argv, opts)) != -1)
		switch(opt) {
		case 'b':
			FUNC13(optarg);
			break;
		case 'C':
			FUNC0();
			break;
		case 'c':
			FUNC15(optarg);
			break;
		case 'd':
			if (vt4_mode)
				break;
			FUNC11();
			break;
		case 'E':
			if (vt4_mode)
				break;
			FUNC23(optarg);
			break;
		case 'e':
			if (vt4_mode)
				break;
			FUNC2();
			break;
		case 'f':
			optarg = FUNC10(argc, argv, &optind, 'f', 0);
			if (optarg != NULL) {
				font = FUNC10(argc, argv, &optind, 'f', 0);

				if (font == NULL) {
					type = NULL;
					font = optarg;
				} else
					type = optarg;

				FUNC8(type, font);
			} else {
				if (!vt4_mode)
					FUNC29(); /* Switch syscons to ROM? */

				FUNC7();
			}
			break;
		case 'g':
			if (FUNC26(optarg, "%dx%d",
			    &vesa_cols, &vesa_rows) != 2) {
				FUNC12();
				FUNC31("incorrect geometry: %s", optarg);
				FUNC29();
			}
                	break;
		case 'h':
			FUNC16(optarg);
			break;
		case 'H':
			dumpopt = DUMP_ALL;
			break;
		case 'i':
			FUNC25(optarg);
			break;
		case 'l':
			if (vt4_mode)
				break;
			FUNC9(optarg);
			break;
		case 'L':
			if (vt4_mode)
				break;
			FUNC6();
			break;
		case 'M':
			FUNC19(optarg);
			break;
		case 'm':
			FUNC18(optarg);
			break;
		case 'p':
			dumpmod = DUMP_FMT_RAW;
			break;
		case 'P':
			dumpmod = DUMP_FMT_TXT;
			break;
		case 'r':
			FUNC21(argc, argv, &optind);
			break;
		case 'S':
			FUNC17(optarg);
			break;
		case 's':
			FUNC14(optarg);
			break;
		case 'T':
			if (FUNC27(optarg, "xterm") != 0 &&
			    FUNC27(optarg, "cons25") != 0)
				FUNC29();
			termmode = optarg;
			break;
		case 't':
			FUNC22(optarg);
			break;
		case 'x':
			hex = 1;
			break;
		default:
			FUNC29();
		}

	if (dumpmod != 0)
		FUNC1(dumpmod, dumpopt);
	FUNC30(argc, argv, &optind);
	FUNC20(argc, argv, &optind);

	if (optind < argc && !FUNC27(argv[optind], "show")) {
		FUNC28();
		optind++;
	}

	if (termmode != NULL)
		FUNC24(termmode);

	if ((optind != argc) || (argc == 1))
		FUNC29();
	return (0);
}