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
struct vop_strategy_args {TYPE_1__* a_bp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
typedef  int /*<<< orphan*/  daddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  b_lblkno; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UFS_NXADDR ; 
 scalar_t__ VFIFO ; 
 int FUNC1 (int /*<<< orphan*/ *,struct vop_strategy_args*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ufs_fifoops ; 
 int /*<<< orphan*/  ufs_vnodeops ; 

__attribute__((used)) static int
FUNC4(struct vop_strategy_args *ap)
/*
struct vop_strategy_args {
	struct vnodeop_desc *a_desc;
	struct vnode *a_vp;
	struct buf *a_bp;
};
*/
{
	struct vnode *vp;
	daddr_t lbn;

	vp = ap->a_vp;
	lbn = ap->a_bp->b_lblkno;
	if (FUNC0(FUNC2(vp)) && lbn < 0 && lbn >= -UFS_NXADDR)
		return (FUNC1(&ufs_vnodeops, ap));
	if (vp->v_type == VFIFO)
		return (FUNC1(&ufs_fifoops, ap));
	FUNC3("spec nodes went here");
}