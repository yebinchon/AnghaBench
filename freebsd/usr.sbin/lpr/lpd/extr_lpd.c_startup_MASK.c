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
struct printer {char* printer; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ FUNC0 (struct printer*) ; 
 int FUNC1 (struct printer*,int*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ lflag ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct printer*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct printer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	int pid, status, more;
	struct printer myprinter, *pp = &myprinter;

	more = FUNC1(pp, &status);
	if (status)
		goto errloop;
	while (more) {
		if (FUNC0(pp) <= 0) {
			goto next;
		}
		if (lflag)
			FUNC7(LOG_INFO, "lpd startup: work for %s",
			    pp->printer);
		if ((pid = FUNC2()) < 0) {
			FUNC7(LOG_WARNING, "lpd startup: cannot fork for %s",
			    pp->printer);
			FUNC4(0);
		}
		if (pid == 0) {
			FUNC3();
			FUNC6(pp);
			/* NOTREACHED */
		}
		do {
next:
			more = FUNC5(pp, &status);
errloop:
			if (status)
				FUNC7(LOG_WARNING, 
				    "lpd startup: printcap entry for %s has errors, skipping",
				    pp->printer ? pp->printer : "<noname?>");
		} while (more && status);
	}
}