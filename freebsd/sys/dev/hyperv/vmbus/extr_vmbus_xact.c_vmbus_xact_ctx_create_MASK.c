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
struct vmbus_xact_ctx {size_t xc_req_size; size_t xc_resp_size; size_t xc_priv_size; int /*<<< orphan*/  xc_lock; int /*<<< orphan*/ * xc_free; } ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_xact_ctx*,int /*<<< orphan*/ ) ; 
 struct vmbus_xact_ctx* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct vmbus_xact_ctx*,int /*<<< orphan*/ ) ; 

struct vmbus_xact_ctx *
FUNC5(bus_dma_tag_t dtag, size_t req_size, size_t resp_size,
    size_t priv_size)
{
	struct vmbus_xact_ctx *ctx;

	FUNC0(req_size > 0, ("request size is 0"));
	FUNC0(resp_size > 0, ("response size is 0"));

	ctx = FUNC2(sizeof(*ctx), M_DEVBUF, M_WAITOK | M_ZERO);
	ctx->xc_req_size = req_size;
	ctx->xc_resp_size = resp_size;
	ctx->xc_priv_size = priv_size;

	ctx->xc_free = FUNC4(ctx, dtag);
	if (ctx->xc_free == NULL) {
		FUNC1(ctx, M_DEVBUF);
		return (NULL);
	}

	FUNC3(&ctx->xc_lock, "vmbus xact", NULL, MTX_DEF);

	return (ctx);
}