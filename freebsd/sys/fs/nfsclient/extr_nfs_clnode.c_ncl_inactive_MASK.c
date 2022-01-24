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
struct vop_inactive_args {int /*<<< orphan*/  a_td; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/ * v_object; } ;
struct nfsnode {int n_flag; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  MNT_WAIT ; 
 int NDSCOMMIT ; 
 int /*<<< orphan*/  FUNC0 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 scalar_t__ FUNC2 (struct vnode*) ; 
 int NMODIFIED ; 
 int /*<<< orphan*/  OBJPC_SYNC ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ VREG ; 
 struct nfsnode* FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10(struct vop_inactive_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct nfsnode *np;
	boolean_t retv;

	if (FUNC2(vp) && vp->v_type == VREG) {
		/*
		 * Since mmap()'d files do I/O after VOP_CLOSE(), the NFSv4
		 * Close operations are delayed until now. Any dirty
		 * buffers/pages must be flushed before the close, so that the
		 * stateid is available for the writes.
		 */
		if (vp->v_object != NULL) {
			FUNC3(vp->v_object);
			retv = FUNC9(vp->v_object, 0, 0,
			    OBJPC_SYNC);
			FUNC4(vp->v_object);
		} else
			retv = TRUE;
		if (retv == TRUE) {
			(void)FUNC6(vp, MNT_WAIT, ap->a_td, 1, 0);
			(void)FUNC8(vp, 1, ap->a_td);
		}
	}

	np = FUNC5(vp);
	FUNC0(np);
	FUNC7(vp, ap->a_td);

	/*
	 * NMODIFIED means that there might be dirty/stale buffers
	 * associated with the NFS vnode.
	 * NDSCOMMIT means that the file is on a pNFS server and commits
	 * should be done to the DS.
	 * None of the other flags are meaningful after the vnode is unused.
	 */
	np->n_flag &= (NMODIFIED | NDSCOMMIT);
	FUNC1(np);
	return (0);
}