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
struct vop_open_args {int /*<<< orphan*/  a_mode; struct file* a_fp; struct vnode* a_vp; struct thread* a_td; } ;
struct vnode {scalar_t__ v_type; struct cdev* v_rdev; } ;
struct thread {struct file* td_fpop; } ;
struct file {int /*<<< orphan*/  f_flag; int /*<<< orphan*/ * f_ops; struct vnode* f_vnode; struct cdev* f_data; } ;
struct cdevsw {int (* d_fdopen ) (struct cdev*,int /*<<< orphan*/ ,struct thread*,struct file*) ;int (* d_open ) (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ;} ;
struct cdev {scalar_t__ si_iosize_max; } ;

/* Variables and functions */
 scalar_t__ DFLTPHYS ; 
 int /*<<< orphan*/  DTYPE_VNODE ; 
 int EINTR ; 
 int ENXIO ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  S_IFCHR ; 
 scalar_t__ VBLK ; 
 int FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  badfileops ; 
 struct cdevsw* FUNC3 (struct cdev*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct cdev*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  devfs_ops_f ; 
 int /*<<< orphan*/  FUNC6 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cdev*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct cdev*,int /*<<< orphan*/ ,struct thread*,struct file*) ; 
 int FUNC8 (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC10(struct vop_open_args *ap)
{
	struct thread *td = ap->a_td;
	struct vnode *vp = ap->a_vp;
	struct cdev *dev = vp->v_rdev;
	struct file *fp = ap->a_fp;
	int error, ref, vlocked;
	struct cdevsw *dsw;
	struct file *fpop;

	if (vp->v_type == VBLK)
		return (ENXIO);

	if (dev == NULL)
		return (ENXIO);

	/* Make this field valid before any I/O in d_open. */
	if (dev->si_iosize_max == 0)
		dev->si_iosize_max = DFLTPHYS;

	dsw = FUNC3(dev, &ref);
	if (dsw == NULL)
		return (ENXIO);
	if (fp == NULL && dsw->d_fdopen != NULL) {
		FUNC4(dev, ref);
		return (ENXIO);
	}

	vlocked = FUNC1(vp);
	FUNC2(vp, 0);

	fpop = td->td_fpop;
	td->td_fpop = fp;
	if (fp != NULL) {
		fp->f_data = dev;
		fp->f_vnode = vp;
	}
	if (dsw->d_fdopen != NULL)
		error = dsw->d_fdopen(dev, ap->a_mode, td, fp);
	else
		error = dsw->d_open(dev, ap->a_mode, S_IFCHR, td);
	/* Clean up any cdevpriv upon error. */
	if (error != 0)
		FUNC5();
	td->td_fpop = fpop;

	FUNC9(vp, vlocked | LK_RETRY);
	FUNC4(dev, ref);
	if (error != 0) {
		if (error == ERESTART)
			error = EINTR;
		return (error);
	}

#if 0	/* /dev/console */
	KASSERT(fp != NULL, ("Could not vnode bypass device on NULL fp"));
#else
	if (fp == NULL)
		return (error);
#endif
	if (fp->f_ops == &badfileops)
		FUNC6(fp, fp->f_flag, DTYPE_VNODE, dev, &devfs_ops_f);
	return (error);
}