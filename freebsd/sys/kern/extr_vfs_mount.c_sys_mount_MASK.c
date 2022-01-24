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
typedef  int uint64_t ;
struct vfsconf {int vfc_flags; TYPE_2__* vfc_vfsops; TYPE_1__* vfc_vfsops_sd; } ;
struct thread {int dummy; } ;
struct mount_args {int flags; int /*<<< orphan*/  data; int /*<<< orphan*/  path; int /*<<< orphan*/  type; } ;
struct mntarg {int dummy; } ;
struct TYPE_4__ {int (* vfs_cmount ) (struct mntarg*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_3__ {int (* vfs_cmount ) (struct mntarg*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MFSNAMELEN ; 
 int /*<<< orphan*/  MNAMELEN ; 
 int MNT_NOEXEC ; 
 int MNT_NOSUID ; 
 int MNT_RDONLY ; 
 int MNT_ROOTFS ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int VFCF_SBDRY ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mntarg* FUNC5 (struct mntarg*,int,char*) ; 
 struct mntarg* FUNC6 (struct mntarg*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mntarg*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mntarg*,int /*<<< orphan*/ ,int) ; 
 struct vfsconf* FUNC9 (char*,struct thread*,int*) ; 

int
FUNC10(struct thread *td, struct mount_args *uap)
{
	char *fstype;
	struct vfsconf *vfsp = NULL;
	struct mntarg *ma = NULL;
	uint64_t flags;
	int error;

	/*
	 * Mount flags are now 64-bits. On 32-bit architectures only
	 * 32-bits are passed in, but from here on everything handles
	 * 64-bit flags correctly.
	 */
	flags = uap->flags;

	FUNC0(flags);

	/*
	 * Filter out MNT_ROOTFS.  We do not want clients of mount() in
	 * userspace to set this flag, but we must filter it out if we want
	 * MNT_UPDATE on the root file system to work.
	 * MNT_ROOTFS should only be set by the kernel when mounting its
	 * root file system.
	 */
	flags &= ~MNT_ROOTFS;

	fstype = FUNC4(MFSNAMELEN, M_TEMP, M_WAITOK);
	error = FUNC2(uap->type, fstype, MFSNAMELEN, NULL);
	if (error) {
		FUNC3(fstype, M_TEMP);
		return (error);
	}

	FUNC1(fstype);
	vfsp = FUNC9(fstype, td, &error);
	FUNC3(fstype, M_TEMP);
	if (vfsp == NULL)
		return (ENOENT);
	if (((vfsp->vfc_flags & VFCF_SBDRY) != 0 &&
	    vfsp->vfc_vfsops_sd->vfs_cmount == NULL) ||
	    ((vfsp->vfc_flags & VFCF_SBDRY) == 0 &&
	    vfsp->vfc_vfsops->vfs_cmount == NULL))
		return (EOPNOTSUPP);

	ma = FUNC6(ma, "fstype", uap->type, MFSNAMELEN);
	ma = FUNC6(ma, "fspath", uap->path, MNAMELEN);
	ma = FUNC5(ma, flags & MNT_RDONLY, "noro");
	ma = FUNC5(ma, !(flags & MNT_NOSUID), "nosuid");
	ma = FUNC5(ma, !(flags & MNT_NOEXEC), "noexec");

	if ((vfsp->vfc_flags & VFCF_SBDRY) != 0)
		return (vfsp->vfc_vfsops_sd->vfs_cmount(ma, uap->data, flags));
	return (vfsp->vfc_vfsops->vfs_cmount(ma, uap->data, flags));
}