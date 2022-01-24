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
typedef  scalar_t__ u_long ;
typedef  scalar_t__ time_t ;
struct mtablist {char* mtab_host; char* mtab_dirp; struct mtablist* mtab_next; scalar_t__ mtab_time; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MNTNAMLEN ; 
 int MNTPATHLEN ; 
 int /*<<< orphan*/  PATH_MOUNTTAB ; 
 int STRSIZ ; 
 scalar_t__ ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct mtablist* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 struct mtablist* mtabhead ; 
 char* FUNC6 (char**,char*) ; 
 scalar_t__ FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC9(void)
{
	struct mtablist **mtabpp, *mtabp;
	char *hostp, *dirp, *cp;
	char str[STRSIZ];
	char *timep, *endp;
	time_t actiontime;
	u_long ultmp;
	FILE *mtabfile;

	if ((mtabfile = FUNC3(PATH_MOUNTTAB, "r")) == NULL) {
		if (errno == ENOENT)
			return (0);
		else {
			FUNC8(LOG_ERR, "can't open %s", PATH_MOUNTTAB);
			return (0);
		}
	}
	actiontime = 0;
	mtabpp = &mtabhead;
	while (FUNC2(str, STRSIZ, mtabfile) != NULL) {
		cp = str;
		errno = 0;
		if (*cp == '#' || *cp == ' ' || *cp == '\n')
			continue;
		timep = FUNC6(&cp, " \t\n");
		if (timep == NULL || *timep == '\0') {
			FUNC0("time", timep);
			continue;
		}
		hostp = FUNC6(&cp, " \t\n");
		if (hostp == NULL || *hostp == '\0') {
			FUNC0("host", hostp);
			continue;
		}
		dirp = FUNC6(&cp, " \t\n");
		if (dirp == NULL || *dirp == '\0') {
			FUNC0("dir", dirp);
			continue;
		}
		ultmp = FUNC7(timep, &endp, 10);
		if (ultmp == ULONG_MAX || *endp != '\0') {
			FUNC0("time", timep);
			continue;
		}
		actiontime = ultmp;
		if ((mtabp = FUNC4(sizeof (struct mtablist))) == NULL) {
			FUNC8(LOG_ERR, "malloc");
			FUNC1(mtabfile);
			return (0);
		}
		mtabp->mtab_time = actiontime;
		FUNC5(mtabp->mtab_host, hostp, MNTNAMLEN);
		mtabp->mtab_host[MNTNAMLEN - 1] = '\0';
		FUNC5(mtabp->mtab_dirp, dirp, MNTPATHLEN);
		mtabp->mtab_dirp[MNTPATHLEN - 1] = '\0';
		mtabp->mtab_next = (struct mtablist *)NULL;
		*mtabpp = mtabp;
		mtabpp = &mtabp->mtab_next;
	}
	FUNC1(mtabfile);
	return (1);
}