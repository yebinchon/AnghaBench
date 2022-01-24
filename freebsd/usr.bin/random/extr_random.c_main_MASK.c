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
 int EOF ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 double RANDOM_MAX_PLUS1 ; 
 int RANDOM_TYPE_LINES ; 
 int RANDOM_TYPE_UNSET ; 
 int RANDOM_TYPE_WORDS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int FUNC5 (int,char**,char*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 double FUNC8 () ; 
 int FUNC9 (int,int,int,double) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 double FUNC14 (char*,char**) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16(int argc, char *argv[])
{
	double denom;
	int ch, fd, random_exit, randomize_lines, random_type, ret,
		selected, unique_output, unbuffer_output;
	char *ep;
	const char *filename;

	denom = 0;
	filename = "/dev/fd/0";
	random_type = RANDOM_TYPE_UNSET;
	random_exit = randomize_lines = unbuffer_output = 0;
	unique_output = 1;

	(void)FUNC11(LC_CTYPE, "");

	while ((ch = FUNC5(argc, argv, "ef:hlruUw")) != -1)
		switch (ch) {
		case 'e':
			random_exit = 1;
			break;
		case 'f':
			randomize_lines = 1;
			if (FUNC13(optarg, "-") != 0)
				filename = optarg;
			break;
		case 'l':
			randomize_lines = 1;
			random_type = RANDOM_TYPE_LINES;
			break;
		case 'r':
			unbuffer_output = 1;
			break;
		case 'u':
			randomize_lines = 1;
			unique_output = 1;
			break;
		case 'U':
			randomize_lines = 1;
			unique_output = 0;
			break;
		case 'w':
			randomize_lines = 1;
			random_type = RANDOM_TYPE_WORDS;
			break;
		default:
		case '?':
			FUNC15();
			/* NOTREACHED */
		}

	argc -= optind;
	argv += optind;

	switch (argc) {
	case 0:
		denom = (randomize_lines ? 1 : 2);
		break;
	case 1:
		errno = 0;
		denom = FUNC14(*argv, &ep);
		if (errno == ERANGE)
			FUNC0(1, "%s", *argv);
		if (denom <= 0 || *ep != '\0')
			FUNC1(1, "denominator is not valid.");
		if (random_exit && denom > 256)
			FUNC1(1, "denominator must be <= 256 for random exit.");
		break;
	default:
		FUNC15();
		/* NOTREACHED */
	}

	FUNC12();

	/*
	 * Act as a filter, randomly choosing lines of the standard input
	 * to write to the standard output.
	 */
	if (unbuffer_output)
		FUNC10(stdout, NULL);

	/*
	 * Act as a filter, randomizing lines read in from a given file
	 * descriptor and write the output to standard output.
	 */
	if (randomize_lines) {
		if ((fd = FUNC6(filename, O_RDONLY, 0)) < 0)
			FUNC0(1, "%s", filename);
		ret = FUNC9(fd, random_type, unique_output, denom);
		if (!random_exit)
			return(ret);
	}

	/* Compute a random exit status between 0 and denom - 1. */
	if (random_exit)
		return (int)(denom * FUNC8() / RANDOM_MAX_PLUS1);

	/*
	 * Select whether to print the first line.  (Prime the pump.)
	 * We find a random number between 0 and denom - 1 and, if it's
	 * 0 (which has a 1 / denom chance of being true), we select the
	 * line.
	 */
	selected = (int)(denom * FUNC8() / RANDOM_MAX_PLUS1) == 0;
	while ((ch = FUNC4()) != EOF) {
		if (selected)
			(void)FUNC7(ch);
		if (ch == '\n') {
			/* End of that line.  See if we got an error. */
			if (FUNC3(stdout))
				FUNC0(2, "stdout");

			/* Now see if the next line is to be printed. */
			selected = (int)(denom * FUNC8() /
				RANDOM_MAX_PLUS1) == 0;
		}
	}
	if (FUNC3(stdin))
		FUNC0(2, "stdin");
	FUNC2 (0);
}