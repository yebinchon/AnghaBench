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
struct vop_unp_bind_args {int /*<<< orphan*/  a_unpcb; TYPE_1__* a_vp; } ;
struct TYPE_2__ {int /*<<< orphan*/  v_unpcb; } ;

/* Variables and functions */

int
FUNC0(struct vop_unp_bind_args *ap)
{

	ap->a_vp->v_unpcb = ap->a_unpcb;
	return (0);
}