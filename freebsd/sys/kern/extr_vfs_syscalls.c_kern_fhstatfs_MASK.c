#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct statfs {int dummy; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  fh_fid; int /*<<< orphan*/  fh_fsid; } ;
typedef  TYPE_1__ fhandle_t ;

/* Variables and functions */
 int ESTALE ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  PRIV_VFS_FHSTATFS ; 
 int FUNC0 (struct mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vnode**) ; 
 int FUNC1 (struct mount*,struct statfs*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mount*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct mount*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 struct mount* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 

int
FUNC8(struct thread *td, fhandle_t fh, struct statfs *buf)
{
	struct mount *mp;
	struct vnode *vp;
	int error;

	error = FUNC4(td, PRIV_VFS_FHSTATFS);
	if (error != 0)
		return (error);
	if ((mp = FUNC5(&fh.fh_fsid)) == NULL)
		return (ESTALE);
	error = FUNC0(mp, &fh.fh_fid, LK_EXCLUSIVE, &vp);
	if (error != 0) {
		FUNC6(mp);
		return (error);
	}
	FUNC7(vp);
	error = FUNC3(td->td_ucred, mp);
	if (error != 0)
		goto out;
#ifdef MAC
	error = mac_mount_check_stat(td->td_ucred, mp);
	if (error != 0)
		goto out;
#endif
	error = FUNC1(mp, buf);
out:
	FUNC6(mp);
	return (error);
}