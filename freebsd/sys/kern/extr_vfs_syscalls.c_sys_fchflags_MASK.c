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
struct thread {int dummy; } ;
struct file {int /*<<< orphan*/  f_vnode; } ;
struct fchflags_args {int /*<<< orphan*/  flags; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_fchflags_rights ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct thread*) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

int
FUNC8(struct thread *td, struct fchflags_args *uap)
{
	struct file *fp;
	int error;

	FUNC0(uap->fd);
	FUNC1(uap->flags);
	error = FUNC5(td, uap->fd, &cap_fchflags_rights,
	    &fp);
	if (error != 0)
		return (error);
#ifdef AUDIT
	vn_lock(fp->f_vnode, LK_SHARED | LK_RETRY);
	AUDIT_ARG_VNODE1(fp->f_vnode);
	VOP_UNLOCK(fp->f_vnode, 0);
#endif
	error = FUNC6(td, fp->f_vnode, uap->flags);
	FUNC4(fp, td);
	return (error);
}