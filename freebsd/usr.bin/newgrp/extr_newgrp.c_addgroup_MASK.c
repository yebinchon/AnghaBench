#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct group {scalar_t__ gr_gid; char** gr_mem; char* gr_passwd; } ;
typedef  scalar_t__ gid_t ;
struct TYPE_2__ {scalar_t__ pw_gid; char* pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIV_END ; 
 int /*<<< orphan*/  PRIV_START ; 
 int /*<<< orphan*/  _SC_NGROUPS_MAX ; 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 () ; 
 struct group* FUNC5 (scalar_t__) ; 
 struct group* FUNC6 (char const*) ; 
 int FUNC7 (long,scalar_t__*) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__*,int) ; 
 scalar_t__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,scalar_t__*,int) ; 
 TYPE_1__* pwd ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int,scalar_t__ const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 long FUNC16 (char const*,char**,int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 

__attribute__((used)) static void
FUNC20(const char *grpname)
{
	gid_t *grps;
	long lgid, ngrps_max;
	int dbmember, i, ngrps;
	gid_t egid;
	struct group *grp;
	char *ep, *pass, *cryptpw;
	char **p;

	egid = FUNC4();

	/* Try it as a group name, then a group id. */
	if ((grp = FUNC6(grpname)) == NULL)
		if ((lgid = FUNC16(grpname, &ep, 10)) <= 0 || *ep != '\0' ||
		    (grp = FUNC5((gid_t)lgid)) == NULL ) {
			FUNC19("%s: bad group name", grpname);
			return;
		}

	/*
	 * If the user is not a member of the requested group and the group
	 * has a password, prompt and check it.
	 */
	dbmember = 0;
	if (pwd->pw_gid == grp->gr_gid)
		dbmember = 1;
	for (p = grp->gr_mem; *p != NULL; p++)
		if (FUNC15(*p, pwd->pw_name) == 0) {
			dbmember = 1;
			break;
		}
	if (!dbmember && *grp->gr_passwd != '\0' && FUNC9() != 0) {
		pass = FUNC8("Password:");
		if (pass == NULL)
			return;
		cryptpw = FUNC0(pass, grp->gr_passwd);
		if (cryptpw == NULL || FUNC15(grp->gr_passwd, cryptpw) != 0) {
			FUNC2(stderr, "Sorry\n");
			return;
		}
	}

	ngrps_max = FUNC17(_SC_NGROUPS_MAX) + 1;
	if ((grps = FUNC11(sizeof(gid_t) * ngrps_max)) == NULL)
		FUNC1(1, "malloc");
	if ((ngrps = FUNC7(ngrps_max, (gid_t *)grps)) < 0) {
		FUNC18("getgroups");
		goto end;
	}

	/* Remove requested gid from supp. list if it exists. */
	if (grp->gr_gid != egid && FUNC10(grp->gr_gid, grps, ngrps)) {
		for (i = 0; i < ngrps; i++)
			if (grps[i] == grp->gr_gid)
				break;
		ngrps--;
		FUNC12(&grps[i], &grps[i + 1], (ngrps - i) * sizeof(gid_t));
		PRIV_START;
		if (FUNC14(ngrps, (const gid_t *)grps) < 0) {
			PRIV_END;
			FUNC18("setgroups");
			goto end;
		}
		PRIV_END;
	}

	PRIV_START;
	if (FUNC13(grp->gr_gid)) {
		PRIV_END;
		FUNC18("setgid");
		goto end;
	}
	PRIV_END;
	grps[0] = grp->gr_gid;

	/* Add old effective gid to supp. list if it does not exist. */
	if (egid != grp->gr_gid && !FUNC10(egid, grps, ngrps)) {
		if (ngrps == ngrps_max)
			FUNC19("too many groups");
		else {
			grps[ngrps++] = egid;
			PRIV_START;
			if (FUNC14(ngrps, (const gid_t *)grps)) {
				PRIV_END;
				FUNC18("setgroups");
				goto end;
			}
			PRIV_END;
		}
	}
end:
	FUNC3(grps);
}