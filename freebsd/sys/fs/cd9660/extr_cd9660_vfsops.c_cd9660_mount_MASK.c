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
struct mount {int mnt_flag; int /*<<< orphan*/  mnt_optnew; } ;
struct iso_mnt {struct vnode* im_devvp; } ;
typedef  int /*<<< orphan*/  accmode_t ;

/* Variables and functions */
 int EINVAL ; 
 int FOLLOW ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int MNT_RDONLY ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct thread*) ; 
 int /*<<< orphan*/  PRIV_VFS_MOUNT_PERM ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 struct iso_mnt* FUNC4 (struct mount*) ; 
 int FUNC5 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  VREAD ; 
 struct thread* curthread ; 
 int FUNC6 (struct vnode*,struct mount*) ; 
 int FUNC7 (struct nameidata*) ; 
 int FUNC8 (struct thread*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

__attribute__((used)) static int
FUNC15(struct mount *mp)
{
	struct vnode *devvp;
	struct thread *td;
	char *fspec;
	int error;
	accmode_t accmode;
	struct nameidata ndp;
	struct iso_mnt *imp = NULL;

	td = curthread;

	/*
	 * Unconditionally mount as read-only.
	 */
	FUNC0(mp);
	mp->mnt_flag |= MNT_RDONLY;
	FUNC1(mp);

	fspec = FUNC10(mp->mnt_optnew, "from", &error);
	if (error)
		return (error);

	imp = FUNC4(mp);

	if (mp->mnt_flag & MNT_UPDATE) {
		if (FUNC9(mp->mnt_optnew, "export", NULL, 0))
			return (0);
	}
	/*
	 * Not an update, or updating the name: look up the name
	 * and verify that it refers to a sensible block device.
	 */
	FUNC3(&ndp, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, fspec, td);
	if ((error = FUNC7(&ndp)))
		return (error);
	FUNC2(&ndp, NDF_ONLY_PNBUF);
	devvp = ndp.ni_vp;

	if (!FUNC12(devvp, &error)) {
		FUNC13(devvp);
		return (error);
	}

	/*
	 * Verify that user has necessary permissions on the device,
	 * or has superuser abilities
	 */
	accmode = VREAD;
	error = FUNC5(devvp, accmode, td->td_ucred, td);
	if (error)
		error = FUNC8(td, PRIV_VFS_MOUNT_PERM);
	if (error) {
		FUNC13(devvp);
		return (error);
	}

	if ((mp->mnt_flag & MNT_UPDATE) == 0) {
		error = FUNC6(devvp, mp);
		if (error)
			FUNC14(devvp);
	} else {
		if (devvp != imp->im_devvp)
			error = EINVAL;	/* needs translation */
		FUNC13(devvp);
	}
	if (error)
		return (error);
	FUNC11(mp, fspec);
	return (0);
}