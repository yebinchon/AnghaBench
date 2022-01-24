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
struct vop_create_args {TYPE_2__* a_cnp; int /*<<< orphan*/ * a_vpp; int /*<<< orphan*/  a_dvp; TYPE_1__* a_vap; } ;
struct TYPE_5__ {int cn_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  va_mode; int /*<<< orphan*/  va_type; } ;

/* Variables and functions */
 int MAKEENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC3(struct vop_create_args *ap)
{
	int error;

	error =
	    FUNC2(FUNC0(ap->a_vap->va_type, ap->a_vap->va_mode),
	    ap->a_dvp, ap->a_vpp, ap->a_cnp);
	if (error != 0)
		return (error);
	if ((ap->a_cnp->cn_flags & MAKEENTRY) != 0)
		FUNC1(ap->a_dvp, *ap->a_vpp, ap->a_cnp);
	return (0);
}