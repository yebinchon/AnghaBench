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
struct vnode {int /*<<< orphan*/ * v_data; } ;
struct udf_node {int /*<<< orphan*/ * fentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_UDFFENTRY ; 
 struct udf_node* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udf_zone_node ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct udf_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

__attribute__((used)) static int
FUNC4(struct vop_reclaim_args *a)
{
	struct vnode *vp;
	struct udf_node *unode;

	vp = a->a_vp;
	unode = FUNC0(vp);

	if (unode != NULL) {
		FUNC3(vp);

		if (unode->fentry != NULL)
			FUNC1(unode->fentry, M_UDFFENTRY);
		FUNC2(udf_zone_node, unode);
		vp->v_data = NULL;
	}

	return (0);
}