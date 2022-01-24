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
struct vmbus_xact_ctx {int xc_priv_size; int xc_resp_size; int /*<<< orphan*/  xc_req_size; } ;
struct vmbus_xact {void* x_resp0; void* x_priv; int /*<<< orphan*/ * x_req; int /*<<< orphan*/  x_req_dma; struct vmbus_xact_ctx* x_ctx; } ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_WAITOK ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vmbus_xact*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct vmbus_xact *
FUNC3(struct vmbus_xact_ctx *ctx, bus_dma_tag_t parent_dtag)
{
	struct vmbus_xact *xact;

	xact = FUNC2(sizeof(*xact), M_DEVBUF, M_WAITOK | M_ZERO);
	xact->x_ctx = ctx;

	/* XXX assume that page aligned is enough */
	xact->x_req = FUNC1(parent_dtag, PAGE_SIZE, 0,
	    ctx->xc_req_size, &xact->x_req_dma, BUS_DMA_WAITOK);
	if (xact->x_req == NULL) {
		FUNC0(xact, M_DEVBUF);
		return (NULL);
	}
	if (ctx->xc_priv_size != 0)
		xact->x_priv = FUNC2(ctx->xc_priv_size, M_DEVBUF, M_WAITOK);
	xact->x_resp0 = FUNC2(ctx->xc_resp_size, M_DEVBUF, M_WAITOK);

	return (xact);
}