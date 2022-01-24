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
struct xucred {int cr_uid; int* cr_groups; int cr_ngroups; int /*<<< orphan*/  cr_version; } ;
struct passwd {int pw_uid; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_name; } ;
struct group {int gr_gid; } ;
typedef  void* gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  XUCRED_VERSION ; 
 int XU_NGROUPS ; 
 void* FUNC0 (char*) ; 
 struct group* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int*) ; 
 struct passwd* FUNC3 (char*) ; 
 struct passwd* FUNC4 (void*) ; 
 scalar_t__ FUNC5 (char) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC8(char *namelist, struct xucred *cr)
{
	char *name;
	int cnt;
	char *names;
	struct passwd *pw;
	struct group *gr;
	gid_t groups[XU_NGROUPS + 1];
	int ngroups;

	cr->cr_version = XUCRED_VERSION;
	/*
	 * Set up the unprivileged user.
	 */
	cr->cr_uid = 65534;
	cr->cr_groups[0] = 65533;
	cr->cr_ngroups = 1;
	/*
	 * Get the user's password table entry.
	 */
	names = namelist;
	name = FUNC6(&names, ":");
	/* Bug?  name could be NULL here */
	if (FUNC5(*name) || *name == '-')
		pw = FUNC4(FUNC0(name));
	else
		pw = FUNC3(name);
	/*
	 * Credentials specified as those of a user.
	 */
	if (names == NULL) {
		if (pw == NULL) {
			FUNC7(LOG_ERR, "unknown user: %s", name);
			return;
		}
		cr->cr_uid = pw->pw_uid;
		ngroups = XU_NGROUPS + 1;
		if (FUNC2(pw->pw_name, pw->pw_gid, groups, &ngroups)) {
			FUNC7(LOG_ERR, "too many groups");
			ngroups = XU_NGROUPS + 1;
		}

		/*
		 * Compress out duplicate.
		 */
		cr->cr_ngroups = ngroups - 1;
		cr->cr_groups[0] = groups[0];
		for (cnt = 2; cnt < ngroups; cnt++)
			cr->cr_groups[cnt - 1] = groups[cnt];
		return;
	}
	/*
	 * Explicit credential specified as a colon separated list:
	 *	uid:gid:gid:...
	 */
	if (pw != NULL)
		cr->cr_uid = pw->pw_uid;
	else if (FUNC5(*name) || *name == '-')
		cr->cr_uid = FUNC0(name);
	else {
		FUNC7(LOG_ERR, "unknown user: %s", name);
		return;
	}
	cr->cr_ngroups = 0;
	while (names != NULL && *names != '\0' && cr->cr_ngroups < XU_NGROUPS) {
		name = FUNC6(&names, ":");
		if (FUNC5(*name) || *name == '-') {
			cr->cr_groups[cr->cr_ngroups++] = FUNC0(name);
		} else {
			if ((gr = FUNC1(name)) == NULL) {
				FUNC7(LOG_ERR, "unknown group: %s", name);
				continue;
			}
			cr->cr_groups[cr->cr_ngroups++] = gr->gr_gid;
		}
	}
	if (names != NULL && *names != '\0' && cr->cr_ngroups == XU_NGROUPS)
		FUNC7(LOG_ERR, "too many groups");
}