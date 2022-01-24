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
typedef  int /*<<< orphan*/  u_long ;
struct vop_print_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct udf_node {TYPE_1__* udfmp; scalar_t__ hash_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  im_dev; } ;

/* Variables and functions */
 scalar_t__ VFIFO ; 
 struct udf_node* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int
FUNC4(struct vop_print_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct udf_node *node = FUNC0(vp);

	FUNC3("    ino %lu, on dev %s", (u_long)node->hash_id,
	    FUNC1(node->udfmp->im_dev));
	if (vp->v_type == VFIFO)
		FUNC2(vp);
	FUNC3("\n");
	return (0);
}