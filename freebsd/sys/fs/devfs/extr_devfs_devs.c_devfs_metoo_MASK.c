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
struct devfs_mount {int dm_idx; } ;
struct devfs_dirent {int dummy; } ;
struct cdev_priv {int cdp_maxdirent; struct devfs_dirent** cdp_dirents; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVFS2 ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct devfs_dirent**,int /*<<< orphan*/ ) ; 
 struct devfs_dirent** FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct devfs_dirent**,struct devfs_dirent**,int) ; 

__attribute__((used)) static void
FUNC5(struct cdev_priv *cdp, struct devfs_mount *dm)
{
	struct devfs_dirent **dep;
	int siz;

	siz = (dm->dm_idx + 1) * sizeof *dep;
	dep = FUNC3(siz, M_DEVFS2, M_WAITOK | M_ZERO);
	FUNC0();
	if (dm->dm_idx <= cdp->cdp_maxdirent) {
		/* We got raced */
		FUNC1();
		FUNC2(dep, M_DEVFS2);
		return;
	} 
	FUNC4(dep, cdp->cdp_dirents, (cdp->cdp_maxdirent + 1) * sizeof *dep);
	if (cdp->cdp_maxdirent > 0)
		FUNC2(cdp->cdp_dirents, M_DEVFS2);
	cdp->cdp_dirents = dep;
	/*
	 * XXX: if malloc told us how much we actually got this could
	 * XXX: be optimized.
	 */
	cdp->cdp_maxdirent = dm->dm_idx;
	FUNC1();
}