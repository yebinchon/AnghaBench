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
typedef  int uid_t ;
struct passwd {int pw_uid; int pw_gid; char* pw_name; } ;
struct group {char* gr_name; } ;
typedef  int gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NGROUPS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 struct group* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int*,int*) ; 
 int FUNC7 (long,int*) ; 
 struct passwd* FUNC8 (int) ; 
 int FUNC9 () ; 
 int* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char const*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct passwd *pw, int use_ggl, int p_euid, int p_egid)
{
	struct group *gr;
	gid_t gid, egid, lastgid;
	uid_t uid, euid;
	int cnt, ngroups;
	long ngroups_max;
	gid_t *groups;
	const char *fmt;

	if (pw != NULL) {
		uid = pw->pw_uid;
		gid = pw->pw_gid;
	}
	else {
		uid = FUNC9();
		gid = FUNC4();
	}

	ngroups_max = FUNC12(_SC_NGROUPS_MAX) + 1;
	if ((groups = FUNC10(sizeof(gid_t) * ngroups_max)) == NULL)
		FUNC0(1, "malloc");

	if (use_ggl && pw != NULL) {
		ngroups = ngroups_max;
		FUNC6(pw->pw_name, gid, groups, &ngroups);
	}
	else {
		ngroups = FUNC7(ngroups_max, groups);
	}

	if (pw != NULL)
		FUNC11("uid=%u(%s)", uid, pw->pw_name);
	else 
		FUNC11("uid=%u", FUNC9());
	FUNC11(" gid=%u", gid);
	if ((gr = FUNC5(gid)))
		(void)FUNC11("(%s)", gr->gr_name);
	if (p_euid && (euid = FUNC3()) != uid) {
		(void)FUNC11(" euid=%u", euid);
		if ((pw = FUNC8(euid)))
			(void)FUNC11("(%s)", pw->pw_name);
	}
	if (p_egid && (egid = FUNC2()) != gid) {
		(void)FUNC11(" egid=%u", egid);
		if ((gr = FUNC5(egid)))
			(void)FUNC11("(%s)", gr->gr_name);
	}
	fmt = " groups=%u";
	for (lastgid = -1, cnt = 0; cnt < ngroups; ++cnt) {
		if (lastgid == (gid = groups[cnt]))
			continue;
		FUNC11(fmt, gid);
		fmt = ",%u";
		if ((gr = FUNC5(gid)))
			FUNC11("(%s)", gr->gr_name);
		lastgid = gid;
	}
	FUNC11("\n");
	FUNC1(groups);
}