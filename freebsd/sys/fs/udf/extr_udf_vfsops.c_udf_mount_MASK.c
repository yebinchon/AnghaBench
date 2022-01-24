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
struct vnode {int dummy; } ;
struct vfsoptlist {int dummy; } ;
struct udf_mnt {int im_flags; int /*<<< orphan*/  im_l2d; int /*<<< orphan*/  im_d2l; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct mount {int mnt_flag; struct vfsoptlist* mnt_optnew; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* open ) (char*,char*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 int FOLLOW ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int MNT_RDONLY ; 
 int MNT_ROOTFS ; 
 int MNT_UPDATE ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC3 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct thread*) ; 
 int /*<<< orphan*/  PRIV_VFS_MOUNT_PERM ; 
 int UDFMNT_KICONV ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 struct udf_mnt* FUNC4 (struct mount*) ; 
 int FUNC5 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  VREAD ; 
 struct thread* curthread ; 
 int FUNC6 (struct nameidata*) ; 
 int FUNC7 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* udf_iconv ; 
 int FUNC10 (struct vnode*,struct mount*) ; 
 int FUNC11 (struct vfsoptlist*,char*,void**,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct mount*,char*) ; 
 scalar_t__ FUNC13 (struct vnode*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC15 (struct vnode*) ; 

__attribute__((used)) static int
FUNC16(struct mount *mp)
{
	struct vnode *devvp;	/* vnode of the mount device */
	struct thread *td;
	struct udf_mnt *imp = NULL;
	struct vfsoptlist *opts;
	char *fspec, *cs_disk, *cs_local;
	int error, len, *udf_flags;
	struct nameidata nd, *ndp = &nd;

	td = curthread;
	opts = mp->mnt_optnew;

	/*
	 * Unconditionally mount as read-only.
	 */
	FUNC0(mp);
	mp->mnt_flag |= MNT_RDONLY;
	FUNC1(mp);

	/*
	 * No root filesystem support.  Probably not a big deal, since the
	 * bootloader doesn't understand UDF.
	 */
	if (mp->mnt_flag & MNT_ROOTFS)
		return (ENOTSUP);

	fspec = NULL;
	error = FUNC11(opts, "from", (void **)&fspec, &len);
	if (!error && fspec[len - 1] != '\0')
		return (EINVAL);

	if (mp->mnt_flag & MNT_UPDATE) {
		return (0);
	}

	/* Check that the mount device exists */
	if (fspec == NULL)
		return (EINVAL);
	FUNC3(ndp, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, fspec, td);
	if ((error = FUNC6(ndp)))
		return (error);
	FUNC2(ndp, NDF_ONLY_PNBUF);
	devvp = ndp->ni_vp;

	if (FUNC13(devvp, &error) == 0) {
		FUNC14(devvp);
		return (error);
	}

	/* Check the access rights on the mount device */
	error = FUNC5(devvp, VREAD, td->td_ucred, td);
	if (error)
		error = FUNC7(td, PRIV_VFS_MOUNT_PERM);
	if (error) {
		FUNC14(devvp);
		return (error);
	}

	if ((error = FUNC10(devvp, mp))) {
		FUNC15(devvp);
		return (error);
	}

	imp = FUNC4(mp);

	udf_flags = NULL;
	error = FUNC11(opts, "flags", (void **)&udf_flags, &len);
	if (error || len != sizeof(int))
		return (EINVAL);
	imp->im_flags = *udf_flags;

	if (imp->im_flags & UDFMNT_KICONV && udf_iconv) {
		cs_disk = NULL;
		error = FUNC11(opts, "cs_disk", (void **)&cs_disk, &len);
		if (!error && cs_disk[len - 1] != '\0')
			return (EINVAL);
		cs_local = NULL;
		error = FUNC11(opts, "cs_local", (void **)&cs_local, &len);
		if (!error && cs_local[len - 1] != '\0')
			return (EINVAL);
		udf_iconv->open(cs_local, cs_disk, &imp->im_d2l);
#if 0
		udf_iconv->open(cs_disk, cs_local, &imp->im_l2d);
#endif
	}

	FUNC12(mp, fspec);
	return 0;
}