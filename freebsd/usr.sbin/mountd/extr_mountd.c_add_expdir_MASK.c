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
struct hostlist {int dummy; } ;
struct dirlist {char* dp_dirp; struct hostlist* dp_hosts; scalar_t__ dp_flag; struct dirlist* dp_right; struct dirlist* dp_left; } ;

/* Variables and functions */
 struct dirlist* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*,int) ; 

__attribute__((used)) static char *
FUNC3(struct dirlist **dpp, char *cp, int len)
{
	struct dirlist *dp;

	dp = FUNC0(sizeof (struct dirlist));
	if (dp == (struct dirlist *)NULL)
		FUNC1();
	dp->dp_left = *dpp;
	dp->dp_right = (struct dirlist *)NULL;
	dp->dp_flag = 0;
	dp->dp_hosts = (struct hostlist *)NULL;
	dp->dp_dirp = FUNC2(cp, len);
	if (dp->dp_dirp == NULL)
		FUNC1();
	*dpp = dp;
	return (dp->dp_dirp);
}