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
struct vop_readlink_args {struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_mount; } ;
struct uio {scalar_t__ uio_offset; int /*<<< orphan*/  uio_resid; } ;
struct tmpfs_node {int /*<<< orphan*/  tn_size; int /*<<< orphan*/  tn_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TMPFS_NODE_ACCESSED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VLNK ; 
 struct tmpfs_node* FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tmpfs_node*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio*) ; 

__attribute__((used)) static int
FUNC6(struct vop_readlink_args *v)
{
	struct vnode *vp = v->a_vp;
	struct uio *uio = v->a_uio;

	int error;
	struct tmpfs_node *node;

	FUNC1(uio->uio_offset == 0);
	FUNC1(vp->v_type == VLNK);

	node = FUNC3(vp);

	error = FUNC5(node->tn_link, FUNC0(node->tn_size, uio->uio_resid),
	    uio);
	FUNC4(FUNC2(vp->v_mount), node, TMPFS_NODE_ACCESSED);

	return (error);
}