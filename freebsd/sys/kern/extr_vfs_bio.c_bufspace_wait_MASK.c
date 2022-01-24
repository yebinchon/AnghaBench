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
struct vnode {scalar_t__ v_type; } ;
struct thread {int td_pflags; } ;
struct bufdomain {scalar_t__ bd_wanted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufdomain*) ; 
 int GB_NOWAIT_BD ; 
 int PRIBIO ; 
 int TDP_BUFNEED ; 
 int TDP_NORUNNINGBUF ; 
 scalar_t__ VCHR ; 
 int FUNC3 (struct vnode*,struct bufdomain*,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  flushbufqtarget ; 
 int FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static void
FUNC5(struct bufdomain *bd, struct vnode *vp, int gbflags,
    int slpflag, int slptimeo)
{
	struct thread *td;
	int error, fl, norunbuf;

	if ((gbflags & GB_NOWAIT_BD) != 0)
		return;

	td = curthread;
	FUNC0(bd);
	while (bd->bd_wanted) {
		if (vp != NULL && vp->v_type != VCHR &&
		    (td->td_pflags & TDP_BUFNEED) == 0) {
			FUNC2(bd);
			/*
			 * getblk() is called with a vnode locked, and
			 * some majority of the dirty buffers may as
			 * well belong to the vnode.  Flushing the
			 * buffers there would make a progress that
			 * cannot be achieved by the buf_daemon, that
			 * cannot lock the vnode.
			 */
			norunbuf = ~(TDP_BUFNEED | TDP_NORUNNINGBUF) |
			    (td->td_pflags & TDP_NORUNNINGBUF);

			/*
			 * Play bufdaemon.  The getnewbuf() function
			 * may be called while the thread owns lock
			 * for another dirty buffer for the same
			 * vnode, which makes it impossible to use
			 * VOP_FSYNC() there, due to the buffer lock
			 * recursion.
			 */
			td->td_pflags |= TDP_BUFNEED | TDP_NORUNNINGBUF;
			fl = FUNC3(vp, bd, flushbufqtarget);
			td->td_pflags &= norunbuf;
			FUNC0(bd);
			if (fl != 0)
				continue;
			if (bd->bd_wanted == 0)
				break;
		}
		error = FUNC4(&bd->bd_wanted, FUNC1(bd),
		    (PRIBIO + 4) | slpflag, "newbuf", slptimeo);
		if (error != 0)
			break;
	}
	FUNC2(bd);
}