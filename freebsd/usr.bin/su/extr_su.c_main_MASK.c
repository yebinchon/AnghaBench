#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
typedef  int u_int ;
struct sigaction {void* sa_handler; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_flags; } ;
struct passwd {scalar_t__ pw_uid; char const* pw_name; char* pw_shell; char const* pw_dir; } ;
struct pam_conv {int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  shellbuf ;
typedef  int pid_t ;
struct TYPE_6__ {char* lc_class; } ;
typedef  TYPE_1__ login_cap_t ;
typedef  enum tristate { ____Placeholder_tristate } tristate ;
typedef  int /*<<< orphan*/  au_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUE_su ; 
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  EPERM ; 
 int LOGIN_SETALL ; 
 int LOGIN_SETENV ; 
 int LOGIN_SETGROUP ; 
 int LOGIN_SETLOGIN ; 
 int LOGIN_SETMAC ; 
 int LOGIN_SETPATH ; 
 int LOGIN_SETPRIORITY ; 
 int LOGIN_SETRESOURCES ; 
 int LOGIN_SETUMASK ; 
 int LOG_AUTH ; 
 int /*<<< orphan*/  LOG_CONS ; 
 int LOG_ERR ; 
 int LOG_NOTICE ; 
 int LOG_WARNING ; 
 int MAXLOGNAME ; 
 int MAXPATHLEN ; 
 int NO ; 
 int /*<<< orphan*/  PAM_CHANGE_EXPIRED_AUTHTOK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PAM_ESTABLISH_CRED ; 
 int PAM_NEW_AUTHTOK_REQD ; 
 int /*<<< orphan*/  PAM_RUSER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int PAM_SUCCESS ; 
 int /*<<< orphan*/  PAM_TTY ; 
 int /*<<< orphan*/  PAM_USER ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTOU ; 
 void* SIG_DFL ; 
 void* SIG_IGN ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int UNSET ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  WUNTRACED ; 
 int YES ; 
 char* _PATH_BSHELL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char** environ ; 
 int /*<<< orphan*/  environ_pam ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char* const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 char* FUNC15 (char*) ; 
 scalar_t__ FUNC16 () ; 
 char* FUNC17 () ; 
 int FUNC18 (int,char**,char*) ; 
 int FUNC19 (int) ; 
 int FUNC20 () ; 
 int FUNC21 () ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct passwd* FUNC23 (char const*) ; 
 struct passwd* FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 TYPE_1__* FUNC28 (char*) ; 
 TYPE_1__* FUNC29 (struct passwd*) ; 
 char** FUNC30 (int) ; 
 char const* FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  openpam_ttyconv ; 
 char* optarg ; 
 int optind ; 
 int FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const**) ; 
 char* FUNC37 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC41 (char*,char const*,struct pam_conv*,int /*<<< orphan*/ *) ; 
 char* FUNC42 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pamh ; 
 int FUNC43 (int*) ; 
 int /*<<< orphan*/  FUNC44 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC45 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC46 (int,int) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC48 (TYPE_1__*,struct passwd*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC51 (char const*,char*) ; 
 char* FUNC52 (char const*) ; 
 int /*<<< orphan*/  FUNC53 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC54 (char*,char*,int) ; 
 int FUNC55 (char const*) ; 
 char* FUNC56 (char const*,char) ; 
 int /*<<< orphan*/  FUNC57 (int,char*,char*,...) ; 
 int FUNC58 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC59 (int /*<<< orphan*/ ,int) ; 
 char* FUNC60 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC61 () ; 
 int FUNC62 (int,int*,int /*<<< orphan*/ ) ; 

int
FUNC63(int argc, char *argv[])
{
	static char	*cleanenv;
	struct passwd	*pwd = NULL;
	struct pam_conv	conv = { &openpam_ttyconv, NULL };
	enum tristate	iscsh;
	login_cap_t	*lc;
	union {
		const char	**a;
		char		* const *b;
	}		np;
	uid_t		ruid;
	pid_t		child_pid, child_pgrp, pid;
	int		asme, ch, asthem, fastlogin, prio, i, retcode,
			statusp, setmaclabel;
	u_int		setwhat;
	char		*username, *class, shellbuf[MAXPATHLEN];
	const char	*p, *user, *shell, *mytty, **nargv;
	const void	*v;
	struct sigaction sa, sa_int, sa_quit, sa_pipe;
	int temp, fds[2];
#ifdef USE_BSM_AUDIT
	const char	*aerr;
	au_id_t		 auid;
#endif

	p = shell = class = cleanenv = NULL;
	asme = asthem = fastlogin = statusp = 0;
	user = "root";
	iscsh = UNSET;
	setmaclabel = 0;

	while ((ch = FUNC18(argc, argv, "-flmsc:")) != -1)
		switch ((char)ch) {
		case 'f':
			fastlogin = 1;
			break;
		case '-':
		case 'l':
			asme = 0;
			asthem = 1;
			break;
		case 'm':
			asme = 1;
			asthem = 0;
			break;
		case 's':
			setmaclabel = 1;
			break;
		case 'c':
			class = optarg;
			break;
		case '?':
		default:
			FUNC61();
		/* NOTREACHED */
		}

	if (optind < argc)
		user = argv[optind++];

	if (user == NULL)
		FUNC61();
	/* NOTREACHED */

	/*
	 * Try to provide more helpful debugging output if su(1) is running
	 * non-setuid, or was run from a file system not mounted setuid.
	 */
	if (FUNC16() != 0)
		FUNC9(1, "not running setuid");

#ifdef USE_BSM_AUDIT
	if (getauid(&auid) < 0 && errno != ENOSYS) {
		syslog(LOG_AUTH | LOG_ERR, "getauid: %s", strerror(errno));
		errx(1, "Permission denied");
	}
#endif
	if (FUNC55(user) > MAXLOGNAME - 1) {
#ifdef USE_BSM_AUDIT
		if (audit_submit(AUE_su, auid,
		    EPERM, 1, "username too long: '%s'", user))
			errx(1, "Permission denied");
#endif
		FUNC9(1, "username too long");
	}

	nargv = FUNC30(sizeof(char *) * (size_t)(argc + 4));
	if (nargv == NULL)
		FUNC9(1, "malloc failure");

	nargv[argc + 3] = NULL;
	for (i = argc; i >= optind; i--)
		nargv[i + 3] = argv[i];
	np.a = &nargv[i + 3];

	argv += optind;

	errno = 0;
	prio = FUNC22(PRIO_PROCESS, 0);
	if (errno)
		prio = 0;

	FUNC47(PRIO_PROCESS, 0, -2);
	FUNC32("su", LOG_CONS, LOG_AUTH);

	/* get current login name, real uid and shell */
	ruid = FUNC25();
	username = FUNC17();
	if (username != NULL)
		pwd = FUNC23(username);
	if (pwd == NULL || pwd->pw_uid != ruid)
		pwd = FUNC24(ruid);
	if (pwd == NULL) {
#ifdef USE_BSM_AUDIT
		if (audit_submit(AUE_su, auid, EPERM, 1,
		    "unable to determine invoking subject: '%s'", username))
			errx(1, "Permission denied");
#endif
		FUNC9(1, "who are you?");
	}

	username = FUNC52(pwd->pw_name);
	if (username == NULL)
		FUNC8(1, "strdup failure");

	if (asme) {
		if (pwd->pw_shell != NULL && *pwd->pw_shell != '\0') {
			/* must copy - pwd memory is recycled */
			FUNC54(shellbuf, pwd->pw_shell,
			    sizeof(shellbuf));
			shell = shellbuf;
		}
		else {
			shell = _PATH_BSHELL;
			iscsh = NO;
		}
	}

	/* Do the whole PAM startup thing */
	retcode = FUNC41("su", user, &conv, &pamh);
	if (retcode != PAM_SUCCESS) {
		FUNC57(LOG_ERR, "pam_start: %s", FUNC42(pamh, retcode));
		FUNC9(1, "pam_start: %s", FUNC42(pamh, retcode));
	}

	FUNC1(PAM_RUSER, username);

	mytty = FUNC60(STDERR_FILENO);
	if (!mytty)
		mytty = "tty";
	FUNC1(PAM_TTY, mytty);

	retcode = FUNC34(pamh, 0);
	if (retcode != PAM_SUCCESS) {
#ifdef USE_BSM_AUDIT
		if (audit_submit(AUE_su, auid, EPERM, 1, "bad su %s to %s on %s",
		    username, user, mytty))
			errx(1, "Permission denied");
#endif
		FUNC57(LOG_AUTH|LOG_WARNING, "BAD SU %s to %s on %s",
		    username, user, mytty);
		FUNC9(1, "Sorry");
	}
#ifdef USE_BSM_AUDIT
	if (audit_submit(AUE_su, auid, 0, 0, "successful authentication"))
		errx(1, "Permission denied");
#endif
	retcode = FUNC36(pamh, PAM_USER, &v);
	if (retcode == PAM_SUCCESS)
		user = v;
	else
		FUNC57(LOG_ERR, "pam_get_item(PAM_USER): %s",
		    FUNC42(pamh, retcode));
	pwd = FUNC23(user);
	if (pwd == NULL) {
#ifdef USE_BSM_AUDIT
		if (audit_submit(AUE_su, auid, EPERM, 1,
		    "unknown subject: %s", user))
			errx(1, "Permission denied");
#endif
		FUNC9(1, "unknown login: %s", user);
	}

	retcode = FUNC33(pamh, 0);
	if (retcode == PAM_NEW_AUTHTOK_REQD) {
		retcode = FUNC35(pamh,
			PAM_CHANGE_EXPIRED_AUTHTOK);
		if (retcode != PAM_SUCCESS) {
#ifdef USE_BSM_AUDIT
			aerr = pam_strerror(pamh, retcode);
			if (aerr == NULL)
				aerr = "Unknown PAM error";
			if (audit_submit(AUE_su, auid, EPERM, 1,
			    "pam_chauthtok: %s", aerr))
				errx(1, "Permission denied");
#endif
			FUNC57(LOG_ERR, "pam_chauthtok: %s",
			    FUNC42(pamh, retcode));
			FUNC9(1, "Sorry");
		}
	}
	if (retcode != PAM_SUCCESS) {
#ifdef USE_BSM_AUDIT
		if (audit_submit(AUE_su, auid, EPERM, 1, "pam_acct_mgmt: %s",
		    pam_strerror(pamh, retcode)))
			errx(1, "Permission denied");
#endif
		FUNC57(LOG_ERR, "pam_acct_mgmt: %s",
			FUNC42(pamh, retcode));
		FUNC9(1, "Sorry");
	}

	/* get target login information */
	if (class == NULL)
		lc = FUNC29(pwd);
	else {
		if (ruid != 0) {
#ifdef USE_BSM_AUDIT
			if (audit_submit(AUE_su, auid, EPERM, 1,
			    "only root may use -c"))
				errx(1, "Permission denied");
#endif
			FUNC9(1, "only root may use -c");
		}
		lc = FUNC28(class);
		if (lc == NULL)
			FUNC8(1, "login_getclass");
		if (lc->lc_class == NULL || FUNC51(class, lc->lc_class) != 0)
			FUNC9(1, "unknown class: %s", class);
	}

	/* if asme and non-standard target shell, must be root */
	if (asme) {
		if (ruid != 0 && !FUNC6(pwd->pw_shell))
			FUNC9(1, "permission denied (shell)");
	}
	else if (pwd->pw_shell && *pwd->pw_shell) {
		shell = pwd->pw_shell;
		iscsh = UNSET;
	}
	else {
		shell = _PATH_BSHELL;
		iscsh = NO;
	}

	/* if we're forking a csh, we want to slightly muck the args */
	if (iscsh == UNSET) {
		p = FUNC56(shell, '/');
		if (p)
			++p;
		else
			p = shell;
		iscsh = FUNC51(p, "csh") ? (FUNC51(p, "tcsh") ? NO : YES) : YES;
	}
	FUNC47(PRIO_PROCESS, 0, prio);

	/*
	 * PAM modules might add supplementary groups in pam_setcred(), so
	 * initialize them first.
	 */
	if (FUNC48(lc, pwd, pwd->pw_uid, LOGIN_SETGROUP) < 0)
		FUNC8(1, "setusercontext");

	retcode = FUNC40(pamh, PAM_ESTABLISH_CRED);
	if (retcode != PAM_SUCCESS) {
		FUNC57(LOG_ERR, "pam_setcred: %s",
		    FUNC42(pamh, retcode));
		FUNC9(1, "failed to establish credentials.");
	}
	if (asthem) {
		retcode = FUNC39(pamh, 0);
		if (retcode != PAM_SUCCESS) {
			FUNC57(LOG_ERR, "pam_open_session: %s",
			    FUNC42(pamh, retcode));
			FUNC9(1, "failed to open session.");
		}
	}

	/*
	 * We must fork() before setuid() because we need to call
	 * pam_setcred(pamh, PAM_DELETE_CRED) as root.
	 */
	sa.sa_flags = SA_RESTART;
	sa.sa_handler = SIG_IGN;
	FUNC50(&sa.sa_mask);
	FUNC49(SIGINT, &sa, &sa_int);
	FUNC49(SIGQUIT, &sa, &sa_quit);
	FUNC49(SIGPIPE, &sa, &sa_pipe);
	sa.sa_handler = SIG_DFL;
	FUNC49(SIGTSTP, &sa, NULL);
	statusp = 1;
	if (FUNC43(fds) == -1) {
		FUNC0();
		FUNC8(1, "pipe");
	}
	child_pid = FUNC13();
	switch (child_pid) {
	default:
		sa.sa_handler = SIG_IGN;
		FUNC49(SIGTTOU, &sa, NULL);
		FUNC7(fds[0]);
		FUNC46(child_pid, child_pid);
		if (FUNC58(STDERR_FILENO) == FUNC20())
			FUNC59(STDERR_FILENO, child_pid);
		FUNC7(fds[1]);
		FUNC49(SIGPIPE, &sa_pipe, NULL);
		while ((pid = FUNC62(child_pid, &statusp, WUNTRACED)) != -1) {
			if (FUNC3(statusp)) {
				child_pgrp = FUNC19(child_pid);
				if (FUNC58(STDERR_FILENO) == child_pgrp)
					FUNC59(STDERR_FILENO, FUNC20());
				FUNC26(FUNC21(), SIGSTOP);
				if (FUNC58(STDERR_FILENO) == FUNC20()) {
					child_pgrp = FUNC19(child_pid);
					FUNC59(STDERR_FILENO, child_pgrp);
				}
				FUNC26(child_pid, SIGCONT);
				statusp = 1;
				continue;
			}
			break;
		}
		FUNC59(STDERR_FILENO, FUNC20());
		if (pid == -1)
			FUNC8(1, "waitpid");
		FUNC0();
		FUNC11(FUNC2(statusp));
	case -1:
		FUNC0();
		FUNC8(1, "fork");
	case 0:
		FUNC7(fds[1]);
		FUNC44(fds[0], &temp, 1);
		FUNC7(fds[0]);
		FUNC49(SIGPIPE, &sa_pipe, NULL);
		FUNC49(SIGINT, &sa_int, NULL);
		FUNC49(SIGQUIT, &sa_quit, NULL);

		/*
		 * Set all user context except for: Environmental variables
		 * Umask Login records (wtmp, etc) Path
		 */
		setwhat = LOGIN_SETALL & ~(LOGIN_SETENV | LOGIN_SETUMASK |
			   LOGIN_SETLOGIN | LOGIN_SETPATH | LOGIN_SETGROUP |
			   LOGIN_SETMAC);
		/*
		 * If -s is present, also set the MAC label.
		 */
		if (setmaclabel)
			setwhat |= LOGIN_SETMAC;
		/*
		 * Don't touch resource/priority settings if -m has been used
		 * or -l and -c hasn't, and we're not su'ing to root.
		 */
		if ((asme || (!asthem && class == NULL)) && pwd->pw_uid)
			setwhat &= ~(LOGIN_SETPRIORITY | LOGIN_SETRESOURCES);
		if (FUNC48(lc, pwd, pwd->pw_uid, setwhat) < 0)
			FUNC8(1, "setusercontext");

		if (!asme) {
			if (asthem) {
				p = FUNC15("TERM");
				environ = &cleanenv;
			}

			if (asthem || pwd->pw_uid)
				FUNC45("USER", pwd->pw_name, 1);
			FUNC45("HOME", pwd->pw_dir, 1);
			FUNC45("SHELL", shell, 1);

			if (asthem) {
				/*
				 * Add any environmental variables that the
				 * PAM modules may have set.
				 */
				environ_pam = FUNC38(pamh);
				if (environ_pam)
					FUNC12();

				/* set the su'd user's environment & umask */
				FUNC48(lc, pwd, pwd->pw_uid,
					LOGIN_SETPATH | LOGIN_SETUMASK |
					LOGIN_SETENV);
				if (p)
					FUNC45("TERM", p, 1);

				p = FUNC37(pamh, "HOME");
				if (FUNC5(p ? p : pwd->pw_dir) < 0)
					FUNC9(1, "no directory");
			}
		}
		FUNC27(lc);

		if (iscsh == YES) {
			if (fastlogin)
				*np.a-- = "-f";
			if (asme)
				*np.a-- = "-m";
		}
		/* csh strips the first character... */
		*np.a = asthem ? "-su" : iscsh == YES ? "_su" : "su";

		if (ruid != 0)
			FUNC57(LOG_NOTICE, "%s to %s%s", username, user,
			    FUNC31());

		FUNC10(shell, np.b);
		FUNC8(1, "%s", shell);
	}
}