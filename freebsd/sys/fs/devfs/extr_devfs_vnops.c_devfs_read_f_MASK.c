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
struct uio {scalar_t__ uio_resid; } ;
struct ucred {int dummy; } ;
struct thread {struct file* td_fpop; } ;
struct file {int f_flag; } ;
struct cdevsw {int (* d_read ) (struct cdev*,struct uio*,int) ;} ;
struct cdev {int /*<<< orphan*/  si_atime; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int (* fo_read ) (struct file*,struct uio*,struct ucred*,int,struct thread*) ;} ;

/* Variables and functions */
 scalar_t__ DEVFS_IOSIZE_MAX ; 
 int EINVAL ; 
 int FOF_NEXTOFF ; 
 int FOF_NOLOCK ; 
 int IO_DIRECT ; 
 int O_DIRECT ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct cdev*,int) ; 
 int FUNC1 (struct file*,struct cdev**,struct cdevsw**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct uio*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct uio*,int) ; 
 int FUNC5 (struct file*,struct uio*,struct ucred*,int,struct thread*) ; 
 int FUNC6 (struct cdev*,struct uio*,int) ; 
 TYPE_1__ vnops ; 

__attribute__((used)) static int
FUNC7(struct file *fp, struct uio *uio, struct ucred *cred,
    int flags, struct thread *td)
{
	struct cdev *dev;
	int ioflag, error, ref;
	ssize_t resid;
	struct cdevsw *dsw;
	struct file *fpop;

	if (uio->uio_resid > DEVFS_IOSIZE_MAX)
		return (EINVAL);
	fpop = td->td_fpop;
	error = FUNC1(fp, &dev, &dsw, &ref);
	if (error != 0) {
		error = vnops.fo_read(fp, uio, cred, flags, td);
		return (error);
	}
	resid = uio->uio_resid;
	ioflag = fp->f_flag & (O_NONBLOCK | O_DIRECT);
	if (ioflag & O_DIRECT)
		ioflag |= IO_DIRECT;

	FUNC3(fp, uio, flags | FOF_NOLOCK);
	error = dsw->d_read(dev, uio, ioflag);
	if (uio->uio_resid != resid || (error == 0 && resid != 0))
		FUNC2(&dev->si_atime);
	td->td_fpop = fpop;
	FUNC0(dev, ref);

	FUNC4(fp, uio, flags | FOF_NOLOCK | FOF_NEXTOFF);
	return (error);
}