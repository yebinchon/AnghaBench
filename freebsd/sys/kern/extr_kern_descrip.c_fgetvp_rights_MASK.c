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
struct filedesc {int dummy; } ;
struct filecaps {int dummy; } ;
struct file {struct vnode* f_vnode; int /*<<< orphan*/ * f_ops; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int /*<<< orphan*/  badfileops ; 
 int FUNC0 (struct filedesc*,int,int /*<<< orphan*/ *,struct file**,struct filecaps*) ; 
 int /*<<< orphan*/  FUNC1 (struct filecaps*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 

int
FUNC3(struct thread *td, int fd, cap_rights_t *needrightsp,
    struct filecaps *havecaps, struct vnode **vpp)
{
	struct filedesc *fdp;
	struct filecaps caps;
	struct file *fp;
	int error;

	fdp = td->td_proc->p_fd;
	error = FUNC0(fdp, fd, needrightsp, &fp, &caps);
	if (error != 0)
		return (error);
	if (fp->f_ops == &badfileops) {
		error = EBADF;
		goto out;
	}
	if (fp->f_vnode == NULL) {
		error = EINVAL;
		goto out;
	}

	*havecaps = caps;
	*vpp = fp->f_vnode;
	FUNC2(*vpp);

	return (0);
out:
	FUNC1(&caps);
	return (error);
}