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
struct vop_rename_args {int /*<<< orphan*/ * a_fvp; int /*<<< orphan*/ * a_fdvp; int /*<<< orphan*/ * a_tdvp; int /*<<< orphan*/ * a_tvp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct vop_rename_args *ap)
{

	if (ap->a_tvp != NULL)
		FUNC0(ap->a_tvp);
	if (ap->a_tdvp == ap->a_tvp)
		FUNC1(ap->a_tdvp);
	else
		FUNC0(ap->a_tdvp);
	FUNC1(ap->a_fdvp);
	FUNC1(ap->a_fvp);
}