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
struct passwd {scalar_t__ pw_uid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 char* _PATH_BSHELL ; 
 int /*<<< orphan*/  _SC_NGROUPS_MAX ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char**) ; 
 char* FUNC6 (char*) ; 
 struct group* FUNC7 (char*) ; 
 int FUNC8 (int,char**,char*) ; 
 struct passwd* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (unsigned char) ; 
 scalar_t__* FUNC11 (int) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int FUNC12 (scalar_t__) ; 
 int FUNC13 (int,scalar_t__*) ; 
 int FUNC14 (scalar_t__) ; 
 char* FUNC15 (char**,char*) ; 
 scalar_t__ FUNC16 (char*,char**,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 

int
FUNC19(int argc, char *argv[])
{
	struct group	*gp;
	struct passwd	*pw;
	char		*endp, *p, *user, *group, *grouplist;
	const char	*shell;
	gid_t		gid, *gidlist;
	uid_t		uid;
	int		ch, gids;
	long		ngroups_max;

	gid = 0;
	uid = 0;
	user = group = grouplist = NULL;
	while ((ch = FUNC8(argc, argv, "G:g:u:")) != -1) {
		switch(ch) {
		case 'u':
			user = optarg;
			if (*user == '\0')
				FUNC18();
			break;
		case 'g':
			group = optarg;
			if (*group == '\0')
				FUNC18();
			break;
		case 'G':
			grouplist = optarg;
			if (*grouplist == '\0')
				FUNC18();
			break;
		case '?':
		default:
			FUNC18();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc < 1)
		FUNC18();

	if (group != NULL) {
		if (FUNC10((unsigned char)*group)) {
			gid = (gid_t)FUNC16(group, &endp, 0);
			if (*endp != '\0')
				goto getgroup;
		} else {
 getgroup:
			if ((gp = FUNC7(group)) != NULL)
				gid = gp->gr_gid;
			else
				FUNC3(1, "no such group `%s'", group);
		}
	}

	ngroups_max = FUNC17(_SC_NGROUPS_MAX) + 1;
	if ((gidlist = FUNC11(sizeof(gid_t) * ngroups_max)) == NULL)
		FUNC2(1, "malloc");
	for (gids = 0;
	    (p = FUNC15(&grouplist, ",")) != NULL && gids < ngroups_max; ) {
		if (*p == '\0')
			continue;

		if (FUNC10((unsigned char)*p)) {
			gidlist[gids] = (gid_t)FUNC16(p, &endp, 0);
			if (*endp != '\0')
				goto getglist;
		} else {
 getglist:
			if ((gp = FUNC7(p)) != NULL)
				gidlist[gids] = gp->gr_gid;
			else
				FUNC3(1, "no such group `%s'", p);
		}
		gids++;
	}
	if (p != NULL && gids == ngroups_max)
		FUNC3(1, "too many supplementary groups provided");

	if (user != NULL) {
		if (FUNC10((unsigned char)*user)) {
			uid = (uid_t)FUNC16(user, &endp, 0);
			if (*endp != '\0')
				goto getuser;
		} else {
 getuser:
			if ((pw = FUNC9(user)) != NULL)
				uid = pw->pw_uid;
			else
				FUNC3(1, "no such user `%s'", user);
		}
	}

	if (FUNC0(argv[0]) == -1 || FUNC1(".") == -1)
		FUNC2(1, "%s", argv[0]);

	if (gids && FUNC13(gids, gidlist) == -1)
		FUNC2(1, "setgroups");
	if (group && FUNC12(gid) == -1)
		FUNC2(1, "setgid");
	if (user && FUNC14(uid) == -1)
		FUNC2(1, "setuid");

	if (argv[1]) {
		FUNC5(argv[1], &argv[1]);
		FUNC2(1, "%s", argv[1]);
	}

	if (!(shell = FUNC6("SHELL")))
		shell = _PATH_BSHELL;
	FUNC4(shell, shell, "-i", (char *)NULL);
	FUNC2(1, "%s", shell);
	/* NOTREACHED */
}