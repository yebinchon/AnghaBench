#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct vop_ioctl_args {int a_command; int /*<<< orphan*/  a_fflag; struct fiodgname_arg* a_data; struct thread* a_td; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct fiodgname_arg {int len; } ;
struct cdevsw {int d_flags; int (* d_ioctl ) (struct cdev*,int,struct fiodgname_arg*,int /*<<< orphan*/ ,struct thread*) ;} ;
struct cdev {scalar_t__ si_refcount; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_ttydp; struct vnode* s_ttyvp; } ;
struct TYPE_4__ {TYPE_2__* p_session; } ;

/* Variables and functions */
 int D_TYPEMASK ; 
 int EINVAL ; 
 int ENOIOCTL ; 
 int ENOTTY ; 
 int ENXIO ; 
#define  FIODGNAME 130 
#define  FIODGNAME_32 129 
#define  FIODTYPE 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int TIOCSCTTY ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct cdev*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*,int) ; 
 char* FUNC7 (struct cdev*) ; 
 struct cdevsw* FUNC8 (struct vnode*,struct cdev**,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct fiodgname_arg*,int) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int FUNC11 (struct cdev*,int,struct fiodgname_arg*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

__attribute__((used)) static int
FUNC15(struct vop_ioctl_args *ap)
{
	struct fiodgname_arg *fgn;
	struct vnode *vpold, *vp;
	struct cdevsw *dsw;
	struct thread *td;
	struct cdev *dev;
	int error, ref, i;
	const char *p;
	u_long com;

	vp = ap->a_vp;
	com = ap->a_command;
	td = ap->a_td;

	dsw = FUNC8(vp, &dev, &ref);
	if (dsw == NULL)
		return (ENXIO);
	FUNC0(dev->si_refcount > 0,
	    ("devfs: un-referenced struct cdev *(%s)", FUNC7(dev)));

	switch (com) {
	case FIODTYPE:
		*(int *)ap->a_data = dsw->d_flags & D_TYPEMASK;
		error = 0;
		break;
	case FIODGNAME:
#ifdef	COMPAT_FREEBSD32
	case FIODGNAME_32:
#endif
		fgn = ap->a_data;
		p = FUNC7(dev);
		i = FUNC10(p) + 1;
		if (i > fgn->len)
			error = EINVAL;
		else
			error = FUNC5(p, FUNC9(fgn, com), i);
		break;
	default:
		error = dsw->d_ioctl(dev, com, ap->a_data, ap->a_fflag, td);
	}

	FUNC6(dev, ref);
	if (error == ENOIOCTL)
		error = ENOTTY;

	if (error == 0 && com == TIOCSCTTY) {
		/* Do nothing if reassigning same control tty */
		FUNC12(&proctree_lock);
		if (td->td_proc->p_session->s_ttyvp == vp) {
			FUNC13(&proctree_lock);
			return (0);
		}

		vpold = td->td_proc->p_session->s_ttyvp;
		FUNC3(vp);
		FUNC1(td->td_proc->p_session);
		td->td_proc->p_session->s_ttyvp = vp;
		td->td_proc->p_session->s_ttydp = FUNC4(dev);
		FUNC2(td->td_proc->p_session);

		FUNC13(&proctree_lock);

		/* Get rid of reference to old control tty */
		if (vpold)
			FUNC14(vpold);
	}
	return (error);
}