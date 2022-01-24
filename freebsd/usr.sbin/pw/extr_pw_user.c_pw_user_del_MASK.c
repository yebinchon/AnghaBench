#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct userconf {char* nispasswd; } ;
struct stat {int dummy; } ;
struct passwd {int pw_fields; scalar_t__ pw_uid; char* pw_name; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_dir; } ;
struct group {char** gr_mem; int /*<<< orphan*/  gr_name; } ;
typedef  scalar_t__ intmax_t ;
typedef  int /*<<< orphan*/  home ;
typedef  int /*<<< orphan*/  file ;
struct TYPE_4__ {scalar_t__ _altdir; } ;
struct TYPE_3__ {int /*<<< orphan*/  rootfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  EX_NOUSER ; 
 int /*<<< orphan*/  F_OK ; 
 struct group* FUNC1 () ; 
 struct group* FUNC2 (int /*<<< orphan*/ ) ; 
 struct group* FUNC3 (char*) ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC5 (scalar_t__) ; 
 int LOGNAMESIZE ; 
 int MAXLOGNAME ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  M_DELETE ; 
 scalar_t__ FUNC6 () ; 
 TYPE_2__ PWF ; 
 scalar_t__ PWF_ALT ; 
 scalar_t__ PWF_REGULAR ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  UID_MAX ; 
 int /*<<< orphan*/  W_USER ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 char* _PATH_MAILDIR ; 
 int _PWF_FILES ; 
 int _PWF_NIS ; 
 int _PWF_SOURCE ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct group*) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC10 (struct group*) ; 
 int FUNC11 (char*,char*) ; 
 int FUNC12 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,struct stat*,int /*<<< orphan*/ ) ; 
 struct userconf* FUNC17 (char const*) ; 
 int FUNC18 (int,char**,char*) ; 
 int /*<<< orphan*/ * FUNC19 (scalar_t__) ; 
 char* optarg ; 
 scalar_t__ FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct userconf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC29 (char*,char*) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 (char*,char*) ; 

