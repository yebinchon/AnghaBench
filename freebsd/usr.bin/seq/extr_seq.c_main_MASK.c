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
struct lconv {char* decimal_point; } ;

/* Variables and functions */
 char SPACE ; 
 char ZERO ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,double) ; 
 char* decimal_point ; 
 double FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (double,double,double,int,char) ; 
 int FUNC8 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 () ; 
 struct lconv* FUNC10 () ; 
 int /*<<< orphan*/  long_opts ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC12 (char*,double) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 void* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

int
FUNC16(int argc, char *argv[])
{
	const char *sep, *term;
	struct lconv *locale;
	char pad, *fmt, *cur_print, *last_print;
	double first, last, incr, last_shown_value, cur, step;
	int c, errflg, equalize;

	pad = ZERO;
	fmt = NULL;
	first = 1.0;
	last = incr = last_shown_value = 0.0;
	c = errflg = equalize = 0;
	sep = "\n";
	term = NULL;

	/* Determine the locale's decimal point. */
	locale = FUNC10();
	if (locale && locale->decimal_point && locale->decimal_point[0] != '\0')
		decimal_point = locale->decimal_point;

	/*
         * Process options, but handle negative numbers separately
         * least they trip up getopt(3).
         */
	while ((optind < argc) && !FUNC11(argv[optind]) &&
	    (c = FUNC8(argc, argv, "+f:hs:t:w", long_opts, NULL)) != -1) {

		switch (c) {
		case 'f':	/* format (plan9) */
			fmt = optarg;
			equalize = 0;
			break;
		case 's':	/* separator (GNU) */
			sep = FUNC14(optarg);
			break;
		case 't':	/* terminator (new) */
			term = FUNC14(optarg);
			break;
		case 'w':	/* equal width (plan9) */
			if (!fmt)
				if (equalize++)
					pad = SPACE;
			break;
		case 'h':	/* help (GNU) */
		default:
			errflg++;
			break;
		}
	}

	argc -= optind;
	argv += optind;
	if (argc < 1 || argc > 3)
		errflg++;

	if (errflg) {
		FUNC4(stderr,
		    "usage: %s [-w] [-f format] [-s string] [-t string] [first [incr]] last\n",
		    FUNC9());
		FUNC3(1);
	}

	last = FUNC1(argv[argc - 1]);

	if (argc > 1)
		first = FUNC1(argv[0]);
	
	if (argc > 2) {
		incr = FUNC1(argv[1]);
		/* Plan 9/GNU don't do zero */
		if (incr == 0.0)
			FUNC2(1, "zero %screment", (first < last)? "in" : "de");
	}

	/* default is one for Plan 9/GNU work alike */
	if (incr == 0.0)
		incr = (first < last) ? 1.0 : -1.0;

	if (incr <= 0.0 && first < last)
		FUNC2(1, "needs positive increment");

	if (incr >= 0.0 && first > last)
		FUNC2(1, "needs negative decrement");

	if (fmt != NULL) {
		if (!FUNC15(fmt))
			FUNC2(1, "invalid format string: `%s'", fmt);
		fmt = FUNC14(fmt);
		if (!FUNC15(fmt))
			FUNC2(1, "invalid format string");
		/*
	         * XXX to be bug for bug compatible with Plan 9 add a
		 * newline if none found at the end of the format string.
		 */
	} else
		fmt = FUNC7(first, incr, last, equalize, pad);

	for (step = 1, cur = first; incr > 0 ? cur <= last : cur >= last;
	    cur = first + incr * step++) {
		FUNC12(fmt, cur);
		FUNC5(sep, stdout);
		last_shown_value = cur;
	}

	/*
	 * Did we miss the last value of the range in the loop above?
	 *
	 * We might have, so check if the printable version of the last
	 * computed value ('cur') and desired 'last' value are equal.  If they
	 * are equal after formatting truncation, but 'cur' and
	 * 'last_shown_value' are not equal, it means the exit condition of the
	 * loop held true due to a rounding error and we still need to print
	 * 'last'.
	 */
	FUNC0(&cur_print, fmt, cur);
	FUNC0(&last_print, fmt, last);
	if (FUNC13(cur_print, last_print) == 0 && cur != last_shown_value) {
		FUNC5(last_print, stdout);
		FUNC5(sep, stdout);
	}
	FUNC6(cur_print);
	FUNC6(last_print);

	if (term != NULL)
		FUNC5(term, stdout);

	return (0);
}