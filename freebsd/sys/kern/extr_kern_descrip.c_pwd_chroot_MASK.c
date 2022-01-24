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
struct thread {TYPE_1__* td_proc; } ;
struct filedesc {scalar_t__ fd_rdir; struct vnode* fd_jdir; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int chroot_allow_open_directories ; 
 int FUNC2 (struct filedesc*) ; 
 scalar_t__ rootvnode ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 

int
FUNC5(struct thread *td, struct vnode *vp)
{
	struct filedesc *fdp;
	struct vnode *oldvp;
	int error;

	fdp = td->td_proc->p_fd;
	FUNC0(fdp);
	if (chroot_allow_open_directories == 0 ||
	    (chroot_allow_open_directories == 1 && fdp->fd_rdir != rootvnode)) {
		error = FUNC2(fdp);
		if (error != 0) {
			FUNC1(fdp);
			return (error);
		}
	}
	oldvp = fdp->fd_rdir;
	FUNC3(vp);
	fdp->fd_rdir = vp;
	if (fdp->fd_jdir == NULL) {
		FUNC3(vp);
		fdp->fd_jdir = vp;
	}
	FUNC1(fdp);
	FUNC4(oldvp);
	return (0);
}