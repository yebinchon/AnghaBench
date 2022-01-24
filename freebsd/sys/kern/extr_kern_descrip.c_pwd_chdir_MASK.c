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
struct vnode {scalar_t__ v_usecount; } ;
struct thread {TYPE_1__* td_proc; } ;
struct filedesc {struct vnode* fd_cdir; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

void
FUNC4(struct thread *td, struct vnode *vp)
{
	struct filedesc *fdp;
	struct vnode *oldvp;

	fdp = td->td_proc->p_fd;
	FUNC0(fdp);
	FUNC2(vp->v_usecount > 0, vp,
	    ("chdir to a vnode with zero usecount"));
	oldvp = fdp->fd_cdir;
	fdp->fd_cdir = vp;
	FUNC1(fdp);
	FUNC3(oldvp);
}