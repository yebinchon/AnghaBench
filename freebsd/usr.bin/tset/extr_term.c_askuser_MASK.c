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
typedef  int /*<<< orphan*/  answer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC6 (char*,char) ; 

const char *
FUNC7(const char *dflt)
{
	static char answer[256];
	char *p;

	/* We can get recalled; if so, don't continue uselessly. */
	if (FUNC1(stdin) || FUNC2(stdin)) {
		(void)FUNC5(stderr, "\n");
		FUNC0(1);
	}
	for (;;) {
		if (dflt)
			(void)FUNC5(stderr, "Terminal type? [%s] ", dflt);
		else
			(void)FUNC5(stderr, "Terminal type? ");
		(void)FUNC3(stderr);

		if (FUNC4(answer, sizeof(answer), stdin) == NULL) {
			if (dflt == NULL) {
				(void)FUNC5(stderr, "\n");
				FUNC0(1);
			}
			return (dflt);
		}

		if ((p = FUNC6(answer, '\n')))
			*p = '\0';
		if (answer[0])
			return (answer);
		if (dflt != NULL)
			return (dflt);
	}
}