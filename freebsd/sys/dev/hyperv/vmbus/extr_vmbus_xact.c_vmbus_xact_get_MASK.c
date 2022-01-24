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
struct vmbus_xact_ctx {size_t xc_req_size; } ;
struct vmbus_xact {int /*<<< orphan*/  x_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMBUS_XACT_CTXF_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 struct vmbus_xact* FUNC2 (struct vmbus_xact_ctx*,int /*<<< orphan*/ ) ; 

struct vmbus_xact *
FUNC3(struct vmbus_xact_ctx *ctx, size_t req_len)
{
	struct vmbus_xact *xact;

	if (req_len > ctx->xc_req_size)
		FUNC1("invalid request size %zu", req_len);

	xact = FUNC2(ctx, VMBUS_XACT_CTXF_DESTROY);
	if (xact == NULL)
		return (NULL);

	FUNC0(xact->x_req, 0, req_len);
	return (xact);
}