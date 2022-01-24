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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int LINE_MAX ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,char**,char*) ; 
 int /*<<< orphan*/  hflag ; 
 scalar_t__ FUNC10 (char) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC12 () ; 

int
FUNC13(int argc, char *argv[])
{
	BIGNUM *val;
	int ch;
	char *p, buf[LINE_MAX];		/* > max number of digits. */

	ctx = FUNC0();
	val = FUNC3();
	if (val == NULL)
		FUNC5(1, "can't initialise bignum");

	while ((ch = FUNC9(argc, argv, "h")) != -1)
		switch (ch) {
		case 'h':
			hflag++;
			break;
		case '?':
		default:
			FUNC12();
		}
	argc -= optind;
	argv += optind;

	/* No args supplied, read numbers from stdin. */
	if (argc == 0)
		for (;;) {
			if (FUNC8(buf, sizeof(buf), stdin) == NULL) {
				if (FUNC7(stdin))
					FUNC4(1, "stdin");
				FUNC6 (0);
			}
			for (p = buf; FUNC10(*p); ++p);
			if (*p == '\n' || *p == '\0')
				continue;
			if (*p == '-')
				FUNC5(1, "negative numbers aren't permitted.");
			if (FUNC1(&val, buf) == 0 &&
			    FUNC2(&val, buf) == 0)
				FUNC5(1, "%s: illegal numeric format.", buf);
			FUNC11(val);
		}
	/* Factor the arguments. */
	else
		for (; *argv != NULL; ++argv) {
			if (argv[0][0] == '-')
				FUNC5(1, "negative numbers aren't permitted.");
			if (FUNC1(&val, argv[0]) == 0 &&
			    FUNC2(&val, argv[0]) == 0)
				FUNC5(1, "%s: illegal numeric format.", argv[0]);
			FUNC11(val);
		}
	FUNC6(0);
}