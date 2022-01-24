#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vop_close_args {int a_fflag; struct thread* a_td; struct vnode* a_vp; } ;
struct vnode {int v_iflag; int /*<<< orphan*/ * v_data; struct cdev* v_rdev; } ;
struct thread {struct proc* td_proc; } ;
struct proc {TYPE_1__* p_session; } ;
struct cdevsw {int d_flags; int (* d_close ) (struct cdev*,int,int /*<<< orphan*/ ,struct thread*) ;} ;
struct cdev {scalar_t__ si_refcount; } ;
struct TYPE_3__ {int /*<<< orphan*/ * s_ttydp; struct vnode* s_ttyvp; } ;

/* Variables and functions */
 int D_TRACKCLOSE ; 
 int ENXIO ; 
 int FLASTCLOSE ; 
 int FNONBLOCK ; 
 int FREVOKE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  S_IFCHR ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct cdev*) ; 
 struct cdevsw* FUNC10 (struct cdev*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct cdev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cdev*) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int FUNC13 (struct cdev*,int,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC17 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC18 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct vnode*) ; 

__attribute__((used)) static int
FUNC20(struct vop_close_args *ap)
{
	struct vnode *vp = ap->a_vp, *oldvp;
	struct thread *td = ap->a_td;
	struct proc *p;
	struct cdev *dev = vp->v_rdev;
	struct cdevsw *dsw;
	int dflags, error, ref, vp_locked;

	/*
	 * XXX: Don't call d_close() if we were called because of
	 * XXX: insmntque1() failure.
	 */
	if (vp->v_data == NULL)
		return (0);

	/*
	 * Hack: a tty device that is a controlling terminal
	 * has a reference from the session structure.
	 * We cannot easily tell that a character device is
	 * a controlling terminal, unless it is the closing
	 * process' controlling terminal.  In that case,
	 * if the reference count is 2 (this last descriptor
	 * plus the session), release the reference from the session.
	 */
	if (td != NULL) {
		p = td->td_proc;
		FUNC1(p);
		if (vp == p->p_session->s_ttyvp) {
			FUNC2(p);
			oldvp = NULL;
			FUNC14(&proctree_lock);
			if (vp == p->p_session->s_ttyvp) {
				FUNC3(p->p_session);
				FUNC5(vp);
				if (FUNC9(dev) == 2 &&
				    (vp->v_iflag & VI_DOOMED) == 0) {
					p->p_session->s_ttyvp = NULL;
					p->p_session->s_ttydp = NULL;
					oldvp = vp;
				}
				FUNC6(vp);
				FUNC4(p->p_session);
			}
			FUNC15(&proctree_lock);
			if (oldvp != NULL)
				FUNC19(oldvp);
		} else
			FUNC2(p);
	}
	/*
	 * We do not want to really close the device if it
	 * is still in use unless we are trying to close it
	 * forcibly. Since every use (buffer, vnode, swap, cmap)
	 * holds a reference to the vnode, and because we mark
	 * any other vnodes that alias this device, when the
	 * sum of the reference counts on all the aliased
	 * vnodes descends to one, we are on last close.
	 */
	dsw = FUNC10(dev, &ref);
	if (dsw == NULL)
		return (ENXIO);
	dflags = 0;
	FUNC5(vp);
	if (vp->v_iflag & VI_DOOMED) {
		/* Forced close. */
		dflags |= FREVOKE | FNONBLOCK;
	} else if (dsw->d_flags & D_TRACKCLOSE) {
		/* Keep device updated on status. */
	} else if (FUNC9(dev) > 1) {
		FUNC6(vp);
		FUNC11(dev, ref);
		return (0);
	}
	if (FUNC9(dev) == 1)
		dflags |= FLASTCLOSE;
	FUNC17(vp);
	FUNC6(vp);
	vp_locked = FUNC7(vp);
	FUNC8(vp, 0);
	FUNC0(dev->si_refcount > 0,
	    ("devfs_close() on un-referenced struct cdev *(%s)", FUNC12(dev)));
	error = dsw->d_close(dev, ap->a_fflag | dflags, S_IFCHR, td);
	FUNC11(dev, ref);
	FUNC18(vp, vp_locked | LK_RETRY);
	FUNC16(vp);
	return (error);
}