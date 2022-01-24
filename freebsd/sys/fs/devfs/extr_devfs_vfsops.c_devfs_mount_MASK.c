#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct thread {TYPE_2__* td_ucred; } ;
struct mount {int mnt_flag; int mnt_kern_flag; struct devfs_mount* mnt_data; int /*<<< orphan*/ * mnt_optnew; } ;
struct devfs_mount {int dm_holdcnt; int /*<<< orphan*/  dm_lock; int /*<<< orphan*/  dm_idx; int /*<<< orphan*/  dm_rootdir; struct mount* dm_mount; } ;
typedef  int /*<<< orphan*/  devfs_rsnum ;
struct TYPE_4__ {TYPE_1__* cr_prison; } ;
struct TYPE_3__ {int pr_devfs_rsnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFS_ROOTINO ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int MNTK_EXTENDED_SHARED ; 
 int MNTK_LOOKUP_SHARED ; 
 int MNTK_NOMSYNC ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int MNT_LOCAL ; 
 int MNT_MULTILABEL ; 
 int MNT_ROOTFS ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  M_DEVFS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  devfs_opts ; 
 int FUNC4 (struct mount*,int /*<<< orphan*/ ,struct vnode**) ; 
 int /*<<< orphan*/  FUNC5 (struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct devfs_mount*) ; 
 int /*<<< orphan*/ * devfs_unr ; 
 int /*<<< orphan*/  FUNC7 (struct devfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct devfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*) ; 
 struct devfs_mount* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct mount*,struct vnode*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct mount*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct mount*,char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct mount*,char*) ; 
 int FUNC24 (int /*<<< orphan*/ *,char*,char*,int*) ; 

__attribute__((used)) static int
FUNC25(struct mount *mp)
{
	int error;
	struct devfs_mount *fmp;
	struct vnode *rvp;
	struct thread *td = curthread;
	int injail, rsnum;

	if (devfs_unr == NULL)
		devfs_unr = FUNC12(0, INT_MAX, NULL);

	error = 0;

	if (mp->mnt_flag & MNT_ROOTFS)
		return (EOPNOTSUPP);

	rsnum = 0;
	injail = FUNC10(td->td_ucred);

	if (mp->mnt_optnew != NULL) {
		if (FUNC18(mp->mnt_optnew, devfs_opts))
			return (EINVAL);

		if (FUNC19(mp->mnt_optnew, "export", NULL, 0))
			return (EOPNOTSUPP);

		if (FUNC21(mp->mnt_optnew, "ruleset", NULL, NULL) == 0 &&
		    (FUNC24(mp->mnt_optnew, "ruleset", "%d",
		    &rsnum) != 1 || rsnum < 0 || rsnum > 65535)) {
			FUNC22(mp, "%s",
			    "invalid ruleset specification");
			return (EINVAL);
		}

		if (injail && rsnum != 0 &&
		    rsnum != td->td_ucred->cr_prison->pr_devfs_rsnum)
			return (EPERM);
	}

	/* jails enforce their ruleset */
	if (injail)
		rsnum = td->td_ucred->cr_prison->pr_devfs_rsnum;

	if (mp->mnt_flag & MNT_UPDATE) {
		if (rsnum != 0) {
			fmp = mp->mnt_data;
			if (fmp != NULL) {
				FUNC15(&fmp->dm_lock);
				FUNC6((devfs_rsnum)rsnum, fmp);
				FUNC5(fmp);
				FUNC16(&fmp->dm_lock);
			}
		}
		return (0);
	}

	fmp = FUNC11(sizeof *fmp, M_DEVFS, M_WAITOK | M_ZERO);
	fmp->dm_idx = FUNC3(devfs_unr);
	FUNC14(&fmp->dm_lock, "devfsmount");
	fmp->dm_holdcnt = 1;

	FUNC0(mp);
	mp->mnt_flag |= MNT_LOCAL;
	mp->mnt_kern_flag |= MNTK_LOOKUP_SHARED | MNTK_EXTENDED_SHARED |
	    MNTK_NOMSYNC;
#ifdef MAC
	mp->mnt_flag |= MNT_MULTILABEL;
#endif
	FUNC1(mp);
	fmp->dm_mount = mp;
	mp->mnt_data = (void *) fmp;
	FUNC20(mp);

	fmp->dm_rootdir = FUNC7(fmp, NULL, 0, NULL, DEVFS_ROOTINO);

	error = FUNC4(mp, LK_EXCLUSIVE, &rvp);
	if (error) {
		FUNC13(&fmp->dm_lock);
		FUNC9(devfs_unr, fmp->dm_idx);
		FUNC8(fmp, M_DEVFS);
		return (error);
	}

	if (rsnum != 0) {
		FUNC15(&fmp->dm_lock);
		FUNC6((devfs_rsnum)rsnum, fmp);
		FUNC16(&fmp->dm_lock);
	}

	FUNC2(rvp, 0);
	FUNC17(mp, rvp);

	FUNC23(mp, "devfs");

	return (0);
}