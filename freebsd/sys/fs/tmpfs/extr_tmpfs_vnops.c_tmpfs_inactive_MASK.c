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
struct vop_inactive_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct tmpfs_node {scalar_t__ tn_links; } ;

/* Variables and functions */
 struct tmpfs_node* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 

__attribute__((used)) static int
FUNC3(struct vop_inactive_args *v)
{
	struct vnode *vp;
	struct tmpfs_node *node;

	vp = v->a_vp;
	node = FUNC0(vp);
	if (node->tn_links == 0)
		FUNC2(vp);
	else
		FUNC1(vp);
	return (0);
}