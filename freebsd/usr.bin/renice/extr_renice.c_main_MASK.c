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
struct passwd {int pw_uid; } ;

/* Variables and functions */
 int PRIO_PGRP ; 
 int PRIO_PROCESS ; 
 int PRIO_USER ; 
 scalar_t__ FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char*,int*) ; 
 struct passwd* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int
FUNC7(int argc, char *argv[])
{
	struct passwd *pwd;
	int errs, incr, prio, which, who;

	errs = 0;
	incr = 0;
	which = PRIO_PROCESS;
	who = 0;
	argc--, argv++;
	if (argc < 2)
		FUNC5();
	if (FUNC4(*argv, "-n") == 0) {
		incr = 1;
		argc--, argv++;
		if (argc < 2)
			FUNC5();
	}
	if (FUNC2("priority", *argv, &prio))
		return (1);
	argc--, argv++;
	for (; argc > 0; argc--, argv++) {
		if (FUNC4(*argv, "-g") == 0) {
			which = PRIO_PGRP;
			continue;
		}
		if (FUNC4(*argv, "-u") == 0) {
			which = PRIO_USER;
			continue;
		}
		if (FUNC4(*argv, "-p") == 0) {
			which = PRIO_PROCESS;
			continue;
		}
		if (which == PRIO_USER) {
			if ((pwd = FUNC3(*argv)) != NULL)
				who = pwd->pw_uid;
			else if (FUNC2("uid", *argv, &who)) {
				errs++;
				continue;
			} else if (who < 0) {
				FUNC6("%s: bad value", *argv);
				errs++;
				continue;
			}
		} else {
			if (FUNC2("pid", *argv, &who)) {
				errs++;
				continue;
			}
			if (who < 0) {
				FUNC6("%s: bad value", *argv);
				errs++;
				continue;
			}
		}
		errs += FUNC0(which, who, prio, incr);
	}
	FUNC1(errs != 0);
}