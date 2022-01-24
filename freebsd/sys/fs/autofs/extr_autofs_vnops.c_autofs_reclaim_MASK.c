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
struct vnode {struct autofs_node* v_data; } ;
struct autofs_node {int /*<<< orphan*/  an_vnode_lock; int /*<<< orphan*/ * an_vnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct vop_reclaim_args *ap)
{
	struct vnode *vp;
	struct autofs_node *anp;

	vp = ap->a_vp;
	anp = vp->v_data;

	/*
	 * We do not free autofs_node here; instead we are
	 * destroying them in autofs_node_delete().
	 */
	FUNC0(&anp->an_vnode_lock);
	anp->an_vnode = NULL;
	vp->v_data = NULL;
	FUNC1(&anp->an_vnode_lock);

	return (0);
}