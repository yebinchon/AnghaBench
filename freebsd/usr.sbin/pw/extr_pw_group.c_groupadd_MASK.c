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
struct group {char* member_0; char* member_1; int member_2; char* gr_passwd; scalar_t__ gr_gid; int /*<<< orphan*/  gr_name; int /*<<< orphan*/ * gr_mem; int /*<<< orphan*/ * member_3; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  M_ADD ; 
 int /*<<< orphan*/  W_GROUP ; 
 int FUNC0 (struct group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct userconf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct group**,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct group*,int,int,int) ; 
 int FUNC6 (struct group*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct userconf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct userconf *cnf, char *name, gid_t id, char *members, int fd,
    bool dryrun, bool pretty, bool precrypted)
{
	struct group *grp;
	int rc;

	struct group fakegroup = {
		"nogroup",
		"*",
		-1,
		NULL
	};

	grp = &fakegroup;
	grp->gr_name = FUNC7(name, 0);
	grp->gr_passwd = "*";
	grp->gr_gid = FUNC3(cnf, id);
	grp->gr_mem = NULL;

	/*
	 * This allows us to set a group password Group passwords is an
	 * antique idea, rarely used and insecure (no secure database) Should
	 * be discouraged, but it is apparently still supported by some
	 * software.
	 */
	FUNC5(grp, false, fd, precrypted);
	FUNC4(&grp, members);
	if (dryrun)
		return (FUNC6(grp, pretty));

	if ((rc = FUNC0(grp)) != 0) {
		if (rc == -1)
			FUNC2(EX_IOERR, "group '%s' already exists",
			    grp->gr_name);
		else
			FUNC1(EX_IOERR, "group update");
	}

	FUNC8(cnf, M_ADD, W_GROUP, "%s(%ju)", grp->gr_name,
	    (uintmax_t)grp->gr_gid);

	return (EXIT_SUCCESS);
}