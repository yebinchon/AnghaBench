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
typedef  int /*<<< orphan*/  uint8_t ;
struct vmbus_xact_ctx {int xc_flags; struct vmbus_xact* xc_active; int /*<<< orphan*/  xc_lock; } ;
struct vmbus_xact {void* x_resp; size_t x_resp_len; struct vmbus_xact_ctx* x_ctx; } ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int VMBUS_XACT_CTXF_DESTROY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_xact*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static const void *
FUNC4(struct vmbus_xact *xact, size_t *resp_len)
{
	struct vmbus_xact_ctx *ctx = xact->x_ctx;
	const void *resp;

	FUNC1(&ctx->xc_lock, MA_OWNED);
	FUNC0(ctx->xc_active == xact, ("xact trashed"));

	if ((ctx->xc_flags & VMBUS_XACT_CTXF_DESTROY) && xact->x_resp == NULL) {
		uint8_t b = 0;

		/*
		 * Orphaned and no response was received yet; fake up
		 * an one byte response.
		 */
		FUNC2("vmbus: xact ctx was orphaned w/ pending xact\n");
		FUNC3(ctx->xc_active, &b, sizeof(b));
	}
	FUNC0(xact->x_resp != NULL, ("no response"));

	ctx->xc_active = NULL;

	resp = xact->x_resp;
	*resp_len = xact->x_resp_len;

	return (resp);
}