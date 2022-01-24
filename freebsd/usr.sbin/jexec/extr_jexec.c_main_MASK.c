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
struct passwd {char const* pw_name; char const* pw_dir; char const* pw_shell; int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_gid; } ;
typedef  int /*<<< orphan*/  login_cap_t ;

/* Variables and functions */
 int LOGIN_SETALL ; 
 int LOGIN_SETENV ; 
 int LOGIN_SETGROUP ; 
 int LOGIN_SETLOGIN ; 
 int LOGIN_SETPATH ; 
 char const* _PATH_BSHELL ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char** environ ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char const*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,struct passwd const**,int /*<<< orphan*/ **) ; 
 char* FUNC8 (char*) ; 
 int FUNC9 (int,char**,char*) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  jail_errmsg ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,struct passwd const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int
FUNC17(int argc, char *argv[])
{
	int jid;
	login_cap_t *lcap = NULL;
	int ch, clean, uflag, Uflag;
	char *cleanenv;
	const struct passwd *pwd = NULL;
	const char *username, *shell, *term;

	ch = clean = uflag = Uflag = 0;
	username = NULL;

	while ((ch = FUNC9(argc, argv, "lnu:U:")) != -1) {
		switch (ch) {
		case 'l':
			clean = 1;
			break;
		case 'n':
			/* Specified name, now unused */
			break;
		case 'u':
			username = optarg;
			uflag = 1;
			break;
		case 'U':
			username = optarg;
			Uflag = 1;
			break;
		default:
			FUNC16();
		}
	}
	argc -= optind;
	argv += optind;
	if (argc < 1)
		FUNC16();
	if (uflag && Uflag)
		FUNC16();
	if (uflag || (clean && !Uflag))
		/* User info from the home environment */
		FUNC7(username, &pwd, &lcap);

	/* Attach to the jail */
	jid = FUNC11(argv[0]);
	if (jid < 0)
		FUNC3(1, "%s", jail_errmsg);
	if (FUNC10(jid) == -1)
		FUNC2(1, "jail_attach(%d)", jid);
	if (FUNC0("/") == -1)
		FUNC2(1, "chdir(): /");

	/* Set up user environment */
	if (clean || username != NULL) {
		if (Uflag)
			/* User info from the jail environment */
			FUNC7(username, &pwd, &lcap);
		if (clean) {
			term = FUNC8("TERM");
			cleanenv = NULL;
			environ = &cleanenv;
			FUNC13("PATH", "/bin:/usr/bin", 1);
			if (term != NULL)
				FUNC13("TERM", term, 1);
		}
		if (FUNC14(pwd->pw_gid) != 0)
			FUNC2(1, "setgid");
		if (FUNC15(lcap, pwd, pwd->pw_uid, username
		    ? LOGIN_SETALL & ~LOGIN_SETGROUP & ~LOGIN_SETLOGIN
		    : LOGIN_SETPATH | LOGIN_SETENV) != 0)
			FUNC2(1, "setusercontext");
		FUNC12(lcap);
		FUNC13("USER", pwd->pw_name, 1);
		FUNC13("HOME", pwd->pw_dir, 1);
		FUNC13("SHELL",
		    *pwd->pw_shell ? pwd->pw_shell : _PATH_BSHELL, 1);
		if (clean && FUNC0(pwd->pw_dir) < 0)
			FUNC2(1, "chdir: %s", pwd->pw_dir);
		FUNC1();
	}

	/* Run the specified command, or the shell */
	if (argc > 1) {
		if (FUNC5(argv[1], argv + 1) < 0)
			FUNC2(1, "execvp: %s", argv[1]);
	} else {
		if (!(shell = FUNC8("SHELL")))
			shell = _PATH_BSHELL;
		if (FUNC4(shell, shell, "-i", NULL) < 0)
			FUNC2(1, "execlp: %s", shell);
	}
	FUNC6(0);
}