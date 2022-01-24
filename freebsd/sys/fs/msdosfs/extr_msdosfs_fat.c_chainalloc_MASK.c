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
struct msdosfsmount {int pm_flags; scalar_t__ pm_nxtfree; scalar_t__ pm_maxcluster; } ;

/* Variables and functions */
 scalar_t__ CLUST_FIRST ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MSDOSFSMNT_RONLY ; 
 int /*<<< orphan*/  FUNC1 (struct msdosfsmount*) ; 
 int MSDOSFS_FSIMOD ; 
 int FUNC2 (struct msdosfsmount*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct msdosfsmount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msdosfsmount*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct msdosfsmount *pmp, u_long start, u_long count,
    u_long fillwith, u_long *retcluster, u_long *got)
{
	int error;
	u_long cl, n;

	FUNC1(pmp);
	FUNC0((pmp->pm_flags & MSDOSFSMNT_RONLY) == 0,
	    ("chainalloc on ro msdosfs mount"));

	for (cl = start, n = count; n-- > 0;)
		FUNC4(pmp, cl++);
	pmp->pm_nxtfree = start + count;
	if (pmp->pm_nxtfree > pmp->pm_maxcluster)
		pmp->pm_nxtfree = CLUST_FIRST;
	pmp->pm_flags |= MSDOSFS_FSIMOD;
	error = FUNC2(pmp, start, count, fillwith);
	if (error != 0) {
		for (cl = start, n = count; n-- > 0;)
			FUNC5(pmp, cl++);
		return (error);
	}
#ifdef MSDOSFS_DEBUG
	printf("clusteralloc(): allocated cluster chain at %lu (%lu clusters)\n",
	    start, count);
#endif
	if (retcluster)
		*retcluster = start;
	if (got)
		*got = count;
	return (0);
}