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
 int ERROR_EXIT ; 
 int /*<<< orphan*/  LC_ALL ; 
 int OK_EXIT ; 
 int Option ; 
 int /*<<< orphan*/  Pid ; 
 char* ProgramName ; 
 int /*<<< orphan*/  RealUser ; 
 int /*<<< orphan*/  User ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
#define  opt_delete 132 
#define  opt_edit 131 
#define  opt_list 130 
#define  opt_replace 129 
#define  opt_unknown 128 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

int
FUNC14(int argc, char *argv[])
{
	int	exitstatus;

	Pid = FUNC4();
	ProgramName = argv[0];

#if defined(POSIX)
	setlocale(LC_ALL, "");
#endif

#if defined(BSD)
	setlinebuf(stderr);
#endif
	FUNC7(argc, argv);		/* sets many globals, opens a file */
	FUNC10();
	FUNC9();
	if (!FUNC0(User)) {
		FUNC13("you (%s) are not allowed to use this program", User);
		FUNC6(RealUser, Pid, "AUTH", "crontab command not allowed");
		FUNC3(ERROR_EXIT);
	}
	exitstatus = OK_EXIT;
	switch (Option) {
	case opt_list:		FUNC5();
				break;
	case opt_delete:	FUNC1();
				break;
	case opt_edit:		FUNC2();
				break;
	case opt_replace:	if (FUNC8() < 0)
					exitstatus = ERROR_EXIT;
				break;
	case opt_unknown:
				break;
	}
	FUNC3(exitstatus);
	/*NOTREACHED*/
}