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
struct vnode {scalar_t__ v_type; TYPE_1__* v_vnlock; } ;
struct unionfs_node_hashhead {int dummy; } ;
struct unionfs_node {int /*<<< orphan*/ * un_path; struct vnode* un_uppervp; struct vnode* un_dvp; struct vnode* un_lowervp; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {unsigned int lk_recurse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct unionfs_node_hashhead*,struct unionfs_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct unionfs_node*,int /*<<< orphan*/ ) ; 
 int LK_CANRECURSE ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 struct vnode* NULLVP ; 
 struct vnode* FUNC3 (struct unionfs_node*) ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  un_hash ; 
 struct unionfs_node_hashhead* FUNC6 (struct vnode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int) ; 

__attribute__((used)) static void
FUNC8(struct unionfs_node *unp, struct vnode *uvp,
		    struct thread *td)
{
	unsigned	count, lockrec;
	struct vnode   *vp;
	struct vnode   *lvp;
	struct vnode   *dvp;

	vp = FUNC3(unp);
	lvp = unp->un_lowervp;
	FUNC0(lvp, "unionfs_node_update");
	dvp = unp->un_dvp;

	/*
	 * lock update
	 */
	FUNC4(vp);
	unp->un_uppervp = uvp;
	vp->v_vnlock = uvp->v_vnlock;
	FUNC5(vp);
	lockrec = lvp->v_vnlock->lk_recurse;
	for (count = 0; count < lockrec; count++)
		FUNC7(uvp, LK_EXCLUSIVE | LK_CANRECURSE | LK_RETRY);

	/*
	 * cache update
	 */
	if (unp->un_path != NULL && dvp != NULLVP && vp->v_type == VDIR) {
		static struct unionfs_node_hashhead *hd;

		FUNC4(dvp);
		hd = FUNC6(dvp, unp->un_path);
		FUNC2(unp, un_hash);
		FUNC1(hd, unp, un_hash);
		FUNC5(dvp);
	}
}