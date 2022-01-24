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
struct vop_print_args {TYPE_1__* a_vp; } ;
struct TYPE_2__ {int /*<<< orphan*/  v_rdev; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2(struct vop_print_args *ap)
{

	FUNC1("\tdev %s\n", FUNC0(ap->a_vp->v_rdev));
	return (0);
}