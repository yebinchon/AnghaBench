#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vnode {int /*<<< orphan*/  v_rdev; } ;
struct vfsoptlist {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct mount {int mnt_flag; struct vfsoptlist* mnt_optnew; } ;
struct m_ext2fs {int e2fs_ronly; char* e2fs_fsmnt; TYPE_1__* e2fs; scalar_t__ e2fs_wasvalid; } ;
struct ext2mount {struct m_ext2fs* um_e2fs; struct vnode* um_devvp; int /*<<< orphan*/  um_cp; } ;
typedef  int accmode_t ;
struct TYPE_2__ {int e2fs_state; } ;

/* Variables and functions */
 int E2FS_ERRORS ; 
 int E2FS_ISCLEAN ; 
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int EPERM ; 
 int FOLLOW ; 
 int FORCECLOSE ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int MAXMNTLEN ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int MNT_RDONLY ; 
 int MNT_RELOAD ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct thread*) ; 
 int /*<<< orphan*/  PRIV_VFS_MOUNT_PERM ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 struct ext2mount* FUNC4 (struct mount*) ; 
 int FUNC5 (struct mount*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vnode*,int,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ) ; 
 int VREAD ; 
 int VWRITE ; 
 int WRITECLOSE ; 
 struct thread* curthread ; 
 scalar_t__ FUNC8 (struct ext2mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mount*,int,struct thread*) ; 
 int FUNC11 (struct vnode*,struct mount*) ; 
 int /*<<< orphan*/  ext2_opts ; 
 int FUNC12 (struct mount*,struct thread*) ; 
 int /*<<< orphan*/  FUNC13 (struct ext2mount*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int FUNC19 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 scalar_t__ FUNC22 (struct vfsoptlist*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct vfsoptlist*,char*,int*,int) ; 
 int FUNC24 (struct vfsoptlist*,char*,void**,int*) ; 
 int /*<<< orphan*/  FUNC25 (struct mount*,char*) ; 
 int /*<<< orphan*/  FUNC26 (struct vnode*,int*) ; 
 int /*<<< orphan*/  FUNC27 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC29 (struct vnode*) ; 

__attribute__((used)) static int
FUNC30(struct mount *mp)
{
	struct vfsoptlist *opts;
	struct vnode *devvp;
	struct thread *td;
	struct ext2mount *ump = NULL;
	struct m_ext2fs *fs;
	struct nameidata nd, *ndp = &nd;
	accmode_t accmode;
	char *path, *fspec;
	int error, flags, len;

	td = curthread;
	opts = mp->mnt_optnew;

	if (FUNC22(opts, ext2_opts))
		return (EINVAL);

	FUNC24(opts, "fspath", (void **)&path, NULL);
	/* Double-check the length of path.. */
	if (FUNC20(path) >= MAXMNTLEN)
		return (ENAMETOOLONG);

	fspec = NULL;
	error = FUNC24(opts, "from", (void **)&fspec, &len);
	if (!error && fspec[len - 1] != '\0')
		return (EINVAL);

	/*
	 * If updating, check whether changing from read-only to
	 * read/write; if there is no device name, that's all we do.
	 */
	if (mp->mnt_flag & MNT_UPDATE) {
		ump = FUNC4(mp);
		fs = ump->um_e2fs;
		error = 0;
		if (fs->e2fs_ronly == 0 &&
		    FUNC23(opts, "ro", NULL, 0)) {
			error = FUNC5(mp, MNT_WAIT);
			if (error)
				return (error);
			flags = WRITECLOSE;
			if (mp->mnt_flag & MNT_FORCE)
				flags |= FORCECLOSE;
			error = FUNC10(mp, flags, td);
			if (error == 0 && fs->e2fs_wasvalid &&
			    FUNC8(ump, MNT_WAIT) == 0) {
				fs->e2fs->e2fs_state |= E2FS_ISCLEAN;
				FUNC13(ump, MNT_WAIT);
			}
			fs->e2fs_ronly = 1;
			FUNC23(opts, "ro", &mp->mnt_flag, MNT_RDONLY);
			FUNC15();
			FUNC14(ump->um_cp, 0, -1, 0);
			FUNC16();
		}
		if (!error && (mp->mnt_flag & MNT_RELOAD))
			error = FUNC12(mp, td);
		if (error)
			return (error);
		devvp = ump->um_devvp;
		if (fs->e2fs_ronly && !FUNC23(opts, "ro", NULL, 0)) {
			if (FUNC9(fs->e2fs, devvp->v_rdev, 0))
				return (EPERM);

			/*
			 * If upgrade to read-write by non-root, then verify
			 * that user has necessary permissions on the device.
			 */
			FUNC27(devvp, LK_EXCLUSIVE | LK_RETRY);
			error = FUNC6(devvp, VREAD | VWRITE,
			    td->td_ucred, td);
			if (error)
				error = FUNC19(td, PRIV_VFS_MOUNT_PERM);
			if (error) {
				FUNC7(devvp, 0);
				return (error);
			}
			FUNC7(devvp, 0);
			FUNC15();
			error = FUNC14(ump->um_cp, 0, 1, 0);
			FUNC16();
			if (error)
				return (error);

			if ((fs->e2fs->e2fs_state & E2FS_ISCLEAN) == 0 ||
			    (fs->e2fs->e2fs_state & E2FS_ERRORS)) {
				if (mp->mnt_flag & MNT_FORCE) {
					FUNC18(
"WARNING: %s was not properly dismounted\n", fs->e2fs_fsmnt);
				} else {
					FUNC18(
"WARNING: R/W mount of %s denied.  Filesystem is not clean - run fsck\n",
					    fs->e2fs_fsmnt);
					return (EPERM);
				}
			}
			fs->e2fs->e2fs_state &= ~E2FS_ISCLEAN;
			(void)FUNC8(ump, MNT_WAIT);
			fs->e2fs_ronly = 0;
			FUNC0(mp);
			mp->mnt_flag &= ~MNT_RDONLY;
			FUNC1(mp);
		}
		if (FUNC23(opts, "export", NULL, 0)) {
			/* Process export requests in vfs_mount.c. */
			return (error);
		}
	}

	/*
	 * Not an update, or updating the name: look up the name
	 * and verify that it refers to a sensible disk device.
	 */
	if (fspec == NULL)
		return (EINVAL);
	FUNC3(ndp, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, fspec, td);
	if ((error = FUNC17(ndp)) != 0)
		return (error);
	FUNC2(ndp, NDF_ONLY_PNBUF);
	devvp = ndp->ni_vp;

	if (!FUNC26(devvp, &error)) {
		FUNC28(devvp);
		return (error);
	}

	/*
	 * If mount by non-root, then verify that user has necessary
	 * permissions on the device.
	 *
	 * XXXRW: VOP_ACCESS() enough?
	 */
	accmode = VREAD;
	if ((mp->mnt_flag & MNT_RDONLY) == 0)
		accmode |= VWRITE;
	error = FUNC6(devvp, accmode, td->td_ucred, td);
	if (error)
		error = FUNC19(td, PRIV_VFS_MOUNT_PERM);
	if (error) {
		FUNC28(devvp);
		return (error);
	}

	if ((mp->mnt_flag & MNT_UPDATE) == 0) {
		error = FUNC11(devvp, mp);
	} else {
		if (devvp != ump->um_devvp) {
			FUNC28(devvp);
			return (EINVAL);	/* needs translation */
		} else
			FUNC28(devvp);
	}
	if (error) {
		FUNC29(devvp);
		return (error);
	}
	ump = FUNC4(mp);
	fs = ump->um_e2fs;

	/*
	 * Note that this strncpy() is ok because of a check at the start
	 * of ext2_mount().
	 */
	FUNC21(fs->e2fs_fsmnt, path, MAXMNTLEN);
	fs->e2fs_fsmnt[MAXMNTLEN - 1] = '\0';
	FUNC25(mp, fspec);
	return (0);
}