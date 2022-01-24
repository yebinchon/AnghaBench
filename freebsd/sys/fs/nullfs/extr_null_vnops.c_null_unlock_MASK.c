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
struct vop_unlock_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct null_node {int dummy; } ;

/* Variables and functions */
 struct vnode* FUNC0 (struct vnode*) ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 struct null_node* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int FUNC5 (struct vop_unlock_args*) ; 

__attribute__((used)) static int
FUNC6(struct vop_unlock_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct null_node *nn;
	struct vnode *lvp;
	int error;

	nn = FUNC2(vp);
	if (nn != NULL && (lvp = FUNC0(vp)) != NULL) {
		FUNC4(lvp);
		error = FUNC1(lvp, 0);
		FUNC3(lvp);
	} else {
		error = FUNC5(ap);
	}

	return (error);
}