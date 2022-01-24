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
struct vop_print_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  null_lowervp; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct vnode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vop_print_args *ap)
{
	struct vnode *vp = ap->a_vp;

	FUNC1("\tvp=%p, lowervp=%p\n", vp, FUNC0(vp)->null_lowervp);
	return (0);
}