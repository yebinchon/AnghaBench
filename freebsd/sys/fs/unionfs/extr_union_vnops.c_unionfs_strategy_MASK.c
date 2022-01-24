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
struct vop_strategy_args {TYPE_1__* a_bp; int /*<<< orphan*/  a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;
struct TYPE_2__ {scalar_t__ b_iocmd; } ;

/* Variables and functions */
 scalar_t__ BIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vnode* NULLVP ; 
 int FUNC1 (struct vnode*,TYPE_1__*) ; 
 struct unionfs_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct vop_strategy_args *ap)
{
	struct unionfs_node *unp;
	struct vnode   *vp;

	FUNC0(ap->a_vp);

	unp = FUNC2(ap->a_vp);
	vp = (unp->un_uppervp != NULLVP ? unp->un_uppervp : unp->un_lowervp);

#ifdef DIAGNOSTIC
	if (vp == NULLVP)
		panic("unionfs_strategy: nullvp");

	if (ap->a_bp->b_iocmd == BIO_WRITE && vp == unp->un_lowervp)
		panic("unionfs_strategy: writing to lowervp");
#endif

	return (FUNC1(vp, ap->a_bp));
}