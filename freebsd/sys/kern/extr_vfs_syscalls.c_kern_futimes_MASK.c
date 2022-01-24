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
struct timeval {int dummy; } ;
struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct file {int /*<<< orphan*/  f_vnode; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_futimes_rights ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct timeval*,int,struct timespec*) ; 
 int FUNC5 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ,struct timespec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

int
FUNC8(struct thread *td, int fd, struct timeval *tptr,
    enum uio_seg tptrseg)
{
	struct timespec ts[2];
	struct file *fp;
	int error;

	FUNC0(fd);
	error = FUNC4(tptr, tptrseg, ts);
	if (error != 0)
		return (error);
	error = FUNC5(td, fd, &cap_futimes_rights, &fp);
	if (error != 0)
		return (error);
#ifdef AUDIT
	vn_lock(fp->f_vnode, LK_SHARED | LK_RETRY);
	AUDIT_ARG_VNODE1(fp->f_vnode);
	VOP_UNLOCK(fp->f_vnode, 0);
#endif
	error = FUNC6(td, fp->f_vnode, ts, 2, tptr == NULL);
	FUNC3(fp, td);
	return (error);
}