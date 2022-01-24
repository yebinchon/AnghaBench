#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vop_close_args {TYPE_1__* a_vp; } ;
struct tmpfs_node {int dummy; } ;
struct TYPE_5__ {int (* vop_close ) (struct vop_close_args*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  TMPFS_NODE_ACCESSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tmpfs_node* FUNC1 (TYPE_1__*) ; 
 TYPE_2__ fifo_specops ; 
 int FUNC2 (struct vop_close_args*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tmpfs_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(struct vop_close_args *v)
{
	struct tmpfs_node *node;

	node = FUNC1(v->a_vp);
	FUNC3(FUNC0(v->a_vp->v_mount), node,
	    TMPFS_NODE_ACCESSED);
	FUNC4(v->a_vp);
	return (fifo_specops.vop_close(v));
}