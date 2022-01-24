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
struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/  v_writecount; int /*<<< orphan*/  v_lock; int /*<<< orphan*/ * v_vnlock; int /*<<< orphan*/ * v_object; int /*<<< orphan*/ * v_data; } ;
struct null_node {int null_flags; struct vnode* null_lowervp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  M_NULLFSNODE ; 
 int NULLV_NOUNLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct null_node* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct null_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct null_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 

__attribute__((used)) static int
FUNC10(struct vop_reclaim_args *ap)
{
	struct vnode *vp;
	struct null_node *xp;
	struct vnode *lowervp;

	vp = ap->a_vp;
	xp = FUNC4(vp);
	lowervp = xp->null_lowervp;

	FUNC0(lowervp != NULL && vp->v_vnlock != &vp->v_lock,
	    ("Reclaiming incomplete null vnode %p", vp));

	FUNC7(xp);
	/*
	 * Use the interlock to protect the clearing of v_data to
	 * prevent faults in null_lock().
	 */
	FUNC6(&vp->v_lock, LK_EXCLUSIVE, NULL);
	FUNC1(vp);
	vp->v_data = NULL;
	vp->v_object = NULL;
	vp->v_vnlock = &vp->v_lock;

	/*
	 * If we were opened for write, we leased the write reference
	 * to the lower vnode.  If this is a reclamation due to the
	 * forced unmount, undo the reference now.
	 */
	if (vp->v_writecount > 0)
		FUNC3(lowervp, -vp->v_writecount);
	else if (vp->v_writecount < 0)
		vp->v_writecount = 0;

	FUNC2(vp);

	if ((xp->null_flags & NULLV_NOUNLOCK) != 0)
		FUNC9(lowervp);
	else
		FUNC8(lowervp);
	FUNC5(xp, M_NULLFSNODE);

	return (0);
}