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
 int DEFLINEWIDTH ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int bflag ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int sflag ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

int
FUNC9(int argc, char **argv)
{
	int ch, previous_ch;
	int rval, width;

	(void) FUNC6(LC_CTYPE, "");

	width = -1;
	previous_ch = 0;
	while ((ch = FUNC5(argc, argv, "0123456789bsw:")) != -1) {
		switch (ch) {
		case 'b':
			bflag = 1;
			break;
		case 's':
			sflag = 1;
			break;
		case 'w':
			if ((width = FUNC0(optarg)) <= 0) {
				FUNC1(1, "illegal width value");
			}
			break;
		case '0': case '1': case '2': case '3': case '4':
		case '5': case '6': case '7': case '8': case '9':
			/* Accept a width as eg. -30. Note that a width
			 * specified using the -w option is always used prior
			 * to this undocumented option. */
			switch (previous_ch) {
			case '0': case '1': case '2': case '3': case '4':
			case '5': case '6': case '7': case '8': case '9':
				/* The width is a number with multiple digits:
				 * add the last one. */
				width = width * 10 + (ch - '0');
				break;
			default:
				/* Set the width, unless it was previously
				 * set. For instance, the following options
				 * would all give a width of 5 and not 10:
				 *   -10 -w5
				 *   -5b10
				 *   -5 -10b */
				if (width == -1)
					width = ch - '0';
				break;
			}
			break;
		default:
			FUNC7();
		}
		previous_ch = ch;
	}
	argv += optind;
	argc -= optind;

	if (width == -1)
		width = DEFLINEWIDTH;
	rval = 0;
	if (!*argv)
		FUNC3(width);
	else for (; *argv; ++argv)
		if (!FUNC4(*argv, "r", stdin)) {
			FUNC8("%s", *argv);
			rval = 1;
		} else
			FUNC3(width);
	FUNC2(rval);
}