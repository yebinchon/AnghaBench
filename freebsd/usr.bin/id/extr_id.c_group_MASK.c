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
struct passwd {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_name; } ;
struct group {int /*<<< orphan*/  gr_name; } ;
typedef  int gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NGROUPS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 struct group* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC4 (long,int*) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct passwd *pw, int nflag)
{
	struct group *gr;
	int cnt, id, lastid, ngroups;
	long ngroups_max;
	gid_t *groups;
	const char *fmt;

	ngroups_max = FUNC7(_SC_NGROUPS_MAX) + 1;
	if ((groups = FUNC5(sizeof(gid_t) * (ngroups_max))) == NULL)
		FUNC0(1, "malloc");

	if (pw) {
		ngroups = ngroups_max;
		(void) FUNC3(pw->pw_name, pw->pw_gid, groups, &ngroups);
	} else {
		ngroups = FUNC4(ngroups_max, groups);
	}
	fmt = nflag ? "%s" : "%u";
	for (lastid = -1, cnt = 0; cnt < ngroups; ++cnt) {
		if (lastid == (id = groups[cnt]))
			continue;
		if (nflag) {
			if ((gr = FUNC2(id)))
				(void)FUNC6(fmt, gr->gr_name);
			else
				(void)FUNC6(*fmt == ' ' ? " %u" : "%u",
				    id);
			fmt = " %s";
		} else {
			(void)FUNC6(fmt, id);
			fmt = " %u";
		}
		lastid = id;
	}
	(void)FUNC6("\n");
	FUNC1(groups);
}