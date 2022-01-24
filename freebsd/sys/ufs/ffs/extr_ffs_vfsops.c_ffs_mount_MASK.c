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
typedef  int uint64_t ;
struct vnode {scalar_t__ v_rdev; } ;
struct ufsmount {int um_fsckpid; int /*<<< orphan*/  um_cp; struct fs* um_fs; struct vnode* um_devvp; } ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct mount {int mnt_flag; int /*<<< orphan*/  mnt_optnew; int /*<<< orphan*/  mnt_opt; } ;
struct inode {int dummy; } ;
struct fs {scalar_t__ fs_ronly; scalar_t__ fs_pendingblocks; scalar_t__ fs_pendinginodes; char* fs_fsmnt; int fs_flags; int fs_clean; scalar_t__* fs_snapinum; int fs_fmod; void* fs_mtime; } ;
typedef  int pid_t ;
typedef  int intmax_t ;
typedef  int accmode_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int FOLLOW ; 
 int FORCECLOSE ; 
 int FS_ACLS ; 
 int FS_DOSOFTDEP ; 
 int FS_NEEDSFSCK ; 
 int FS_NFS4ACLS ; 
 int FS_SUJ ; 
 int FS_UNCLEAN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  MBF_NOWAIT ; 
 int MNT_ACLS ; 
 int MNT_ASYNC ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int MNT_NFS4ACLS ; 
 int MNT_RDONLY ; 
 int MNT_RELOAD ; 
 int MNT_SNAPSHOT ; 
 int MNT_UNTRUSTED ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 scalar_t__ FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC6 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct thread*) ; 
 int /*<<< orphan*/  PRIV_VFS_MOUNT_PERM ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 struct ufsmount* FUNC7 (struct mount*) ; 
 int FUNC8 (struct vnode*,int,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*,int /*<<< orphan*/ ) ; 
 int VREAD ; 
 int VWRITE ; 
 int /*<<< orphan*/  V_WAIT ; 
 int WRITECLOSE ; 
 struct thread* curthread ; 
 int FUNC10 (struct mount*,int,struct thread*) ; 
 int FUNC11 (struct vnode*,struct mount*,struct thread*) ; 
 int /*<<< orphan*/  ffs_opts ; 
 int FUNC12 (struct mount*,struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ufsmount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct mount*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct mount*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,...) ; 
 int FUNC21 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct mount*,int,struct thread*) ; 
 int FUNC23 (struct vnode*,struct mount*,struct fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct mount*) ; 
 void* time_second ; 
 int /*<<< orphan*/ * uma_inode ; 
 void* uma_ufs1 ; 
 void* uma_ufs2 ; 
 void* FUNC25 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC31 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC32 (struct mount*,char*,...) ; 
 int /*<<< orphan*/  FUNC33 (struct mount*,char*) ; 
 int FUNC34 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC35 (struct mount*) ; 
 int /*<<< orphan*/  FUNC36 (struct mount*,int /*<<< orphan*/ ) ; 
 int FUNC37 (struct mount*) ; 
 int /*<<< orphan*/  FUNC38 (struct vnode*,int*) ; 
 int /*<<< orphan*/  FUNC39 (struct vnode*,int) ; 
 int FUNC40 (int /*<<< orphan*/ *,struct mount**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC42 (struct vnode*) ; 

__attribute__((used)) static int
FUNC43(struct mount *mp)
{
	struct vnode *devvp;
	struct thread *td;
	struct ufsmount *ump = NULL;
	struct fs *fs;
	pid_t fsckpid = 0;
	int error, error1, flags;
	uint64_t mntorflags, saved_mnt_flag;
	accmode_t accmode;
	struct nameidata ndp;
	char *fspec;

	td = curthread;
	if (FUNC28(mp->mnt_optnew, ffs_opts))
		return (EINVAL);
	if (uma_inode == NULL) {
		uma_inode = FUNC25("FFS inode",
		    sizeof(struct inode), NULL, NULL, NULL, NULL,
		    UMA_ALIGN_PTR, 0);
		uma_ufs1 = FUNC25("FFS1 dinode",
		    sizeof(struct ufs1_dinode), NULL, NULL, NULL, NULL,
		    UMA_ALIGN_PTR, 0);
		uma_ufs2 = FUNC25("FFS2 dinode",
		    sizeof(struct ufs2_dinode), NULL, NULL, NULL, NULL,
		    UMA_ALIGN_PTR, 0);
	}

	FUNC27(mp->mnt_optnew, "groupquota");
	FUNC27(mp->mnt_optnew, "userquota");

	fspec = FUNC31(mp->mnt_optnew, "from", &error);
	if (error)
		return (error);

	mntorflags = 0;
	if (FUNC30(mp->mnt_optnew, "untrusted", NULL, NULL) == 0)
		mntorflags |= MNT_UNTRUSTED;

	if (FUNC30(mp->mnt_optnew, "acls", NULL, NULL) == 0)
		mntorflags |= MNT_ACLS;

	if (FUNC30(mp->mnt_optnew, "snapshot", NULL, NULL) == 0) {
		mntorflags |= MNT_SNAPSHOT;
		/*
		 * Once we have set the MNT_SNAPSHOT flag, do not
		 * persist "snapshot" in the options list.
		 */
		FUNC27(mp->mnt_optnew, "snapshot");
		FUNC27(mp->mnt_opt, "snapshot");
	}

	if (FUNC30(mp->mnt_optnew, "fsckpid", NULL, NULL) == 0 &&
	    FUNC34(mp->mnt_optnew, "fsckpid", "%d", &fsckpid) == 1) {
		/*
		 * Once we have set the restricted PID, do not
		 * persist "fsckpid" in the options list.
		 */
		FUNC27(mp->mnt_optnew, "fsckpid");
		FUNC27(mp->mnt_opt, "fsckpid");
		if (mp->mnt_flag & MNT_UPDATE) {
			if (FUNC7(mp)->um_fs->fs_ronly == 0 &&
			     FUNC29(mp->mnt_optnew, "ro", NULL, 0) == 0) {
				FUNC32(mp,
				    "Checker enable: Must be read-only");
				return (EINVAL);
			}
		} else if (FUNC29(mp->mnt_optnew, "ro", NULL, 0) == 0) {
			FUNC32(mp,
			    "Checker enable: Must be read-only");
			return (EINVAL);
		}
		/* Set to -1 if we are done */
		if (fsckpid == 0)
			fsckpid = -1;
	}

	if (FUNC30(mp->mnt_optnew, "nfsv4acls", NULL, NULL) == 0) {
		if (mntorflags & MNT_ACLS) {
			FUNC32(mp,
			    "\"acls\" and \"nfsv4acls\" options "
			    "are mutually exclusive");
			return (EINVAL);
		}
		mntorflags |= MNT_NFS4ACLS;
	}

	FUNC1(mp);
	mp->mnt_flag |= mntorflags;
	FUNC2(mp);
	/*
	 * If updating, check whether changing from read-only to
	 * read/write; if there is no device name, that's all we do.
	 */
	if (mp->mnt_flag & MNT_UPDATE) {
		ump = FUNC7(mp);
		fs = ump->um_fs;
		devvp = ump->um_devvp;
		if (fsckpid == -1 && ump->um_fsckpid > 0) {
			if ((error = FUNC10(mp, WRITECLOSE, td)) != 0 ||
			    (error = FUNC13(ump, MNT_WAIT, 0)) != 0)
				return (error);
			FUNC17();
			/*
			 * Return to normal read-only mode.
			 */
			error = FUNC16(ump->um_cp, 0, -1, 0);
			FUNC18();
			ump->um_fsckpid = 0;
		}
		if (fs->fs_ronly == 0 &&
		    FUNC29(mp->mnt_optnew, "ro", NULL, 0)) {
			/*
			 * Flush any dirty data and suspend filesystem.
			 */
			if ((error = FUNC40(NULL, &mp, V_WAIT)) != 0)
				return (error);
			error = FUNC37(mp);
			if (error != 0)
				return (error);
			/*
			 * Check for and optionally get rid of files open
			 * for writing.
			 */
			flags = WRITECLOSE;
			if (mp->mnt_flag & MNT_FORCE)
				flags |= FORCECLOSE;
			if (FUNC3(mp)) {
				error = FUNC22(mp, flags, td);
			} else {
				error = FUNC10(mp, flags, td);
			}
			if (error) {
				FUNC36(mp, 0);
				return (error);
			}
			if (fs->fs_pendingblocks != 0 ||
			    fs->fs_pendinginodes != 0) {
				FUNC20("WARNING: %s Update error: blocks %jd "
				    "files %d\n", fs->fs_fsmnt, 
				    (intmax_t)fs->fs_pendingblocks,
				    fs->fs_pendinginodes);
				fs->fs_pendingblocks = 0;
				fs->fs_pendinginodes = 0;
			}
			if ((fs->fs_flags & (FS_UNCLEAN | FS_NEEDSFSCK)) == 0)
				fs->fs_clean = 1;
			if ((error = FUNC13(ump, MNT_WAIT, 0)) != 0) {
				fs->fs_ronly = 0;
				fs->fs_clean = 0;
				FUNC36(mp, 0);
				return (error);
			}
			if (FUNC3(mp))
				FUNC24(mp);
			FUNC17();
			/*
			 * Drop our write and exclusive access.
			 */
			FUNC16(ump->um_cp, 0, -1, -1);
			FUNC18();
			fs->fs_ronly = 1;
			FUNC1(mp);
			mp->mnt_flag |= MNT_RDONLY;
			FUNC2(mp);
			/*
			 * Allow the writers to note that filesystem
			 * is ro now.
			 */
			FUNC36(mp, 0);
		}
		if ((mp->mnt_flag & MNT_RELOAD) &&
		    (error = FUNC12(mp, td, 0)) != 0)
			return (error);
		if (fs->fs_ronly &&
		    !FUNC29(mp->mnt_optnew, "ro", NULL, 0)) {
			/*
			 * If we are running a checker, do not allow upgrade.
			 */
			if (ump->um_fsckpid > 0) {
				FUNC32(mp,
				    "Active checker, cannot upgrade to write");
				return (EINVAL);
			}
			/*
			 * If upgrade to read-write by non-root, then verify
			 * that user has necessary permissions on the device.
			 */
			FUNC39(devvp, LK_EXCLUSIVE | LK_RETRY);
			error = FUNC8(devvp, VREAD | VWRITE,
			    td->td_ucred, td);
			if (error)
				error = FUNC21(td, PRIV_VFS_MOUNT_PERM);
			if (error) {
				FUNC9(devvp, 0);
				return (error);
			}
			FUNC9(devvp, 0);
			fs->fs_flags &= ~FS_UNCLEAN;
			if (fs->fs_clean == 0) {
				fs->fs_flags |= FS_UNCLEAN;
				if ((mp->mnt_flag & MNT_FORCE) ||
				    ((fs->fs_flags &
				     (FS_SUJ | FS_NEEDSFSCK)) == 0 &&
				     (fs->fs_flags & FS_DOSOFTDEP))) {
					FUNC20("WARNING: %s was not properly "
					   "dismounted\n", fs->fs_fsmnt);
				} else {
					FUNC32(mp,
					   "R/W mount of %s denied. %s.%s",
					   fs->fs_fsmnt,
					   "Filesystem is not clean - run fsck",
					   (fs->fs_flags & FS_SUJ) == 0 ? "" :
					   " Forced mount will invalidate"
					   " journal contents");
					return (EPERM);
				}
			}
			FUNC17();
			/*
			 * Request exclusive write access.
			 */
			error = FUNC16(ump->um_cp, 0, 1, 1);
			FUNC18();
			if (error)
				return (error);
			if ((error = FUNC40(NULL, &mp, V_WAIT)) != 0)
				return (error);
			error = FUNC37(mp);
			if (error != 0)
				return (error);
			fs->fs_ronly = 0;
			FUNC1(mp);
			saved_mnt_flag = MNT_RDONLY;
			if (FUNC3(mp) && (mp->mnt_flag &
			    MNT_ASYNC) != 0)
				saved_mnt_flag |= MNT_ASYNC;
			mp->mnt_flag &= ~saved_mnt_flag;
			FUNC2(mp);
			fs->fs_mtime = time_second;
			/* check to see if we need to start softdep */
			if ((fs->fs_flags & FS_DOSOFTDEP) &&
			    (error = FUNC23(devvp, mp, fs, td->td_ucred))){
				fs->fs_ronly = 1;
				FUNC1(mp);
				mp->mnt_flag |= saved_mnt_flag;
				FUNC2(mp);
				FUNC36(mp, 0);
				return (error);
			}
			fs->fs_clean = 0;
			if ((error = FUNC13(ump, MNT_WAIT, 0)) != 0) {
				fs->fs_ronly = 1;
				FUNC1(mp);
				mp->mnt_flag |= saved_mnt_flag;
				FUNC2(mp);
				FUNC36(mp, 0);
				return (error);
			}
			if (fs->fs_snapinum[0] != 0)
				FUNC15(mp);
			FUNC36(mp, 0);
		}
		/*
		 * Soft updates is incompatible with "async",
		 * so if we are doing softupdates stop the user
		 * from setting the async flag in an update.
		 * Softdep_mount() clears it in an initial mount
		 * or ro->rw remount.
		 */
		if (FUNC3(mp)) {
			/* XXX: Reset too late ? */
			FUNC1(mp);
			mp->mnt_flag &= ~MNT_ASYNC;
			FUNC2(mp);
		}
		/*
		 * Keep MNT_ACLS flag if it is stored in superblock.
		 */
		if ((fs->fs_flags & FS_ACLS) != 0) {
			/* XXX: Set too late ? */
			FUNC1(mp);
			mp->mnt_flag |= MNT_ACLS;
			FUNC2(mp);
		}

		if ((fs->fs_flags & FS_NFS4ACLS) != 0) {
			/* XXX: Set too late ? */
			FUNC1(mp);
			mp->mnt_flag |= MNT_NFS4ACLS;
			FUNC2(mp);
		}
		/*
		 * If this is a request from fsck to clean up the filesystem,
		 * then allow the specified pid to proceed.
		 */
		if (fsckpid > 0) {
			if (ump->um_fsckpid != 0) {
				FUNC32(mp,
				    "Active checker already running on %s",
				    fs->fs_fsmnt);
				return (EINVAL);
			}
			FUNC0(FUNC3(mp) == 0,
			    ("soft updates enabled on read-only file system"));
			FUNC17();
			/*
			 * Request write access.
			 */
			error = FUNC16(ump->um_cp, 0, 1, 0);
			FUNC18();
			if (error) {
				FUNC32(mp,
				    "Checker activation failed on %s",
				    fs->fs_fsmnt);
				return (error);
			}
			ump->um_fsckpid = fsckpid;
			if (fs->fs_snapinum[0] != 0)
				FUNC15(mp);
			fs->fs_mtime = time_second;
			fs->fs_fmod = 1;
			fs->fs_clean = 0;
			(void) FUNC13(ump, MNT_WAIT, 0);
		}

		/*
		 * If this is a snapshot request, take the snapshot.
		 */
		if (mp->mnt_flag & MNT_SNAPSHOT)
			return (FUNC14(mp, fspec));

		/*
		 * Must not call namei() while owning busy ref.
		 */
		FUNC35(mp);
	}

	/*
	 * Not an update, or updating the name: look up the name
	 * and verify that it refers to a sensible disk device.
	 */
	FUNC6(&ndp, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, fspec, td);
	error = FUNC19(&ndp);
	if ((mp->mnt_flag & MNT_UPDATE) != 0) {
		/*
		 * Unmount does not start if MNT_UPDATE is set.  Mount
		 * update busies mp before setting MNT_UPDATE.  We
		 * must be able to retain our busy ref succesfully,
		 * without sleep.
		 */
		error1 = FUNC26(mp, MBF_NOWAIT);
		FUNC4(error1 == 0);
	}
	if (error != 0)
		return (error);
	FUNC5(&ndp, NDF_ONLY_PNBUF);
	devvp = ndp.ni_vp;
	if (!FUNC38(devvp, &error)) {
		FUNC41(devvp);
		return (error);
	}

	/*
	 * If mount by non-root, then verify that user has necessary
	 * permissions on the device.
	 */
	accmode = VREAD;
	if ((mp->mnt_flag & MNT_RDONLY) == 0)
		accmode |= VWRITE;
	error = FUNC8(devvp, accmode, td->td_ucred, td);
	if (error)
		error = FUNC21(td, PRIV_VFS_MOUNT_PERM);
	if (error) {
		FUNC41(devvp);
		return (error);
	}

	if (mp->mnt_flag & MNT_UPDATE) {
		/*
		 * Update only
		 *
		 * If it's not the same vnode, or at least the same device
		 * then it's not correct.
		 */

		if (devvp->v_rdev != ump->um_devvp->v_rdev)
			error = EINVAL;	/* needs translation */
		FUNC41(devvp);
		if (error)
			return (error);
	} else {
		/*
		 * New mount
		 *
		 * We need the name for the mount point (also used for
		 * "last mounted on") copied in. If an error occurs,
		 * the mount point is discarded by the upper level code.
		 * Note that vfs_mount_alloc() populates f_mntonname for us.
		 */
		if ((error = FUNC11(devvp, mp, td)) != 0) {
			FUNC42(devvp);
			return (error);
		}
		if (fsckpid > 0) {
			FUNC0(FUNC3(mp) == 0,
			    ("soft updates enabled on read-only file system"));
			ump = FUNC7(mp);
			fs = ump->um_fs;
			FUNC17();
			/*
			 * Request write access.
			 */
			error = FUNC16(ump->um_cp, 0, 1, 0);
			FUNC18();
			if (error) {
				FUNC20("WARNING: %s: Checker activation "
				    "failed\n", fs->fs_fsmnt);
			} else { 
				ump->um_fsckpid = fsckpid;
				if (fs->fs_snapinum[0] != 0)
					FUNC15(mp);
				fs->fs_mtime = time_second;
				fs->fs_clean = 0;
				(void) FUNC13(ump, MNT_WAIT, 0);
			}
		}
	}
	FUNC33(mp, fspec);
	return (0);
}