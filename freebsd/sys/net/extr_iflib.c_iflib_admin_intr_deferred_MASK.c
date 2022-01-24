#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct grouptask {int /*<<< orphan*/ * gt_taskqueue; } ;
typedef  TYPE_1__* if_ctx_t ;
struct TYPE_3__ {struct grouptask ifc_admin_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct grouptask*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2(if_ctx_t ctx)
{
#ifdef INVARIANTS
	struct grouptask *gtask;

	gtask = &ctx->ifc_admin_task;
	MPASS(gtask != NULL && gtask->gt_taskqueue != NULL);
#endif

	FUNC0(&ctx->ifc_admin_task);
}