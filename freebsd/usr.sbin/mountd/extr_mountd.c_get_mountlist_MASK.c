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
struct mountlist {char* ml_host; char* ml_dirp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 size_t MNTNAMLEN ; 
 size_t MNTPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mountlist*,int /*<<< orphan*/ ) ; 
 int STRSIZ ; 
 int /*<<< orphan*/  _PATH_RMOUNTLIST ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  mlhead ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 char* FUNC7 (char**,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void)
{
	struct mountlist *mlp;
	char *host, *dirp, *cp;
	char str[STRSIZ];
	FILE *mlfile;

	if ((mlfile = FUNC3(_PATH_RMOUNTLIST, "r")) == NULL) {
		if (errno == ENOENT)
			return;
		else {
			FUNC8(LOG_ERR, "can't open %s", _PATH_RMOUNTLIST);
			return;
		}
	}
	while (FUNC2(str, STRSIZ, mlfile) != NULL) {
		cp = str;
		host = FUNC7(&cp, " \t\n");
		dirp = FUNC7(&cp, " \t\n");
		if (host == NULL || dirp == NULL)
			continue;
		mlp = (struct mountlist *)FUNC4(sizeof (*mlp));
		if (mlp == (struct mountlist *)NULL)
			FUNC5();
		FUNC6(mlp->ml_host, host, MNTNAMLEN);
		mlp->ml_host[MNTNAMLEN] = '\0';
		FUNC6(mlp->ml_dirp, dirp, MNTPATHLEN);
		mlp->ml_dirp[MNTPATHLEN] = '\0';

		FUNC0(&mlhead, mlp, next);
	}
	FUNC1(mlfile);
}