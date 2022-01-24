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
typedef  scalar_t__ u_long ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 scalar_t__ TAB ; 
#define  WEOF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (int,char**,char*) ; 
 int FUNC3 () ; 
 scalar_t__ optind ; 
 int const FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 

int
FUNC9(int argc, char *argv[])
{
	u_long column, start, stop;
	int ch, width;
	char *p;

	FUNC5(LC_ALL, "");

	while ((ch = FUNC2(argc, argv, "")) != -1)
		switch(ch) {
		case '?':
		default:
			FUNC7();
		}
	argc -= optind;
	argv += optind;

	start = stop = 0;
	switch(argc) {
	case 2:
		stop = FUNC6(argv[1], &p, 10);
		if (stop <= 0 || *p)
			FUNC1(1, "illegal column -- %s", argv[1]);
		/* FALLTHROUGH */
	case 1:
		start = FUNC6(argv[0], &p, 10);
		if (start <= 0 || *p)
			FUNC1(1, "illegal column -- %s", argv[0]);
		break;
	case 0:
		break;
	default:
		FUNC7();
	}

	if (stop && start > stop)
		FUNC1(1, "illegal start and stop columns");

	for (column = 0;;) {
		switch (ch = FUNC3()) {
		case WEOF:
			FUNC0(stdin);
			break;
		case '\b':
			if (column)
				--column;
			break;
		case '\n':
			column = 0;
			break;
		case '\t':
			column = (column + TAB) & ~(TAB - 1);
			break;
		default:
			if ((width = FUNC8(ch)) > 0)
				column += width;
			break;
		}

		if ((!start || column < start || (stop && column > stop)) &&
		    FUNC4(ch) == WEOF)
			FUNC0(stdout);
	}
}