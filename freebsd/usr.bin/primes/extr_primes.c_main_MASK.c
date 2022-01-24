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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ ubig ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  hflag ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char *argv[])
{
	ubig start;		/* where to start generating */
	ubig stop;		/* don't generate at or above this value */
	int ch;
	char *p;

	FUNC0();
	if (FUNC1() < 0)
		FUNC2(1, "cap_enter");

	while ((ch = FUNC4(argc, argv, "h")) != -1)
		switch (ch) {
		case 'h':
			hflag++;
			break;
		case '?':
		default:
			FUNC8();
		}
	argc -= optind;
	argv += optind;

	start = 0;
	stop = (uint64_t)(-1);

	/*
	 * Convert low and high args.  Strtoumax(3) sets errno to
	 * ERANGE if the number is too large, but, if there's
	 * a leading minus sign it returns the negation of the
	 * result of the conversion, which we'd rather disallow.
	 */
	switch (argc) {
	case 2:
		/* Start and stop supplied on the command line. */
		if (argv[0][0] == '-' || argv[1][0] == '-')
			FUNC3(1, "negative numbers aren't permitted.");

		errno = 0;
		start = FUNC7(argv[0], &p, 0);
		if (errno)
			FUNC2(1, "%s", argv[0]);
		if (*p != '\0')
			FUNC3(1, "%s: illegal numeric format.", argv[0]);

		errno = 0;
		stop = FUNC7(argv[1], &p, 0);
		if (errno)
			FUNC2(1, "%s", argv[1]);
		if (*p != '\0')
			FUNC3(1, "%s: illegal numeric format.", argv[1]);
		break;
	case 1:
		/* Start on the command line. */
		if (argv[0][0] == '-')
			FUNC3(1, "negative numbers aren't permitted.");

		errno = 0;
		start = FUNC7(argv[0], &p, 0);
		if (errno)
			FUNC2(1, "%s", argv[0]);
		if (*p != '\0')
			FUNC3(1, "%s: illegal numeric format.", argv[0]);
		break;
	case 0:
		start = FUNC6();
		break;
	default:
		FUNC8();
	}

	if (start > stop)
		FUNC3(1, "start value must be less than stop value.");
	FUNC5(start, stop);
	return (0);
}