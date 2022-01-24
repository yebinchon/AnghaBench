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
struct ucred {int dummy; } ;
struct sockaddr {int dummy; } ;
struct netcred {int netc_exflags; int netc_numsecflavors; int* netc_secflavors; struct ucred* netc_anon; } ;
struct mount {int /*<<< orphan*/  mnt_explock; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  LK_RELEASE ; 
 int /*<<< orphan*/  LK_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct netcred* FUNC2 (struct mount*,struct sockaddr*) ; 

int 
FUNC3(struct mount *mp, struct sockaddr *nam, int *extflagsp,
    struct ucred **credanonp, int *numsecflavors, int **secflavors)
{
	struct netcred *np;

	FUNC1(&mp->mnt_explock, LK_SHARED, NULL);
	np = FUNC2(mp, nam);
	if (np == NULL) {
		FUNC1(&mp->mnt_explock, LK_RELEASE, NULL);
		*credanonp = NULL;
		return (EACCES);
	}
	*extflagsp = np->netc_exflags;
	if ((*credanonp = np->netc_anon) != NULL)
		FUNC0(*credanonp);
	if (numsecflavors)
		*numsecflavors = np->netc_numsecflavors;
	if (secflavors)
		*secflavors = np->netc_secflavors;
	FUNC1(&mp->mnt_explock, LK_RELEASE, NULL);
	return (0);
}