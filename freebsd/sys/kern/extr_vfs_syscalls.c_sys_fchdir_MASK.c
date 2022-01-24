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
struct vnode {struct mount* v_mountedhere; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct file {struct vnode* f_vnode; } ;
struct fchdir_args {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int FUNC2 (struct mount*,int,struct vnode**) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_fchdir_rights ; 
 int FUNC4 (struct vnode*,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct thread*) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*,struct vnode*) ; 
 scalar_t__ FUNC8 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mount*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 

int
FUNC13(struct thread *td, struct fchdir_args *uap)
{
	struct vnode *vp, *tdp;
	struct mount *mp;
	struct file *fp;
	int error;

	FUNC0(uap->fd);
	error = FUNC6(td, uap->fd, &cap_fchdir_rights,
	    &fp);
	if (error != 0)
		return (error);
	vp = fp->f_vnode;
	FUNC12(vp);
	FUNC5(fp, td);
	FUNC10(vp, LK_SHARED | LK_RETRY);
	FUNC1(vp);
	error = FUNC4(vp, td);
	while (!error && (mp = vp->v_mountedhere) != NULL) {
		if (FUNC8(mp, 0))
			continue;
		error = FUNC2(mp, LK_SHARED, &tdp);
		FUNC9(mp);
		if (error != 0)
			break;
		FUNC11(vp);
		vp = tdp;
	}
	if (error != 0) {
		FUNC11(vp);
		return (error);
	}
	FUNC3(vp, 0);
	FUNC7(td, vp);
	return (0);
}