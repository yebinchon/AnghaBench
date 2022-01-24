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
struct uio {scalar_t__ uio_resid; struct thread* uio_td; } ;
struct ucred {int dummy; } ;
struct thread {struct file* td_fpop; } ;
struct file {int f_flag; } ;
struct cdevsw {int (* d_write ) (struct cdev*,struct uio*,int) ;} ;
struct cdev {int /*<<< orphan*/  si_ctime; int /*<<< orphan*/  si_mtime; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int (* fo_write ) (struct file*,struct uio*,struct ucred*,int,struct thread*) ;} ;

/* Variables and functions */
 scalar_t__ DEVFS_IOSIZE_MAX ; 
 int EINVAL ; 
 int FOF_NEXTOFF ; 
 int FOF_NOLOCK ; 
 int IO_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int O_DIRECT ; 
 int O_FSYNC ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*,int) ; 
 int FUNC2 (struct file*,struct cdev**,struct cdevsw**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct uio*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct uio*,int) ; 
 int FUNC6 (struct file*,struct uio*,struct ucred*,int,struct thread*) ; 
 int FUNC7 (struct cdev*,struct uio*,int) ; 
 TYPE_1__ vnops ; 

__attribute__((used)) static int
FUNC8(struct file *fp, struct uio *uio, struct ucred *cred,
    int flags, struct thread *td)
{
	struct cdev *dev;
	int error, ioflag, ref;
	ssize_t resid;
	struct cdevsw *dsw;
	struct file *fpop;

	if (uio->uio_resid > DEVFS_IOSIZE_MAX)
		return (EINVAL);
	fpop = td->td_fpop;
	error = FUNC2(fp, &dev, &dsw, &ref);
	if (error != 0) {
		error = vnops.fo_write(fp, uio, cred, flags, td);
		return (error);
	}
	FUNC0(uio->uio_td == td, ("uio_td %p is not td %p", uio->uio_td, td));
	ioflag = fp->f_flag & (O_NONBLOCK | O_DIRECT | O_FSYNC);
	if (ioflag & O_DIRECT)
		ioflag |= IO_DIRECT;
	FUNC4(fp, uio, flags | FOF_NOLOCK);

	resid = uio->uio_resid;

	error = dsw->d_write(dev, uio, ioflag);
	if (uio->uio_resid != resid || (error == 0 && resid != 0)) {
		FUNC3(&dev->si_ctime);
		dev->si_mtime = dev->si_ctime;
	}
	td->td_fpop = fpop;
	FUNC1(dev, ref);

	FUNC5(fp, uio, flags | FOF_NOLOCK | FOF_NEXTOFF);
	return (error);
}