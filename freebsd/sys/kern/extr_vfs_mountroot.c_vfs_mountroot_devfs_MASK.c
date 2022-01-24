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
struct vfsoptlist {int dummy; } ;
struct vfsconf {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct mount {struct vfsoptlist* mnt_opt; int /*<<< orphan*/  mnt_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_MOUNT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  NULLVP ; 
 int /*<<< orphan*/  FUNC1 (struct vfsoptlist*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC3 (struct mount*) ; 
 int FUNC4 (struct mount*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct thread*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct vfsoptlist* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mnt_list ; 
 int /*<<< orphan*/  mountlist ; 
 int /*<<< orphan*/  mountlist_mtx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 struct mount* rootdevmp ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct mount*,int /*<<< orphan*/ ) ; 
 struct vfsconf* FUNC12 (char*) ; 
 struct mount* FUNC13 (int /*<<< orphan*/ ,struct vfsconf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mount*) ; 

__attribute__((used)) static int
FUNC15(struct thread *td, struct mount **mpp)
{
	struct vfsoptlist *opts;
	struct vfsconf *vfsp;
	struct mount *mp;
	int error;

	*mpp = NULL;

	if (rootdevmp != NULL) {
		/*
		 * Already have /dev; this happens during rerooting.
		 */
		error = FUNC11(rootdevmp, 0);
		if (error != 0)
			return (error);
		*mpp = rootdevmp;
	} else {
		vfsp = FUNC12("devfs");
		FUNC0(vfsp != NULL, ("Could not find devfs by name"));
		if (vfsp == NULL)
			return (ENOENT);

		mp = FUNC13(NULLVP, vfsp, "/dev", td->td_ucred);

		error = FUNC3(mp);
		FUNC0(error == 0, ("VFS_MOUNT(devfs) failed %d", error));
		if (error)
			return (error);

		error = FUNC4(mp, &mp->mnt_stat);
		FUNC0(error == 0, ("VFS_STATFS(devfs) failed %d", error));
		if (error)
			return (error);

		opts = FUNC6(sizeof(struct vfsoptlist), M_MOUNT, M_WAITOK);
		FUNC1(opts);
		mp->mnt_opt = opts;

		FUNC7(&mountlist_mtx);
		FUNC2(&mountlist, mp, mnt_list);
		FUNC8(&mountlist_mtx);

		*mpp = mp;
		rootdevmp = mp;
		FUNC14(mp);
	}

	FUNC10();

	error = FUNC5(td, "/", AT_FDCWD, "dev", UIO_SYSSPACE);
	if (error)
		FUNC9("kern_symlink /dev -> / returns %d\n", error);

	return (error);
}