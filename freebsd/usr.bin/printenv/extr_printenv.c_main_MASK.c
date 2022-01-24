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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 char** environ ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 size_t FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char *argv[])
{
	char *cp, **ep;
	size_t len;
	int ch;

	if (FUNC1() < 0 || FUNC0() < 0)
		FUNC2(1, "capsicum");

	while ((ch = FUNC4(argc, argv, "")) != -1)
		switch(ch) {
		case '?':
		default:
			FUNC8();
		}
	argc -= optind;
	argv += optind;

	if (argc == 0) {
		for (ep = environ; *ep; ep++)
			(void)FUNC6("%s\n", *ep);
		FUNC3(0);
	}
	len = FUNC7(*argv);
	for (ep = environ; *ep; ep++)
		if (!FUNC5(*ep, *argv, len)) {
			cp = *ep + len;
			if (*cp == '=') {
				(void)FUNC6("%s\n", cp + 1);
				FUNC3(0);
			}
		}
	FUNC3(1);
}