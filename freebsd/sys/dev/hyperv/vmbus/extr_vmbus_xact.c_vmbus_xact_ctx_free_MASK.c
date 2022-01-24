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
struct vmbus_xact_ctx {int xc_flags; int /*<<< orphan*/  xc_lock; int /*<<< orphan*/ * xc_orphan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int VMBUS_XACT_CTXF_DESTROY ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_xact_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct vmbus_xact_ctx *ctx)
{
	FUNC0(ctx->xc_flags & VMBUS_XACT_CTXF_DESTROY,
	    ("xact ctx was not orphaned"));
	FUNC0(ctx->xc_orphan != NULL, ("no orphaned xact"));

	FUNC3(ctx->xc_orphan);
	FUNC2(&ctx->xc_lock);
	FUNC1(ctx, M_DEVBUF);
}