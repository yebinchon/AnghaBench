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
struct stat {int dummy; } ;
struct mount {int dummy; } ;
struct fhandle {int /*<<< orphan*/  fh_fid; int /*<<< orphan*/  fh_fsid; } ;

/* Variables and functions */
 int ESTALE ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  PRIV_VFS_FHSTAT ; 
 int FUNC0 (struct mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vnode**) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 struct mount* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int FUNC4 (struct vnode*,struct stat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 

int
FUNC6(struct thread *td, struct fhandle fh, struct stat *sb)
{
	struct mount *mp;
	struct vnode *vp;
	int error;

	error = FUNC1(td, PRIV_VFS_FHSTAT);
	if (error != 0)
		return (error);
	if ((mp = FUNC2(&fh.fh_fsid)) == NULL)
		return (ESTALE);
	error = FUNC0(mp, &fh.fh_fid, LK_EXCLUSIVE, &vp);
	FUNC3(mp);
	if (error != 0)
		return (error);
	error = FUNC4(vp, sb, td->td_ucred, NOCRED, td);
	FUNC5(vp);
	return (error);
}