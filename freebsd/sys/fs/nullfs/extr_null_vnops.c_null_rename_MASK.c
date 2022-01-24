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
struct vop_rename_args {struct vnode* a_tvp; struct vnode* a_fdvp; struct vnode* a_fvp; struct vnode* a_tdvp; } ;
struct vop_generic_args {int dummy; } ;
struct vnode {scalar_t__ v_mount; } ;
struct null_node {int /*<<< orphan*/  null_flags; } ;

/* Variables and functions */
 int EXDEV ; 
 int /*<<< orphan*/  NULLV_DROP ; 
 struct null_node* FUNC0 (struct vnode*) ; 
 int FUNC1 (struct vop_generic_args*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

__attribute__((used)) static int
FUNC4(struct vop_rename_args *ap)
{
	struct vnode *tdvp = ap->a_tdvp;
	struct vnode *fvp = ap->a_fvp;
	struct vnode *fdvp = ap->a_fdvp;
	struct vnode *tvp = ap->a_tvp;
	struct null_node *tnn;

	/* Check for cross-device rename. */
	if ((fvp->v_mount != tdvp->v_mount) ||
	    (tvp && (fvp->v_mount != tvp->v_mount))) {
		if (tdvp == tvp)
			FUNC3(tdvp);
		else
			FUNC2(tdvp);
		if (tvp)
			FUNC2(tvp);
		FUNC3(fdvp);
		FUNC3(fvp);
		return (EXDEV);
	}

	if (tvp != NULL) {
		tnn = FUNC0(tvp);
		tnn->null_flags |= NULLV_DROP;
	}
	return (FUNC1((struct vop_generic_args *)ap));
}