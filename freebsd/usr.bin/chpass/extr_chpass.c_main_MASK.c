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
typedef  scalar_t__ uid_t ;
struct ypclnt {int /*<<< orphan*/  error; } ;
struct passwd {scalar_t__ pw_uid; int pw_fields; char* pw_passwd; int /*<<< orphan*/  pw_name; } ;
typedef  int /*<<< orphan*/  ENTRY ;

/* Variables and functions */
#define  _PWF_FILES 129 
#define  _PWF_NIS 128 
 int _PWF_SOURCE ; 
 int _PWSCAN_MASTER ; 
 int _PWSCAN_WARN ; 
 int /*<<< orphan*/  FUNC0 (char*,struct passwd*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char const*,char*) ; 
 struct passwd* FUNC3 (int /*<<< orphan*/ ,struct passwd*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct passwd*) ; 
 int FUNC8 (int,char**,char*) ; 
 char* FUNC9 (char*) ; 
 struct passwd* FUNC10 (char*) ; 
 struct passwd* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 () ; 
 int master_mode ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int FUNC13 (char*,struct passwd*,int /*<<< orphan*/ *) ; 
 int FUNC14 (char*,struct passwd*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int,int,struct passwd*,struct passwd*) ; 
 struct passwd* FUNC16 (struct passwd*) ; 
 scalar_t__ FUNC17 (struct passwd*,struct passwd*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 () ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int FUNC23 (int) ; 
 scalar_t__ FUNC24 (char*,char) ; 
 scalar_t__ FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 int FUNC28 (struct ypclnt*) ; 
 int /*<<< orphan*/  FUNC29 (struct ypclnt*) ; 
 int FUNC30 (struct ypclnt*) ; 
 struct ypclnt* FUNC31 (char const*,char*,char const*) ; 
 int FUNC32 (struct ypclnt*,struct passwd*,char const*) ; 

int
FUNC33(int argc, char *argv[])
{
	enum { NEWSH, LOADENTRY, EDITENTRY, NEWPW, NEWEXP } op;
	struct passwd lpw, *old_pw, *pw;
	int ch, pfd, tfd;
	const char *password;
	char *arg = NULL, *cryptpw;
	uid_t uid;
#ifdef YP
	struct ypclnt *ypclnt;
	const char *yp_domain = NULL, *yp_host = NULL;
#endif

	pw = old_pw = NULL;
	op = EDITENTRY;
#ifdef YP
	while ((ch = getopt(argc, argv, "a:p:s:e:d:h:loy")) != -1)
#else
	while ((ch = FUNC8(argc, argv, "a:p:s:e:")) != -1)
#endif
		switch (ch) {
		case 'a':
			op = LOADENTRY;
			arg = optarg;
			break;
		case 's':
			op = NEWSH;
			arg = optarg;
			break;
		case 'p':
			op = NEWPW;
			arg = optarg;
			break;
		case 'e':
			op = NEWEXP;
			arg = optarg;
			break;
#ifdef YP
		case 'd':
			yp_domain = optarg;
			break;
		case 'h':
			yp_host = optarg;
			break;
		case 'l':
		case 'o':
		case 'y':
			/* compatibility */
			break;
#endif
		case '?':
		default:
			FUNC26();
		}

	argc -= optind;
	argv += optind;

	if (argc > 1)
		FUNC26();

	uid = FUNC12();

	if (op == EDITENTRY || op == NEWSH || op == NEWPW || op == NEWEXP) {
		if (argc == 0) {
			if ((pw = FUNC11(uid)) == NULL)
				FUNC5(1, "unknown user: uid %lu",
				    (unsigned long)uid);
		} else {
			if ((pw = FUNC10(*argv)) == NULL)
				FUNC5(1, "unknown user: %s", *argv);
			if (uid != 0 && uid != pw->pw_uid)
				FUNC1();
		}

		/* Make a copy for later verification */
		if ((pw = FUNC16(pw)) == NULL ||
		    (old_pw = FUNC16(pw)) == NULL)
			FUNC4(1, "pw_dup");
	}

#ifdef YP
	if (pw != NULL && (pw->pw_fields & _PWF_SOURCE) == _PWF_NIS) {
		ypclnt = ypclnt_new(yp_domain, "passwd.byname", yp_host);
		master_mode = (ypclnt != NULL &&
		    ypclnt_connect(ypclnt) != -1 &&
		    ypclnt_havepasswdd(ypclnt) == 1);
		ypclnt_free(ypclnt);
	} else
#endif
	master_mode = (uid == 0);

	if (op == NEWSH) {
		/* protect p_shell -- it thinks NULL is /bin/sh */
		if (!arg[0])
			FUNC26();
		if (FUNC14(arg, pw, (ENTRY *)NULL) == -1)
			FUNC6(1);
	}

	if (op == NEWEXP) {
		if (uid)	/* only root can change expire */
			FUNC1();
		if (FUNC13(arg, pw, (ENTRY *)NULL) == -1)
			FUNC6(1);
	}

	if (op == LOADENTRY) {
		if (uid)
			FUNC1();
		pw = &lpw;
		old_pw = NULL;
		if (!FUNC0(arg, pw, _PWSCAN_WARN|_PWSCAN_MASTER))
			FUNC6(1);
	}

	if (op == NEWPW) {
		if (uid)
			FUNC1();

		if (FUNC24(arg, ':'))
			FUNC5(1, "invalid format for password");
		pw->pw_passwd = arg;
	}

	if (op == EDITENTRY) {
		/*
		 * We don't really need pw_*() here, but pw_edit() (used
		 * by edit()) is just too useful...
		 */
		if (FUNC19(NULL, NULL))
			FUNC4(1, "pw_init()");
		if ((tfd = FUNC23(-1)) == -1) {
			FUNC18();
			FUNC4(1, "pw_tmp()");
		}
		FUNC7(pw);
		pw = FUNC3(FUNC22(), old_pw);
		FUNC18();
		if (pw == NULL)
			FUNC4(1, "edit()");
		/* 
		 * pw_equal does not check for crypted passwords, so we
		 * should do it explicitly
		 */
		if (FUNC17(old_pw, pw) && 
		    FUNC25(old_pw->pw_passwd, pw->pw_passwd) == 0)
			FUNC5(0, "user information unchanged");
	}

	if (old_pw && !master_mode) {
		password = FUNC9("Password: ");
		cryptpw = FUNC2(password, old_pw->pw_passwd);
		if (cryptpw == NULL || FUNC25(cryptpw, old_pw->pw_passwd) != 0)
			FUNC1();
	} else {
		password = "";
	}

	if (old_pw != NULL)
		pw->pw_fields |= (old_pw->pw_fields & _PWF_SOURCE);
	switch (pw->pw_fields & _PWF_SOURCE) {
#ifdef YP
	case _PWF_NIS:
		ypclnt = ypclnt_new(yp_domain, "passwd.byname", yp_host);
		if (ypclnt == NULL) {
			warnx("ypclnt_new failed");
			exit(1);
		}
		if (ypclnt_connect(ypclnt) == -1 ||
		    ypclnt_passwd(ypclnt, pw, password) == -1) {
			warnx("%s", ypclnt->error);
			ypclnt_free(ypclnt);
			exit(1);
		}
		ypclnt_free(ypclnt);
		errx(0, "NIS user information updated");
#endif /* YP */
	case 0:
	case _PWF_FILES:
		if (FUNC19(NULL, NULL))
			FUNC4(1, "pw_init()");
		if ((pfd = FUNC20()) == -1) {
			FUNC18();
			FUNC4(1, "pw_lock()");
		}
		if ((tfd = FUNC23(-1)) == -1) {
			FUNC18();
			FUNC4(1, "pw_tmp()");
		}
		if (FUNC15(pfd, tfd, pw, old_pw) == -1) {
			FUNC18();
			FUNC4(1, "pw_copy");
		}
		if (FUNC21(pw->pw_name) == -1) {
			FUNC18();
			FUNC4(1, "pw_mkdb()");
		}
		FUNC18();
		FUNC5(0, "user information updated");
		break;
	default:
		FUNC5(1, "unsupported passwd source");
	}
}