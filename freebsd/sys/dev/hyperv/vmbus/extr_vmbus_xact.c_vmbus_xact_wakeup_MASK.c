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
struct vmbus_xact_ctx {int xc_flags; int /*<<< orphan*/ * xc_active; int /*<<< orphan*/  xc_lock; } ;
struct vmbus_xact {struct vmbus_xact_ctx* x_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int VMBUS_XACT_CTXF_DESTROY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmbus_xact*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 

void
FUNC6(struct vmbus_xact *xact, const void *data, size_t dlen)
{
	struct vmbus_xact_ctx *ctx = xact->x_ctx;
	int do_wakeup = 0;

	FUNC1(&ctx->xc_lock);
	/*
	 * NOTE:
	 * xc_active could be NULL, if the ctx has been orphaned.
	 */
	if (ctx->xc_active != NULL) {
		FUNC4(xact, data, dlen);
		do_wakeup = 1;
	} else {
		FUNC0(ctx->xc_flags & VMBUS_XACT_CTXF_DESTROY,
		    ("no active xact pending"));
		FUNC3("vmbus: drop xact response\n");
	}
	FUNC2(&ctx->xc_lock);

	if (do_wakeup)
		FUNC5(&ctx->xc_active);
}