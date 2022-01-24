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
struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/ * v_data; int /*<<< orphan*/ * v_object; int /*<<< orphan*/  v_mount; } ;
struct TYPE_2__ {int /*<<< orphan*/  tn_aobj; } ;
struct tmpfs_node {scalar_t__ tn_links; int tn_vpstate; TYPE_1__ tn_reg; } ;
struct tmpfs_mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct tmpfs_node*) ; 
 int TMPFS_VNODE_ALLOCATING ; 
 int TMPFS_VNODE_DOOMED ; 
 struct tmpfs_mount* FUNC3 (int /*<<< orphan*/ ) ; 
 struct tmpfs_node* FUNC4 (struct vnode*) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tmpfs_mount*,struct tmpfs_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 scalar_t__ FUNC9 (struct vnode*) ; 

int
FUNC10(struct vop_reclaim_args *v)
{
	struct vnode *vp = v->a_vp;

	struct tmpfs_mount *tmp;
	struct tmpfs_node *node;

	node = FUNC4(vp);
	tmp = FUNC3(vp->v_mount);

	if (vp->v_type == VREG)
		FUNC6(vp, node->tn_reg.tn_aobj);
	vp->v_object = NULL;
	if (FUNC9(vp))
		FUNC5(vp);

	FUNC1(node);
	FUNC8(vp);

	/* If the node referenced by this vnode was deleted by the user,
	 * we must free its associated data structures (now that the vnode
	 * is being reclaimed). */
	if (node->tn_links == 0 &&
	    (node->tn_vpstate & TMPFS_VNODE_ALLOCATING) == 0) {
		node->tn_vpstate = TMPFS_VNODE_DOOMED;
		FUNC2(node);
		FUNC7(tmp, node);
	} else
		FUNC2(node);

	FUNC0(vp->v_data == NULL);
	return 0;
}