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
struct vop_setattr_args {int /*<<< orphan*/  a_cred; struct vattr* a_vap; int /*<<< orphan*/  a_vp; } ;
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_flags; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct file {struct vnode* f_vnode; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_2__ {scalar_t__ fd_type; unsigned int fd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_EXTATTR_SET ; 
 int EACCES ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ Froot ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int PCATCH ; 
 scalar_t__ VNOVAL ; 
 int FUNC0 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct thread*) ; 
 int FUNC5 (struct thread*,unsigned int,int /*<<< orphan*/ ,struct file**) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int) ; 
 int FUNC8 (struct vnode*,struct mount**,int) ; 

__attribute__((used)) static int
FUNC9(struct vop_setattr_args *ap)
{
	struct vattr *vap = ap->a_vap;
	struct vnode *vp;
	struct mount *mp;
	struct file *fp;
	struct thread *td = curthread;
	cap_rights_t rights;
	unsigned fd;
	int error;

	/*
	 * Can't mess with the root vnode
	 */
	if (FUNC2(ap->a_vp)->fd_type == Froot)
		return (EACCES);

	fd = FUNC2(ap->a_vp)->fd_fd;

	/*
	 * Allow setattr where there is an underlying vnode.
	 */
	error = FUNC5(td, fd,
	    FUNC3(&rights, CAP_EXTATTR_SET), &fp);
	if (error) {
		/*
		 * getvnode() returns EINVAL if the file descriptor is not
		 * backed by a vnode.  Silently drop all changes except
		 * chflags(2) in this case.
		 */
		if (error == EINVAL) {
			if (vap->va_flags != VNOVAL)
				error = EOPNOTSUPP;
			else
				error = 0;
		}
		return (error);
	}
	vp = fp->f_vnode;
	if ((error = FUNC8(vp, &mp, V_WAIT | PCATCH)) == 0) {
		FUNC7(vp, LK_EXCLUSIVE | LK_RETRY);
		error = FUNC0(vp, ap->a_vap, ap->a_cred);
		FUNC1(vp, 0);
		FUNC6(mp);
	}
	FUNC4(fp, td);
	return (error);
}