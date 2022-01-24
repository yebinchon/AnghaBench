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
struct vnode {scalar_t__ v_type; struct mount* v_mountedhere; int /*<<< orphan*/  v_iflag; } ;
struct thread {int dummy; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct TYPE_3__ {int /*<<< orphan*/  f_mntonname; } ;
struct mount {struct vnode* mnt_vnodecovered; TYPE_1__ mnt_stat; int /*<<< orphan*/  mnt_flag; } ;
struct TYPE_4__ {struct mount* v_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FD_NONE ; 
 int FOLLOW ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  MNAMELEN ; 
 int /*<<< orphan*/  MNT_ROOTFS ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct thread*) ; 
 struct mount* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mount*,int /*<<< orphan*/ ) ; 
 struct mount* FUNC5 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 scalar_t__ VDIR ; 
 scalar_t__ FUNC7 (struct mount*,int /*<<< orphan*/ ,struct vnode**) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  VI_MOUNT ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_SAVE ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct mount*,int) ; 
 int FUNC13 (struct thread*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_list ; 
 int /*<<< orphan*/  mountlist ; 
 int /*<<< orphan*/  mountlist_mtx ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 TYPE_2__* rootvnode ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct mount*) ; 
 int FUNC22 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC24 (struct vnode*) ; 

__attribute__((used)) static void
FUNC25(struct thread *td, struct mount *mpdevfs)
{
	struct nameidata nd;
	struct mount *mporoot, *mpnroot;
	struct vnode *vp, *vporoot, *vpdevfs;
	char *fspath;
	int error;

	mpnroot = FUNC5(mpdevfs, mnt_list);

	/* Shuffle the mountlist. */
	FUNC14(&mountlist_mtx);
	mporoot = FUNC2(&mountlist);
	FUNC6(&mountlist, mpdevfs, mnt_list);
	if (mporoot != mpdevfs) {
		FUNC6(&mountlist, mpnroot, mnt_list);
		FUNC3(&mountlist, mpnroot, mnt_list);
	}
	FUNC4(&mountlist, mpdevfs, mnt_list);
	FUNC15(&mountlist_mtx);

	FUNC12(mporoot, true);
	if (mporoot != mpdevfs)
		FUNC12(mpdevfs, true);

	if (FUNC7(mporoot, LK_EXCLUSIVE, &vporoot))
		FUNC17("vfs_mountroot_shuffle: Cannot find root vnode");

	FUNC8(vporoot);
	vporoot->v_iflag &= ~VI_MOUNT;
	FUNC9(vporoot);
	vporoot->v_mountedhere = NULL;
	mporoot->mnt_flag &= ~MNT_ROOTFS;
	mporoot->mnt_vnodecovered = NULL;
	FUNC23(vporoot);

	/* Set up the new rootvnode, and purge the cache */
	mpnroot->mnt_vnodecovered = NULL;
	FUNC19();
	FUNC12(rootvnode->v_mount, true);

	if (mporoot != mpdevfs) {
		/* Remount old root under /.mount or /mnt */
		fspath = "/.mount";
		FUNC1(&nd, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE,
		    fspath, td);
		error = FUNC16(&nd);
		if (error) {
			FUNC0(&nd, NDF_ONLY_PNBUF);
			fspath = "/mnt";
			FUNC1(&nd, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE,
			    fspath, td);
			error = FUNC16(&nd);
		}
		if (!error) {
			vp = nd.ni_vp;
			error = (vp->v_type == VDIR) ? 0 : ENOTDIR;
			if (!error)
				error = FUNC22(vp, V_SAVE, 0, 0);
			if (!error) {
				FUNC11(vp);
				mporoot->mnt_vnodecovered = vp;
				vp->v_mountedhere = mporoot;
				FUNC20(mporoot->mnt_stat.f_mntonname,
				    fspath, MNAMELEN);
				FUNC10(vp, 0);
			} else
				FUNC23(vp);
		}
		FUNC0(&nd, NDF_ONLY_PNBUF);

		if (error)
			FUNC18("mountroot: unable to remount previous root "
			    "under /.mount or /mnt (error %d)\n", error);
	}

	/* Remount devfs under /dev */
	FUNC1(&nd, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, "/dev", td);
	error = FUNC16(&nd);
	if (!error) {
		vp = nd.ni_vp;
		error = (vp->v_type == VDIR) ? 0 : ENOTDIR;
		if (!error)
			error = FUNC22(vp, V_SAVE, 0, 0);
		if (!error) {
			vpdevfs = mpdevfs->mnt_vnodecovered;
			if (vpdevfs != NULL) {
				FUNC11(vpdevfs);
				vpdevfs->v_mountedhere = NULL;
				FUNC24(vpdevfs);
			}
			mpdevfs->mnt_vnodecovered = vp;
			vp->v_mountedhere = mpdevfs;
			FUNC10(vp, 0);
		} else
			FUNC23(vp);
	}
	if (error)
		FUNC18("mountroot: unable to remount devfs under /dev "
		    "(error %d)\n", error);
	FUNC0(&nd, NDF_ONLY_PNBUF);

	if (mporoot == mpdevfs) {
		FUNC21(mpdevfs);
		/* Unlink the no longer needed /dev/dev -> / symlink */
		error = FUNC13(td, AT_FDCWD, "/dev/dev", FD_NONE,
		    UIO_SYSSPACE, 0, 0);
		if (error)
			FUNC18("mountroot: unable to unlink /dev/dev "
			    "(error %d)\n", error);
	}
}