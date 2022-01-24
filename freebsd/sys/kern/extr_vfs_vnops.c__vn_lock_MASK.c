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
struct vnode {scalar_t__ v_holdcnt; int v_iflag; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LK_INTERLOCK ; 
 int LK_RETRY ; 
 int LK_TYPE_MASK ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC1 (int,struct vnode*,char*) ; 
 int FUNC2 (struct vnode*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct vnode *vp, int flags, char *file, int line)
{
	int error;

	FUNC1((flags & LK_TYPE_MASK) != 0, vp,
	    ("vn_lock: no locktype"));
	FUNC1(vp->v_holdcnt != 0, vp, ("vn_lock: zero hold count"));
retry:
	error = FUNC2(vp, flags, file, line);
	flags &= ~LK_INTERLOCK;	/* Interlock is always dropped. */
	FUNC0((flags & LK_RETRY) == 0 || error == 0,
	    ("vn_lock: error %d incompatible with flags %#x", error, flags));

	if ((flags & LK_RETRY) == 0) {
		if (error == 0 && (vp->v_iflag & VI_DOOMED) != 0) {
			FUNC3(vp, 0);
			error = ENOENT;
		}
	} else if (error != 0)
		goto retry;
	return (error);
}