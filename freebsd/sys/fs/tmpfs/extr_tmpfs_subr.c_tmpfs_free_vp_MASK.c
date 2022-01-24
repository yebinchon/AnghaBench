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
struct vnode {int /*<<< orphan*/ * v_data; } ;
struct tmpfs_node {int tn_vpstate; int /*<<< orphan*/ * tn_vnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tmpfs_node*) ; 
 int TMPFS_VNODE_WRECLAIM ; 
 struct tmpfs_node* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 

void
FUNC3(struct vnode *vp)
{
	struct tmpfs_node *node;

	node = FUNC1(vp);

	FUNC0(node);
	node->tn_vnode = NULL;
	if ((node->tn_vpstate & TMPFS_VNODE_WRECLAIM) != 0)
		FUNC2(&node->tn_vnode);
	node->tn_vpstate &= ~TMPFS_VNODE_WRECLAIM;
	vp->v_data = NULL;
}