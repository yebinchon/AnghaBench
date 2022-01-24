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
struct vnode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ar_arg_vnode2; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaudit_record*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kaudit_record*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARG_VNODE2 ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ *) ; 
 struct kaudit_record* FUNC3 () ; 

void
FUNC4(struct vnode *vp)
{
	struct kaudit_record *ar;
	int error;

	ar = FUNC3();
	if (ar == NULL)
		return;

	FUNC0(ar, ARG_VNODE2);
	error = FUNC2(vp, &ar->k_ar.ar_arg_vnode2);
	if (error == 0)
		FUNC1(ar, ARG_VNODE2);
}