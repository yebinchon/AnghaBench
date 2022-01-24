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
struct vmbus_xact_ctx {int xc_flags; int /*<<< orphan*/  xc_lock; struct vmbus_xact* xc_active; } ;
struct vmbus_xact {int /*<<< orphan*/ * x_resp; struct vmbus_xact_ctx* x_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int VMBUS_XACT_CTXF_DESTROY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct vmbus_xact*,size_t*) ; 

const void *
FUNC4(struct vmbus_xact *xact, size_t *resp_len)
{
	struct vmbus_xact_ctx *ctx = xact->x_ctx;
	const void *resp;

	FUNC1(&ctx->xc_lock);

	FUNC0(ctx->xc_active == xact, ("xact mismatch"));
	if (xact->x_resp == NULL &&
	    (ctx->xc_flags & VMBUS_XACT_CTXF_DESTROY) == 0) {
		FUNC2(&ctx->xc_lock);
		*resp_len = 0;
		return (NULL);
	}
	resp = FUNC3(xact, resp_len);

	FUNC2(&ctx->xc_lock);

	return (resp);
}