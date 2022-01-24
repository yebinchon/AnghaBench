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
struct vmbus_xact_ctx {int xc_flags; int /*<<< orphan*/ * xc_orphan; int /*<<< orphan*/  xc_active; int /*<<< orphan*/  xc_free; int /*<<< orphan*/  xc_lock; } ;

/* Variables and functions */
 int VMBUS_XACT_CTXF_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct vmbus_xact_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool
FUNC5(struct vmbus_xact_ctx *ctx)
{
	FUNC0(&ctx->xc_lock);
	if (ctx->xc_flags & VMBUS_XACT_CTXF_DESTROY) {
		FUNC1(&ctx->xc_lock);
		return (false);
	}
	ctx->xc_flags |= VMBUS_XACT_CTXF_DESTROY;
	FUNC1(&ctx->xc_lock);

	FUNC4(&ctx->xc_free);
	FUNC4(&ctx->xc_active);

	ctx->xc_orphan = FUNC3(ctx, 0);
	if (ctx->xc_orphan == NULL)
		FUNC2("can't get xact");
	return (true);
}