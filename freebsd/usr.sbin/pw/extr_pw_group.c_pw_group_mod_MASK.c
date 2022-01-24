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
typedef  int /*<<< orphan*/  uintmax_t ;
struct userconf {int dummy; } ;
struct group {char* gr_name; scalar_t__ gr_gid; int /*<<< orphan*/ * gr_mem; } ;
typedef  scalar_t__ intmax_t ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 struct group* FUNC0 (char*) ; 
 int /*<<< orphan*/  GID_MAX ; 
 int /*<<< orphan*/  M_UPDATE ; 
 int /*<<< orphan*/  W_GROUP ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int FUNC1 (char*,struct group*) ; 
 int /*<<< orphan*/  FUNC2 (struct group*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct userconf* FUNC6 (char const*) ; 
 struct group* FUNC7 (char*,scalar_t__,int) ; 
 int FUNC8 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct group**,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct group*,int,int,int) ; 
 scalar_t__ FUNC11 () ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC12 (struct group*,int) ; 
 int FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct userconf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC17 (char*,char*) ; 

int
FUNC18(int argc, char **argv, char *arg1)
{
	struct userconf *cnf;
	struct group *grp = NULL;
	const char *cfg = NULL;
	char *oldmembers = NULL;
	char *members = NULL;
	char *newmembers = NULL;
	char *newname = NULL;
	char *name = NULL;
	intmax_t id = -1;
	int ch, rc, fd = -1;
	bool quiet, pretty, dryrun, nis, precrypted;

	quiet = pretty = dryrun = nis = precrypted = false;

	if (arg1 != NULL) {
		if (arg1[FUNC17(arg1, "0123456789")] == '\0')
			id = FUNC14(arg1, GID_MAX);
		else
			name = arg1;
	}

	while ((ch = FUNC8(argc, argv, "C:qn:d:g:l:h:H:M:m:NPY")) != -1) {
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
		case 'g':
			id = FUNC14(optarg, GID_MAX);
			break;
		case 'd':
			oldmembers = optarg;
			break;
		case 'l':
			newname = optarg;
			break;
		case 'H':
			if (fd != -1)
				FUNC4(EX_USAGE, "'-h' and '-H' are mutually "
				    "exclusive options");
			fd = FUNC13(optarg);
			precrypted = true;
			if (fd == '-')
				FUNC4(EX_USAGE, "-H expects a file descriptor");
			break;
		case 'h':
			if (fd != -1)
				FUNC4(EX_USAGE, "'-h' and '-H' are mutually "
				    "exclusive options");
			fd = FUNC13(optarg);
			break;
		case 'M':
			members = optarg;
			break;
		case 'm':
			newmembers = optarg;
			break;
		case 'N':
			dryrun = true;
			break;
		case 'P':
			pretty = true;
			break;
		case 'Y':
			nis = true;
			break;
		}
	}
	if (quiet)
		FUNC5(_PATH_DEVNULL, "w", stderr);
	cnf = FUNC6(cfg);
	grp = FUNC7(name, id, true);
	if (name == NULL)
		name = grp->gr_name;
	if (id > 0)
		grp->gr_gid = id;

	if (newname != NULL)
		grp->gr_name = FUNC15(newname, 0);

	FUNC10(grp, true, fd, precrypted);
	/*
	 * Keep the same logic as old code for now:
	 * if -M is passed, -d and -m are ignored
	 * then id -d, -m is ignored
	 * last is -m
	 */

	if (members) {
		grp->gr_mem = NULL;
		FUNC9(&grp, members);
	} else if (oldmembers) {
		FUNC2(grp, oldmembers);
	} else if (newmembers) {
		FUNC9(&grp, newmembers);
	}

	if (dryrun) {
		FUNC12(grp, pretty);
		return (EXIT_SUCCESS);
	}

	if ((rc = FUNC1(name, grp)) != 0) {
		if (rc == -1)
			FUNC4(EX_IOERR, "group '%s' not available (NIS?)",
			    grp->gr_name);
		else
			FUNC3(EX_IOERR, "group update");
	}

	if (newname)
		name = newname;

	/* grp may have been invalidated */
	if ((grp = FUNC0(name)) == NULL)
		FUNC4(EX_SOFTWARE, "group disappeared during update");

	FUNC16(cnf, M_UPDATE, W_GROUP, "%s(%ju)", grp->gr_name,
	    (uintmax_t)grp->gr_gid);

	if (nis && FUNC11() == 0)
		FUNC16(cnf, M_UPDATE, W_GROUP, "NIS maps updated");

	return (EXIT_SUCCESS);
}