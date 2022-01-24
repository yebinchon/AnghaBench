#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  login_cap_t ;
struct TYPE_4__ {char* pw_shell; char* pw_dir; char* pw_name; int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 int LOGIN_SETENV ; 
 int LOGIN_SETPATH ; 
 int LOGIN_SETUMASK ; 
 char* _PATH_BSHELL ; 
 scalar_t__ FUNC0 (char**,char*,char const*) ; 
 char** FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (char*) ; 
 char** environ ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char**) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 TYPE_1__* pwd ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static void
FUNC11(void)
{
	char *args[2], **cleanenv, *term, *ticket;
	const char *shell;
	login_cap_t *lc;

	shell = pwd->pw_shell;
	if (*shell == '\0')
		shell = _PATH_BSHELL;
	if (FUNC2(pwd->pw_dir) < 0) {
		FUNC10("%s", pwd->pw_dir);
		FUNC2("/");
	}

	term = FUNC5("TERM");
	ticket = FUNC5("KRBTKFILE");

	if ((cleanenv = FUNC1(20, sizeof(char *))) == NULL)
		FUNC3(1, "calloc");
	*cleanenv = NULL;
	environ = cleanenv;

	lc = FUNC7(pwd);
	FUNC9(lc, pwd, pwd->pw_uid,
	    LOGIN_SETPATH|LOGIN_SETUMASK|LOGIN_SETENV);
	FUNC6(lc);
	FUNC8("USER", pwd->pw_name, 1);
	FUNC8("SHELL", shell, 1);
	FUNC8("HOME", pwd->pw_dir, 1);
	if (term != NULL)
		FUNC8("TERM", term, 1);
	if (ticket != NULL)
		FUNC8("KRBTKFILE", ticket, 1);

	if (FUNC0(args, "-%s", shell) < 0)
		FUNC3(1, "asprintf");
	args[1] = NULL;

	FUNC4(shell, args);
	FUNC3(1, "%s", shell);
}