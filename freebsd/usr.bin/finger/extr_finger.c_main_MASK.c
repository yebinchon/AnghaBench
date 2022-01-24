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
struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; } ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  UNPRIV_NAME ; 
 scalar_t__ UNPRIV_UGID ; 
 scalar_t__ entries ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 struct passwd* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int invoker_root ; 
 int lflag ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  now ; 
 int oflag ; 
 int FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int sflag ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,char**) ; 

int
FUNC16(int argc, char **argv)
{
	int envargc, argcnt;
	char *envargv[3];
	struct passwd *pw;
	static char myname[] = "finger";

	if (FUNC4() == 0 || FUNC2() == 0) {
		invoker_root = 1;
		if ((pw = FUNC3(UNPRIV_NAME)) && pw->pw_uid > 0) {
			if (FUNC9(pw->pw_gid) != 0)
				FUNC0(1, "setgid()");
			if (FUNC12(pw->pw_uid) != 0)
				FUNC0(1, "setuid()");
		} else {
			if (FUNC9(UNPRIV_UGID) != 0)
				FUNC0(1, "setgid()");
			if (FUNC12(UNPRIV_UGID) != 0)
				FUNC0(1, "setuid()");
		}
	}

	(void) FUNC10(LC_ALL, "");

				/* remove this line to get remote host */
	oflag = 1;		/* default to old "office" behavior */

	/*
	 * Process environment variables followed by command line arguments.
	 */
	if ((envargv[1] = FUNC1("FINGER"))) {
		envargc = 2;
		envargv[0] = myname;
		envargv[2] = NULL;
		(void) FUNC7(envargc, envargv);
	}

	argcnt = FUNC7(argc, argv);
	argc -= argcnt;
	argv += argcnt;

	(void)FUNC14(&now);
	FUNC11(1);
	if (!*argv) {
		/*
		 * Assign explicit "small" format if no names given and -l
		 * not selected.  Force the -s BEFORE we get names so proper
		 * screening will be done.
		 */
		if (!lflag)
			sflag = 1;	/* if -l not explicit, force -s */
		FUNC6();
		if (entries == 0)
			(void)FUNC8("No one logged on.\n");
	} else {
		FUNC15(argc, argv);
		/*
		 * Assign explicit "large" format if names given and -s not
		 * explicitly stated.  Force the -l AFTER we get names so any
		 * remote finger attempts specified won't be mishandled.
		 */
		if (!sflag)
			lflag = 1;	/* if -s not explicit, force -l */
	}
	if (entries) {
		if (lflag)
			FUNC5();
		else
			FUNC13();
	}
	return (0);
}