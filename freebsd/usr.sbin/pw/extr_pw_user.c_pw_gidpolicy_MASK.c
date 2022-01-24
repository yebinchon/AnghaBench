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
struct userconf {int dummy; } ;
struct group {int gr_gid; int /*<<< orphan*/ ** gr_mem; } ;
typedef  int intmax_t ;
typedef  int gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct group* FUNC1 (int) ; 
 struct group* FUNC2 (char*) ; 
 int /*<<< orphan*/  GID_MAX ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct userconf*,char*,int,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct userconf*,int) ; 

__attribute__((used)) static uid_t
FUNC7(struct userconf *cnf, char *grname, char *nam, gid_t prefer, bool dryrun)
{
	struct group   *grp;
	gid_t           gid = (uid_t) - 1;

	/*
	 * Check the given gid, if any
	 */
	FUNC3();
	if (grname) {
		if ((grp = FUNC2(grname)) == NULL) {
			gid = FUNC5(grname, GID_MAX);
			grp = FUNC1(gid);
		}
		gid = grp->gr_gid;
	} else if ((grp = FUNC2(nam)) != NULL &&
	    (grp->gr_mem == NULL || grp->gr_mem[0] == NULL)) {
		gid = grp->gr_gid;  /* Already created? Use it anyway... */
	} else {
		intmax_t		grid = -1;

		/*
		 * We need to auto-create a group with the user's name. We
		 * can send all the appropriate output to our sister routine
		 * bit first see if we can create a group with gid==uid so we
		 * can keep the user and group ids in sync. We purposely do
		 * NOT check the gid range if we can force the sync. If the
		 * user's name dups an existing group, then the group add
		 * function will happily handle that case for us and exit.
		 */
		if (FUNC1(prefer) == NULL)
			grid = prefer;
		if (dryrun) {
			gid = FUNC6(cnf, true);
		} else {
			if (grid == -1)
				grid =  FUNC6(cnf, true);
			FUNC4(cnf, nam, grid, NULL, -1, false, false, false);
			if ((grp = FUNC2(nam)) != NULL)
				gid = grp->gr_gid;
		}
	}
	FUNC0();
	return (gid);
}