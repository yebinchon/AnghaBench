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
typedef  int /*<<< orphan*/  uintmax_t ;
struct vop_print_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct tmpfs_node {int tn_mode; int tn_uid; int tn_gid; int /*<<< orphan*/  tn_status; scalar_t__ tn_size; scalar_t__ tn_links; int /*<<< orphan*/  tn_flags; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 scalar_t__ VFIFO ; 
 struct tmpfs_node* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

int
FUNC3(struct vop_print_args *v)
{
	struct vnode *vp = v->a_vp;

	struct tmpfs_node *node;

	node = FUNC0(vp);

	FUNC2("tag VT_TMPFS, tmpfs_node %p, flags 0x%lx, links %jd\n",
	    node, node->tn_flags, (uintmax_t)node->tn_links);
	FUNC2("\tmode 0%o, owner %d, group %d, size %jd, status 0x%x\n",
	    node->tn_mode, node->tn_uid, node->tn_gid,
	    (intmax_t)node->tn_size, node->tn_status);

	if (vp->v_type == VFIFO)
		FUNC1(vp);

	FUNC2("\n");

	return 0;
}