int
FUNC34(int argc, char **argv, char *arg1)
{
	struct userconf *cnf = NULL;
	struct passwd *pwd = NULL;
	struct group *gr, *grp;
	char *name = NULL;
	char grname[MAXLOGNAME];
	char *nispasswd = NULL;
	char file[MAXPATHLEN];
	char home[MAXPATHLEN];
	const char *cfg = NULL;
	struct stat st;
	intmax_t id = -1;
	int ch, rc;
	bool nis = false;
	bool deletehome = false;
	bool quiet = false;

	if (arg1 != NULL) {
		if (arg1[FUNC29(arg1, "0123456789")] == '\0')
			id = FUNC20(arg1, UID_MAX);
		else
			name = arg1;
	}

	while ((ch = FUNC18(argc, argv, "C:qn:u:rYy:")) != -1) {
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
			id = FUNC20(optarg, UID_MAX);
			break;
		case 'r':
			deletehome = true;
			break;
		case 'y':
			nispasswd = optarg;
			break;
		case 'Y':
			nis = true;
			break;
		}
	}

	if (quiet)
		FUNC15(_PATH_DEVNULL, "w", stderr);

	if (id < 0 && name == NULL)
		FUNC14(EX_DATAERR, "username or id required");

	cnf = FUNC17(cfg);

	if (nispasswd == NULL)
		nispasswd = cnf->nispasswd;

	pwd = (name != NULL) ? FUNC4(FUNC21(name, 0)) : FUNC5(id);
	if (pwd == NULL) {
		if (name == NULL)
			FUNC14(EX_NOUSER, "no such uid `%ju'", (uintmax_t) id);
		FUNC14(EX_NOUSER, "no such user `%s'", name);
	}

	if (PWF._altdir == PWF_REGULAR &&
	    ((pwd->pw_fields & _PWF_SOURCE) != _PWF_FILES)) {
		if ((pwd->pw_fields & _PWF_SOURCE) == _PWF_NIS) {
			if (!nis && nispasswd && *nispasswd != '/')
				FUNC14(EX_NOUSER, "Cannot remove NIS user `%s'",
				    name);
		} else {
			FUNC14(EX_NOUSER, "Cannot remove non local user `%s'",
			    name);
		}
	}

	id = pwd->pw_uid;
	if (name == NULL)
		name = pwd->pw_name;

	if (FUNC27(pwd->pw_name, "root") == 0)
		FUNC14(EX_DATAERR, "cannot remove user 'root'");

	/* Remove opie record from /etc/opiekeys */
	if (FUNC6() != PWF_ALT)
		FUNC25(pwd->pw_name);

	if (!FUNC6()) {
		/* Remove crontabs */
		FUNC26(file, sizeof(file), "/var/cron/tabs/%s", pwd->pw_name);
		if (FUNC8(file, F_OK) == 0) {
			FUNC26(file, sizeof(file), "crontab -u %s -r",
			    pwd->pw_name);
			FUNC30(file);
		}
	}

	/*
	 * Save these for later, since contents of pwd may be
	 * invalidated by deletion
	 */
	FUNC26(file, sizeof(file), "%s/%s", _PATH_MAILDIR, pwd->pw_name);
	FUNC28(home, pwd->pw_dir, sizeof(home));
	gr = FUNC2(pwd->pw_gid);
	if (gr != NULL)
		FUNC28(grname, gr->gr_name, LOGNAMESIZE);
	else
		grname[0] = '\0';

	rc = FUNC12(pwd);
	if (rc == -1)
		FUNC13(EX_IOERR, "user '%s' does not exist", pwd->pw_name);
	else if (rc != 0)
		FUNC13(EX_IOERR, "passwd update");

	if (nis && nispasswd && *nispasswd=='/') {
		rc = FUNC11(nispasswd, name);
		if (rc == -1)
			FUNC33("WARNING: user '%s' does not exist in NIS passwd",
			    pwd->pw_name);
		else if (rc != 0)
			FUNC32("WARNING: NIS passwd update");
	}

	grp = FUNC3(name);
	if (grp != NULL &&
	    (grp->gr_mem == NULL || *grp->gr_mem == NULL) &&
	    FUNC27(name, grname) == 0)
		FUNC10(FUNC3(name));
	FUNC7();
	while ((grp = FUNC1()) != NULL) {
		int i, j;
		char group[MAXLOGNAME];
		if (grp->gr_mem == NULL)
			continue;

		for (i = 0; grp->gr_mem[i] != NULL; i++) {
			if (FUNC27(grp->gr_mem[i], name) != 0)
				continue;

			for (j = i; grp->gr_mem[j] != NULL; j++)
				grp->gr_mem[j] = grp->gr_mem[j+1];
			FUNC28(group, grp->gr_name, MAXLOGNAME);
			FUNC9(group, grp);
		}
	}
	FUNC0();

	FUNC22(cnf, M_DELETE, W_USER, "%s(%ju) account removed", name,
	    (uintmax_t)id);

	/* Remove mail file */
	if (FUNC6() != PWF_ALT)
		FUNC31(conf.rootfd, file + 1, 0);

	/* Remove at jobs */
	if (!FUNC6() && FUNC19(id) == NULL)
		FUNC24(id);

	/* Remove home directory and contents */
	if (FUNC6() != PWF_ALT && deletehome && *home == '/' &&
	    FUNC5(id) == NULL &&
	    FUNC16(conf.rootfd, home + 1, &st, 0) != -1) {
		FUNC23(conf.rootfd, home, id);
		FUNC22(cnf, M_DELETE, W_USER, "%s(%ju) home '%s' %s"
		    "removed", name, (uintmax_t)id, home,
		     FUNC16(conf.rootfd, home + 1, &st, 0) == -1 ? "" : "not "
		     "completely ");
	}

	return (EXIT_SUCCESS);
}