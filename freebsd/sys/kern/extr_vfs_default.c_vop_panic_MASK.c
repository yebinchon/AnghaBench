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
struct vop_generic_args {TYPE_1__* a_desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  vdesc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct vop_generic_args *ap)
{

	FUNC0("filesystem goof: vop_panic[%s]", ap->a_desc->vdesc_name);
}