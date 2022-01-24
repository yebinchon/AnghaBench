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
 int /*<<< orphan*/  CAPH_READ ; 
 char* DC_VER ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  _IOLBF ; 
 char* __progname ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC7 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  long_options ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  src ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16(int argc, char *argv[])
{
	int ch, fd;
	bool extended_regs = false, preproc_done = false;

	/* accept and ignore a single dash to be 4.4BSD dc(1) compatible */
	while ((ch = FUNC7(argc, argv, "e:f:hVx", long_options, NULL)) != -1) {
		switch (ch) {
		case 'e':
			if (!preproc_done)
				FUNC8(extended_regs);
			FUNC14(&src, optarg);
			FUNC11(&src);
			FUNC4();
			preproc_done = true;
			break;
		case 'f':
			if (!preproc_done)
				FUNC8(extended_regs);
			fd = FUNC9(optarg, O_RDONLY);
			if (fd < 0)
				FUNC3(1, "cannot open file %s", optarg);
			FUNC10(fd, optarg);
			preproc_done = true;
			break;
		case 'x':
			extended_regs = true;
			break;
		case 'V':
			FUNC6(stderr, "%s (BSD bc) %s\n", __progname, DC_VER);
			FUNC5(0);
			break;
		case '-':
			break;
		case 'h':
			/* FALLTHROUGH */
		default:
			FUNC15();
		}
	}
	argc -= optind;
	argv += optind;

	if (!preproc_done)
		FUNC8(extended_regs);
	(void)FUNC12(stdout, NULL, _IOLBF, 0);
	(void)FUNC12(stderr, NULL, _IOLBF, 0);

	if (argc > 1)
		FUNC15();
	if (argc == 1) {
		fd = FUNC9(argv[0], O_RDONLY);
		if (fd < 0)
			FUNC3(1, "cannot open file %s", argv[0]);

		if (FUNC2(fd, CAPH_READ) < 0 ||
		    FUNC1() < 0 ||
		    FUNC0() < 0)
			FUNC3(1, "capsicum");

		FUNC10(fd, argv[0]);
		preproc_done = true;
	}
	if (preproc_done)
		return (0);

	if (FUNC1() < 0 || FUNC0())
		FUNC3(1, "capsicum");
	FUNC13(&src, stdin);
	FUNC11(&src);
	FUNC4();

	return (0);
}