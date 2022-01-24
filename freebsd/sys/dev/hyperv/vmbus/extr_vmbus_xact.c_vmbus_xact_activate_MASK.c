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
struct vmbus_xact_ctx {int /*<<< orphan*/  xc_lock; struct vmbus_xact* xc_active; } ;
struct vmbus_xact {int /*<<< orphan*/ * x_resp; struct vmbus_xact_ctx* x_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct vmbus_xact *xact)
{
	struct vmbus_xact_ctx *ctx = xact->x_ctx;

	FUNC0(xact->x_resp == NULL, ("xact has pending response"));

	FUNC1(&ctx->xc_lock);
	FUNC0(ctx->xc_active == NULL, ("pending active xact"));
	ctx->xc_active = xact;
	FUNC2(&ctx->xc_lock);
}