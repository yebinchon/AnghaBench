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
struct vnode {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct msdosfsmount {int pm_flags; int pm_fmod; int /*<<< orphan*/  pm_inusemap; struct vnode* pm_devvp; int /*<<< orphan*/  pm_cp; } ;
struct mount {int mnt_flag; int /*<<< orphan*/  mnt_optnew; } ;
typedef  int accmode_t ;

/* Variables and functions */
 int EINVAL ; 
 int FOLLOW ; 
 int FORCECLOSE ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int MNT_RDONLY ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int MSDOSFSMNT_RONLY ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct thread*) ; 
 int /*<<< orphan*/  PRIV_VFS_MOUNT_PERM ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 struct msdosfsmount* FUNC4 (struct mount*) ; 
 int FUNC5 (struct mount*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vnode*,int,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ) ; 
 int VREAD ; 
 int VWRITE ; 
 int WRITECLOSE ; 
 struct thread* curthread ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct msdosfsmount*,int) ; 
 int FUNC12 (struct msdosfsmount*,int,int) ; 
 int FUNC13 (struct vnode*,struct mount*) ; 
 int /*<<< orphan*/  msdosfs_opts ; 
 int /*<<< orphan*/  FUNC14 (struct mount*,int) ; 
 int FUNC15 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC16 (char*,struct mount*,struct msdosfsmount*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct mount*,struct thread*) ; 
 int FUNC19 (struct mount*,int /*<<< orphan*/ ,int,struct thread*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,char*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct mount*,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct vnode*,int*) ; 
 int /*<<< orphan*/  FUNC25 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC27 (struct vnode*) ; 

__attribute__((used)) static int
FUNC28(struct mount *mp)
{
	struct vnode *devvp;	  /* vnode for blk device to mount */
	struct thread *td;
	/* msdosfs specific mount control block */
	struct msdosfsmount *pmp = NULL;
	struct nameidata ndp;
	int error, flags;
	accmode_t accmode;
	char *from;

	td = curthread;
	if (FUNC20(mp->mnt_optnew, msdosfs_opts))
		return (EINVAL);

	/*
	 * If updating, check whether changing from read-only to
	 * read/write; if there is no device name, that's all we do.
	 */
	if (mp->mnt_flag & MNT_UPDATE) {
		pmp = FUNC4(mp);
		if (!(pmp->pm_flags & MSDOSFSMNT_RONLY) &&
		    FUNC21(mp->mnt_optnew, "ro", NULL, 0)) {
			error = FUNC5(mp, MNT_WAIT);
			if (error)
				return (error);
			flags = WRITECLOSE;
			if (mp->mnt_flag & MNT_FORCE)
				flags |= FORCECLOSE;
			error = FUNC19(mp, 0, flags, td);
			if (error)
				return (error);

			/*
			 * Now the volume is clean.  Mark it so while the
			 * device is still rw.
			 */
			error = FUNC11(pmp, 0);
			if (error) {
				(void)FUNC11(pmp, 1);
				return (error);
			}

			/* Downgrade the device from rw to ro. */
			FUNC9();
			error = FUNC8(pmp->pm_cp, 0, -1, 0);
			FUNC10();
			if (error) {
				(void)FUNC11(pmp, 1);
				return (error);
			}

			/*
			 * Backing out after an error was painful in the
			 * above.  Now we are committed to succeeding.
			 */
			pmp->pm_fmod = 0;
			pmp->pm_flags |= MSDOSFSMNT_RONLY;
			FUNC0(mp);
			mp->mnt_flag |= MNT_RDONLY;
			FUNC1(mp);
		} else if ((pmp->pm_flags & MSDOSFSMNT_RONLY) &&
		    !FUNC21(mp->mnt_optnew, "ro", NULL, 0)) {
			/*
			 * If upgrade to read-write by non-root, then verify
			 * that user has necessary permissions on the device.
			 */
			devvp = pmp->pm_devvp;
			FUNC25(devvp, LK_EXCLUSIVE | LK_RETRY);
			error = FUNC6(devvp, VREAD | VWRITE,
			    td->td_ucred, td);
			if (error)
				error = FUNC17(td, PRIV_VFS_MOUNT_PERM);
			if (error) {
				FUNC7(devvp, 0);
				return (error);
			}
			FUNC7(devvp, 0);
			FUNC9();
			error = FUNC8(pmp->pm_cp, 0, 1, 0);
			FUNC10();
			if (error)
				return (error);

			/* Now that the volume is modifiable, mark it dirty. */
			error = FUNC12(pmp, true, true);
			if (error) {
				/*
				 * If dirtying the superblock failed, drop GEOM
				 * 'w' refs (we're still RO).
				 */
				FUNC9();
				(void)FUNC8(pmp->pm_cp, 0, -1, 0);
				FUNC10();

				return (error);
			}

			pmp->pm_fmod = 1;
			pmp->pm_flags &= ~MSDOSFSMNT_RONLY;
			FUNC0(mp);
			mp->mnt_flag &= ~MNT_RDONLY;
			FUNC1(mp);
		}
	}
	/*
	 * Not an update, or updating the name: look up the name
	 * and verify that it refers to a sensible disk device.
	 */
	if (FUNC22(mp->mnt_optnew, "from", (void **)&from, NULL))
		return (EINVAL);
	FUNC3(&ndp, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, from, td);
	error = FUNC15(&ndp);
	if (error)
		return (error);
	devvp = ndp.ni_vp;
	FUNC2(&ndp, NDF_ONLY_PNBUF);

	if (!FUNC24(devvp, &error)) {
		FUNC26(devvp);
		return (error);
	}
	/*
	 * If mount by non-root, then verify that user has necessary
	 * permissions on the device.
	 */
	accmode = VREAD;
	if ((mp->mnt_flag & MNT_RDONLY) == 0)
		accmode |= VWRITE;
	error = FUNC6(devvp, accmode, td->td_ucred, td);
	if (error)
		error = FUNC17(td, PRIV_VFS_MOUNT_PERM);
	if (error) {
		FUNC26(devvp);
		return (error);
	}
	if ((mp->mnt_flag & MNT_UPDATE) == 0) {
		error = FUNC13(devvp, mp);
#ifdef MSDOSFS_DEBUG		/* only needed for the printf below */
		pmp = VFSTOMSDOSFS(mp);
#endif
	} else {
		FUNC26(devvp);
		if (devvp != pmp->pm_devvp)
			return (EINVAL);	/* XXX needs translation */
	}
	if (error) {
		FUNC27(devvp);
		return (error);
	}

	error = FUNC18(mp, td);
	if (error) {
		if ((mp->mnt_flag & MNT_UPDATE) == 0)
			FUNC14(mp, MNT_FORCE);
		return error;
	}

	FUNC23(mp, from);
#ifdef MSDOSFS_DEBUG
	printf("msdosfs_mount(): mp %p, pmp %p, inusemap %p\n", mp, pmp, pmp->pm_inusemap);
#endif
	return (0);
}