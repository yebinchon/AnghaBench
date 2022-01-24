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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(int argc, char *argv[])
{
	int c, count, linepos, maxcount, pretty, radix;

	maxcount = 0;
	pretty = 0;
	radix = 10;
	while ((c = FUNC2(argc, argv, "n:sx")) != -1) {
		switch (c) {
		case 'n':	/* Max. number of bytes per line. */
			maxcount = FUNC5(optarg, NULL, 10);
			break;
		case 's':	/* Be more style(9) comliant. */
			pretty = 1;
			break;
		case 'x':	/* Print hexadecimal numbers. */
			radix = 16;
			break;
		case '?':
		default:
			FUNC6();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc > 0)
		FUNC3("%s\n", argv[0]);
	count = linepos = 0;
	while((c = FUNC1()) != EOF) {
		if (count) {
			FUNC4(',');
			linepos++;
		}
		if ((maxcount == 0 && linepos > 70) ||
		    (maxcount > 0 && count >= maxcount)) {
			FUNC4('\n');
			count = linepos = 0;
		}
		if (pretty) {
			if (count) {
				FUNC4(' ');
				linepos++;
			} else {
				FUNC4('\t');
				linepos += 8;
			}
		}
		switch (radix) {
		case 10:
			linepos += FUNC3("%d", c);
			break;
		case 16:
			linepos += FUNC3("0x%02x", c);
			break;
		default:
			FUNC0();
		}
		count++;
	}
	FUNC4('\n');
	if (argc > 1)
		FUNC3("%s\n", argv[1]);
	return (0);
}