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
typedef  int (* vn_get_ino_t ) (struct mount*,void*,int,struct vnode**) ;
struct vnode {int v_iflag; struct mount* v_mount; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  MBF_NOWAIT ; 
 int VI_DOOMED ; 
 int FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 

int
FUNC11(struct vnode *vp, vn_get_ino_t alloc, void *alloc_arg,
    int lkflags, struct vnode **rvp)
{
	struct mount *mp;
	int ltype, error;

	FUNC0(vp, "vn_vget_ino_get");
	mp = vp->v_mount;
	ltype = FUNC2(vp);
	FUNC1(ltype == LK_EXCLUSIVE || ltype == LK_SHARED,
	    ("vn_vget_ino: vp not locked"));
	error = FUNC4(mp, MBF_NOWAIT);
	if (error != 0) {
		FUNC5(mp);
		FUNC3(vp, 0);
		error = FUNC4(mp, 0);
		FUNC8(vp, ltype | LK_RETRY);
		FUNC6(mp);
		if (error != 0)
			return (ENOENT);
		if (vp->v_iflag & VI_DOOMED) {
			FUNC7(mp);
			return (ENOENT);
		}
	}
	FUNC3(vp, 0);
	error = alloc(mp, alloc_arg, lkflags, rvp);
	FUNC7(mp);
	if (error != 0 || *rvp != vp)
		FUNC8(vp, ltype | LK_RETRY);
	if (vp->v_iflag & VI_DOOMED) {
		if (error == 0) {
			if (*rvp == vp)
				FUNC10(vp);
			else
				FUNC9(*rvp);
		}
		error = ENOENT;
	}
	return (error);
}