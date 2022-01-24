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
struct flock_args {int how; int /*<<< orphan*/  fd; } ;
struct flock {int /*<<< orphan*/  l_type; scalar_t__ l_len; scalar_t__ l_start; int /*<<< orphan*/  l_whence; } ;
struct file {scalar_t__ f_type; int /*<<< orphan*/  f_flag; struct vnode* f_vnode; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ DTYPE_VNODE ; 
 int EBADF ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FHASLOCK ; 
 int F_FLOCK ; 
 int /*<<< orphan*/  F_RDLCK ; 
 int /*<<< orphan*/  F_SETLK ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int F_WAIT ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int LOCK_EX ; 
 int LOCK_NB ; 
 int LOCK_SH ; 
 int LOCK_UN ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_flock_rights ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**) ; 

int
FUNC5(struct thread *td, struct flock_args *uap)
{
	struct file *fp;
	struct vnode *vp;
	struct flock lf;
	int error;

	error = FUNC4(td, uap->fd, &cap_flock_rights, &fp);
	if (error != 0)
		return (error);
	if (fp->f_type != DTYPE_VNODE) {
		FUNC3(fp, td);
		return (EOPNOTSUPP);
	}

	vp = fp->f_vnode;
	lf.l_whence = SEEK_SET;
	lf.l_start = 0;
	lf.l_len = 0;
	if (uap->how & LOCK_UN) {
		lf.l_type = F_UNLCK;
		FUNC1(&fp->f_flag, FHASLOCK);
		error = FUNC0(vp, (caddr_t)fp, F_UNLCK, &lf, F_FLOCK);
		goto done2;
	}
	if (uap->how & LOCK_EX)
		lf.l_type = F_WRLCK;
	else if (uap->how & LOCK_SH)
		lf.l_type = F_RDLCK;
	else {
		error = EBADF;
		goto done2;
	}
	FUNC2(&fp->f_flag, FHASLOCK);
	error = FUNC0(vp, (caddr_t)fp, F_SETLK, &lf,
	    (uap->how & LOCK_NB) ? F_FLOCK : F_FLOCK | F_WAIT);
done2:
	FUNC3(fp, td);
	return (error);
}