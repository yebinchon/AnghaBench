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
struct thread {int dummy; } ;
struct file {scalar_t__ f_type; struct vnode* f_vnode; } ;

/* Variables and functions */
 scalar_t__ DTYPE_PIPE ; 
 scalar_t__ DTYPE_SOCKET ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 long PIPE_BUF ; 
 int FUNC0 (struct vnode*,int,long*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 int _PC_ASYNC_IO ; 
 int _PC_PIPE_BUF ; 
 long _POSIX_ASYNCHRONOUS_IO ; 
 int /*<<< orphan*/  cap_fpathconf_rights ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct thread*) ; 
 int FUNC3 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int) ; 

int
FUNC5(struct thread *td, int fd, int name, long *valuep)
{
	struct file *fp;
	struct vnode *vp;
	int error;

	error = FUNC3(td, fd, &cap_fpathconf_rights, &fp);
	if (error != 0)
		return (error);

	if (name == _PC_ASYNC_IO) {
		*valuep = _POSIX_ASYNCHRONOUS_IO;
		goto out;
	}
	vp = fp->f_vnode;
	if (vp != NULL) {
		FUNC4(vp, LK_SHARED | LK_RETRY);
		error = FUNC0(vp, name, valuep);
		FUNC1(vp, 0);
	} else if (fp->f_type == DTYPE_PIPE || fp->f_type == DTYPE_SOCKET) {
		if (name != _PC_PIPE_BUF) {
			error = EINVAL;
		} else {
			*valuep = PIPE_BUF;
			error = 0;
		}
	} else {
		error = EOPNOTSUPP;
	}
out:
	FUNC2(fp, td);
	return (error);
}