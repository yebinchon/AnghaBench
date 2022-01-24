#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char* uintmax_t ;
typedef  scalar_t__ uid_t ;
typedef  void* time_t ;
struct userconf {char* nispasswd; char* dotdir; scalar_t__ homemode; int /*<<< orphan*/  default_password; int /*<<< orphan*/  shells; int /*<<< orphan*/  shelldir; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct passwd {char* pw_name; int pw_fields; scalar_t__ pw_uid; scalar_t__ pw_gid; void* pw_change; void* pw_expire; char* pw_shell; char* pw_class; char* pw_dir; char* pw_gecos; int /*<<< orphan*/  pw_passwd; } ;
struct group {scalar_t__ gr_gid; char** gr_mem; char* gr_name; } ;
typedef  scalar_t__ mode_t ;
typedef  int /*<<< orphan*/  login_cap_t ;
typedef  scalar_t__ intmax_t ;
struct TYPE_7__ {scalar_t__ _altdir; } ;
struct TYPE_6__ {int fd; int /*<<< orphan*/  rootfd; } ;
struct TYPE_5__ {size_t sl_cur; char** sl_str; } ;
typedef  TYPE_1__ StringList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_NOPERM ; 
 int /*<<< orphan*/  EX_NOUSER ; 
 int /*<<< orphan*/  EX_OSFILE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 struct group* FUNC1 () ; 
 struct group* FUNC2 (scalar_t__) ; 
 struct group* FUNC3 (char*) ; 
 struct passwd* FUNC4 (char*) ; 
 struct passwd* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  GID_MAX ; 
 int /*<<< orphan*/  M_UPDATE ; 
 scalar_t__ FUNC6 () ; 
 TYPE_4__ PWF ; 
 scalar_t__ PWF_ALT ; 
 scalar_t__ PWF_REGULAR ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UID_MAX ; 
 int /*<<< orphan*/  W_USER ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int _PWF_FILES ; 
 int _PWF_NIS ; 
 int _PWF_SOURCE ; 
 int /*<<< orphan*/  FUNC9 (char*,struct group*) ; 
 TYPE_3__ conf ; 
 int /*<<< orphan*/  FUNC10 (struct userconf*,struct passwd*,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct group*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*,struct stat*,int /*<<< orphan*/ ) ; 
 struct userconf* FUNC15 (char const*) ; 
 scalar_t__ FUNC16 () ; 
 int FUNC17 (int,char**,char*) ; 
 struct group* FUNC18 (struct group*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (struct passwd*) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 () ; 
 char* optarg ; 
 void* FUNC24 (void*,char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,struct passwd*,char*) ; 
 int FUNC27 (struct passwd*,int,int) ; 
 int FUNC28 (char*) ; 
 scalar_t__ FUNC29 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC30 (char*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct userconf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC32 (struct userconf*,char*,int) ; 
 int FUNC33 (struct passwd*,int,int,int) ; 
 char* FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_1__**,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC36 (char*,char*) ; 
 size_t FUNC37 (char*,char*) ; 
 void* FUNC38 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC39 (char*) ; 
 int /*<<< orphan*/  FUNC40 (char*) ; 
 int /*<<< orphan*/  FUNC41 (char*,char*) ; 

int
FUNC42(int argc, char **argv, char *arg1)
{
	struct userconf *cnf;
	struct passwd *pwd;
	struct group *grp;
	StringList *groups = NULL;
	char args[] = "C:qn:u:c:d:e:p:g:G:mM:l:k:s:w:L:h:H:NPYy:";
	const char *cfg = NULL;
	char *gecos, *homedir, *grname, *name, *newname, *walk, *skel, *shell;
	char *passwd, *class, *nispasswd;
	login_cap_t *lc;
	struct stat st;
	intmax_t id = -1;
	int ch, fd = -1;
	size_t i, j;
	bool quiet, createhome, pretty, dryrun, nis, edited;
	bool precrypted;
	mode_t homemode = 0;
	time_t expire_time, password_time, now;

	expire_time = password_time = -1;
	gecos = homedir = grname = name = newname = skel = shell =NULL;
	passwd = NULL;
	class = nispasswd = NULL;
	quiet = createhome = pretty = dryrun = nis = precrypted = false;
	edited = false;
	now = FUNC38(NULL);

	if (arg1 != NULL) {
		if (arg1[FUNC37(arg1, "0123456789")] == '\0')
			id = FUNC29(arg1, UID_MAX);
		else
			name = arg1;
	}

	while ((ch = FUNC17(argc, argv, args)) != -1) {
		switch (ch) {
		case 'C':
			cfg = optarg;
			break;
		case 'q':
			quiet = true;
			break;
		case 'n':
			name = optarg;
			break;
		case 'u':
			id = FUNC29(optarg, UID_MAX);
			break;
		case 'c':
			gecos = FUNC30(optarg, 1);
			break;
		case 'd':
			homedir = optarg;
			break;
		case 'e':
			expire_time = FUNC24(now, optarg);
			break;
		case 'p':
			password_time = FUNC24(now, optarg);
			break;
		case 'g':
			FUNC19(optarg);
			grname = optarg;
			break;
		case 'G':
			FUNC35(&groups, optarg);
			break;
		case 'm':
			createhome = true;
			break;
		case 'M':
			homemode = FUNC39(optarg);
			break;
		case 'l':
			newname = optarg;
			break;
		case 'k':
			walk = skel = optarg;
			if (*walk == '/')
				walk++;
			if (FUNC14(conf.rootfd, walk, &st, 0) == -1)
				FUNC11(EX_OSFILE, "skeleton `%s' does not "
				    "exists", skel);
			if (!FUNC8(st.st_mode))
				FUNC11(EX_OSFILE, "skeleton `%s' is not a "
				    "directory", skel);
			break;
		case 's':
			shell = optarg;
			break;
		case 'w':
			passwd = optarg;
			break;
		case 'L':
			class = FUNC30(optarg, 0);
			break;
		case 'H':
			if (fd != -1)
				FUNC11(EX_USAGE, "'-h' and '-H' are mutually "
				    "exclusive options");
			fd = FUNC28(optarg);
			precrypted = true;
			if (fd == '-')
				FUNC11(EX_USAGE, "-H expects a file descriptor");
			break;
		case 'h':
			if (fd != -1)
				FUNC11(EX_USAGE, "'-h' and '-H' are mutually "
				    "exclusive options");
			fd = FUNC28(optarg);
			break;
		case 'N':
			dryrun = true;
			break;
		case 'P':
			pretty = true;
			break;
		case 'y':
			nispasswd = optarg;
			break;
		case 'Y':
			nis = true;
			break;
		}
	}

	if (FUNC16() != 0 && ! dryrun)
		FUNC11(EX_NOPERM, "you must be root");

	if (quiet)
		FUNC13(_PATH_DEVNULL, "w", stderr);

	cnf = FUNC15(cfg);

	if (id < 0 && name == NULL)
		FUNC11(EX_DATAERR, "username or id required");

	pwd = (name != NULL) ? FUNC4(FUNC30(name, 0)) : FUNC5(id);
	if (pwd == NULL) {
		if (name == NULL)
			FUNC11(EX_NOUSER, "no such uid `%ju'",
			    (uintmax_t) id);
		FUNC11(EX_NOUSER, "no such user `%s'", name);
	}

	if (name == NULL)
		name = pwd->pw_name;

	if (nis && nispasswd == NULL)
		nispasswd = cnf->nispasswd;

	if (PWF._altdir == PWF_REGULAR &&
	    ((pwd->pw_fields & _PWF_SOURCE) != _PWF_FILES)) {
		if ((pwd->pw_fields & _PWF_SOURCE) == _PWF_NIS) {
			if (!nis && nispasswd && *nispasswd != '/')
				FUNC11(EX_NOUSER, "Cannot modify NIS user `%s'",
				    name);
		} else {
			FUNC11(EX_NOUSER, "Cannot modify non local user `%s'",
			    name);
		}
	}

	if (newname) {
		if (FUNC36(pwd->pw_name, "root") == 0)
			FUNC11(EX_DATAERR, "can't rename `root' account");
		if (FUNC36(pwd->pw_name, newname) != 0) {
			pwd->pw_name = FUNC30(newname, 0);
			edited = true;
		}
	}

	if (id >= 0 && pwd->pw_uid != id) {
		pwd->pw_uid = id;
		edited = true;
		if (pwd->pw_uid != 0 && FUNC36(pwd->pw_name, "root") == 0)
			FUNC11(EX_DATAERR, "can't change uid of `root' account");
		if (pwd->pw_uid == 0 && FUNC36(pwd->pw_name, "root") != 0)
			FUNC41("WARNING: account `%s' will have a uid of 0 "
			    "(superuser access!)", pwd->pw_name);
	}

	if (grname && pwd->pw_uid != 0) {
		grp = FUNC3(grname);
		if (grp == NULL)
			grp = FUNC2(FUNC29(grname, GID_MAX));
		if (grp->gr_gid != pwd->pw_gid) {
			pwd->pw_gid = grp->gr_gid;
			edited = true;
		}
	}


	if (password_time >= 0 && pwd->pw_change != password_time) {
		pwd->pw_change = password_time;
		edited = true;
	}

	if (expire_time >= 0 && pwd->pw_expire != expire_time) {
		pwd->pw_expire = expire_time;
		edited = true;
	}

	if (shell) {
		shell = FUNC34(cnf->shelldir, cnf->shells, shell);
		if (shell == NULL)
			shell = "";
		if (FUNC36(shell, pwd->pw_shell) != 0) {
			pwd->pw_shell = shell;
			edited = true;
		}
	}

	if (class && FUNC36(pwd->pw_class, class) != 0) {
		pwd->pw_class = class;
		edited = true;
	}

	if (homedir && FUNC36(pwd->pw_dir, homedir) != 0) {
		pwd->pw_dir = homedir;
		edited = true;
		if (FUNC14(conf.rootfd, pwd->pw_dir, &st, 0) == -1) {
			if (!createhome)
				FUNC41("WARNING: home `%s' does not exist",
				    pwd->pw_dir);
		} else if (!FUNC8(st.st_mode)) {
			FUNC41("WARNING: home `%s' is not a directory",
			    pwd->pw_dir);
		}
	}

	if (passwd && conf.fd == -1) {
		lc = FUNC21(pwd);
		if (lc == NULL || FUNC22(lc, "sha512", NULL) == NULL)
			FUNC40("setting crypt(3) format");
		FUNC20(lc);
		cnf->default_password = FUNC25(passwd,
		    cnf->default_password);
		pwd->pw_passwd = FUNC32(cnf, pwd->pw_name, dryrun);
		edited = true;
	}

	if (gecos && FUNC36(pwd->pw_gecos, gecos) != 0) {
		pwd->pw_gecos = gecos;
		edited = true;
	}

	if (fd != -1)
		edited = FUNC33(pwd, fd, precrypted, true);

	if (dryrun)
		return (FUNC27(pwd, pretty, false));

	if (edited) /* Only updated this if required */
		FUNC26(name, pwd, nis ? nispasswd : NULL);
	/* Now perform the needed changes concern groups */
	if (groups != NULL) {
		/* Delete User from groups using old name */
		FUNC7();
		while ((grp = FUNC1()) != NULL) {
			if (grp->gr_mem == NULL)
				continue;
			for (i = 0; grp->gr_mem[i] != NULL; i++) {
				if (FUNC36(grp->gr_mem[i] , name) != 0)
					continue;
				for (j = i; grp->gr_mem[j] != NULL ; j++)
					grp->gr_mem[j] = grp->gr_mem[j+1];
				FUNC9(grp->gr_name, grp);
				break;
			}
		}
		FUNC0();
		/* Add the user to the needed groups */
		for (i = 0; i < groups->sl_cur; i++) {
			grp = FUNC3(groups->sl_str[i]);
			grp = FUNC18(grp, pwd->pw_name);
			if (grp == NULL)
				continue;
			FUNC9(grp->gr_name, grp);
			FUNC12(grp);
		}
	}
	/* In case of rename we need to walk over the different groups */
	if (newname) {
		FUNC7();
		while ((grp = FUNC1()) != NULL) {
			if (grp->gr_mem == NULL)
				continue;
			for (i = 0; grp->gr_mem[i] != NULL; i++) {
				if (FUNC36(grp->gr_mem[i], name) != 0)
					continue;
				grp->gr_mem[i] = newname;
				FUNC9(grp->gr_name, grp);
				break;
			}
		}
	}

	/* go get a current version of pwd */
	if (newname)
		name = newname;
	pwd = FUNC4(name);
	if (pwd == NULL)
		FUNC11(EX_NOUSER, "user '%s' disappeared during update", name);
	grp = FUNC2(pwd->pw_gid);
	FUNC31(cnf, M_UPDATE, W_USER, "%s(%ju):%s(%ju):%s:%s:%s",
	    pwd->pw_name, (uintmax_t)pwd->pw_uid,
	    grp ? grp->gr_name : "unknown",
	    (uintmax_t)(grp ? grp->gr_gid : (uid_t)-1),
	    pwd->pw_gecos, pwd->pw_dir, pwd->pw_shell);

	/*
	 * Let's create and populate the user's home directory. Note
	 * that this also `works' for editing users if -m is used, but
	 * existing files will *not* be overwritten.
	 */
	if (FUNC6() != PWF_ALT && createhome && pwd->pw_dir &&
	    *pwd->pw_dir == '/' && pwd->pw_dir[1]) {
		if (!skel)
			skel = cnf->dotdir;
		if (homemode == 0)
			homemode = cnf->homemode;
		FUNC10(cnf, pwd, skel, homemode, true);
	}

	if (nis && FUNC23() == 0)
		FUNC31(cnf, M_UPDATE, W_USER, "NIS maps updated");

	return (EXIT_SUCCESS);
}