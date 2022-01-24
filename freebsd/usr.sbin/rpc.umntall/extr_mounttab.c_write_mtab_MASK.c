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
struct mtablist {char* mtab_host; char* mtab_dirp; scalar_t__ mtab_time; struct mtablist* mtab_next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  PATH_MOUNTTAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,long,char*,char*) ; 
 struct mtablist* mtabhead ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 

int
FUNC7(int verbose)
{
	struct mtablist *mtabp, *mp;
	FILE *mtabfile;
	int line;

	if ((mtabfile = FUNC1(PATH_MOUNTTAB, "w")) == NULL) {
		FUNC4(LOG_ERR, "can't write to %s", PATH_MOUNTTAB);
			return (0);
	}
	line = 0;
	for (mtabp = mtabhead; mtabp != NULL; mtabp = mtabp->mtab_next) {
		if (mtabp->mtab_host[0] == '\0')
			continue;
		/* Skip if a later (hence more recent) entry is identical. */
		for (mp = mtabp->mtab_next; mp != NULL; mp = mp->mtab_next)
			if (FUNC3(mtabp->mtab_host, mp->mtab_host) == 0 &&
			    FUNC3(mtabp->mtab_dirp, mp->mtab_dirp) == 0)
				break;
		if (mp != NULL)
			continue;

		FUNC2(mtabfile, "%ld\t%s\t%s\n",
		    (long)mtabp->mtab_time, mtabp->mtab_host,
		    mtabp->mtab_dirp);
		if (verbose)
			FUNC6("write mounttab entry %s:%s",
			    mtabp->mtab_host, mtabp->mtab_dirp);
		line++;
	}
	FUNC0(mtabfile);
	if (line == 0) {
		if (FUNC5(PATH_MOUNTTAB) == -1) {
			FUNC4(LOG_ERR, "can't remove %s", PATH_MOUNTTAB);
			return (0);
		}
	}
	return (1);
}