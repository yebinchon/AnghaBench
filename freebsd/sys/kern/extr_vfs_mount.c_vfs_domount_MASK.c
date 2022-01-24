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
struct vnode {int v_vflag; } ;
struct vfsoptlist {int dummy; } ;
struct vfsconf {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int EBUSY ; 
 int ENAMETOOLONG ; 
 int ENODEV ; 
 int FOLLOW ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 scalar_t__ MFSNAMELEN ; 
 scalar_t__ MNAMELEN ; 
 int MNT_EXPORTED ; 
 int MNT_NOCOVER ; 
 int MNT_NOSUID ; 
 int MNT_ROOTFS ; 
 int MNT_SUIDDIR ; 
 int MNT_UPDATE ; 
 int MNT_USER ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct thread*) ; 
 int /*<<< orphan*/  PRIV_VFS_MOUNT ; 
 int /*<<< orphan*/  PRIV_VFS_MOUNT_EXPORTED ; 
 int /*<<< orphan*/  PRIV_VFS_MOUNT_NONUSER ; 
 int /*<<< orphan*/  PRIV_VFS_MOUNT_SUIDDIR ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int VV_ROOT ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nameidata*) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ usermount ; 
 struct vfsconf* FUNC9 (char const*) ; 
 struct vfsconf* FUNC10 (char const*,struct thread*,int*) ; 
 int FUNC11 (struct thread*,struct vfsconf*,char*,struct vnode*,int,struct vfsoptlist**) ; 
 int FUNC12 (struct thread*,struct vnode*,int,struct vfsoptlist**) ; 
 int FUNC13 (struct thread*,struct vnode*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

__attribute__((used)) static int
FUNC15(
	struct thread *td,		/* Calling thread. */
	const char *fstype,		/* Filesystem type. */
	char *fspath,			/* Mount path. */
	uint64_t fsflags,		/* Flags common to all filesystems. */
	struct vfsoptlist **optlist	/* Options local to the filesystem. */
	)
{
	struct vfsconf *vfsp;
	struct nameidata nd;
	struct vnode *vp;
	char *pathbuf;
	int error;

	/*
	 * Be ultra-paranoid about making sure the type and fspath
	 * variables will fit in our mp buffers, including the
	 * terminating NUL.
	 */
	if (FUNC8(fstype) >= MFSNAMELEN || FUNC8(fspath) >= MNAMELEN)
		return (ENAMETOOLONG);

	if (FUNC3(td->td_ucred) || usermount == 0) {
		if ((error = FUNC6(td, PRIV_VFS_MOUNT)) != 0)
			return (error);
	}

	/*
	 * Do not allow NFS export or MNT_SUIDDIR by unprivileged users.
	 */
	if (fsflags & MNT_EXPORTED) {
		error = FUNC6(td, PRIV_VFS_MOUNT_EXPORTED);
		if (error)
			return (error);
	}
	if (fsflags & MNT_SUIDDIR) {
		error = FUNC6(td, PRIV_VFS_MOUNT_SUIDDIR);
		if (error)
			return (error);
	}
	/*
	 * Silently enforce MNT_NOSUID and MNT_USER for unprivileged users.
	 */
	if ((fsflags & (MNT_NOSUID | MNT_USER)) != (MNT_NOSUID | MNT_USER)) {
		if (FUNC6(td, PRIV_VFS_MOUNT_NONUSER) != 0)
			fsflags |= MNT_NOSUID | MNT_USER;
	}

	/* Load KLDs before we lock the covered vnode to avoid reversals. */
	vfsp = NULL;
	if ((fsflags & MNT_UPDATE) == 0) {
		/* Don't try to load KLDs if we're mounting the root. */
		if (fsflags & MNT_ROOTFS)
			vfsp = FUNC9(fstype);
		else
			vfsp = FUNC10(fstype, td, &error);
		if (vfsp == NULL)
			return (ENODEV);
	}

	/*
	 * Get vnode to be covered or mount point's vnode in case of MNT_UPDATE.
	 */
	FUNC1(&nd, LOOKUP, FOLLOW | LOCKLEAF | AUDITVNODE1,
	    UIO_SYSSPACE, fspath, td);
	error = FUNC5(&nd);
	if (error != 0)
		return (error);
	FUNC0(&nd, NDF_ONLY_PNBUF);
	vp = nd.ni_vp;
	if ((fsflags & MNT_UPDATE) == 0) {
		if ((vp->v_vflag & VV_ROOT) != 0 &&
		    (fsflags & MNT_NOCOVER) != 0) {
			FUNC14(vp);
			return (EBUSY);
		}
		pathbuf = FUNC4(MNAMELEN, M_TEMP, M_WAITOK);
		FUNC7(pathbuf, fspath);
		error = FUNC13(td, vp, pathbuf, MNAMELEN);
		/* debug.disablefullpath == 1 results in ENODEV */
		if (error == 0 || error == ENODEV) {
			error = FUNC11(td, vfsp, pathbuf, vp,
			    fsflags, optlist);
		}
		FUNC2(pathbuf, M_TEMP);
	} else
		error = FUNC12(td, vp, fsflags, optlist);

	return (error);
}