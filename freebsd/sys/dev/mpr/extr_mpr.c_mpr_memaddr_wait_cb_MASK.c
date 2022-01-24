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
struct mpr_busdma_context {int error; int completed; scalar_t__ abandoned; scalar_t__* addr; int /*<<< orphan*/  buffer_dmamap; int /*<<< orphan*/  buffer_dmat; int /*<<< orphan*/  softc; } ;
struct TYPE_3__ {scalar_t__ ds_addr; } ;
typedef  TYPE_1__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_MPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mpr_busdma_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mpr_busdma_context*) ; 

void
FUNC5(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
	struct mpr_busdma_context *ctx;
	int need_unload, need_free;

	ctx = (struct mpr_busdma_context *)arg;
	need_unload = 0;
	need_free = 0;

	FUNC2(ctx->softc);
	ctx->error = error;
	ctx->completed = 1;
	if ((error == 0) && (ctx->abandoned == 0)) {
		*ctx->addr = segs[0].ds_addr;
	} else {
		if (nsegs != 0)
			need_unload = 1;
		if (ctx->abandoned != 0)
			need_free = 1;
	}
	if (need_free == 0)
		FUNC4(ctx);

	FUNC3(ctx->softc);

	if (need_unload != 0) {
		FUNC0(ctx->buffer_dmat,
				  ctx->buffer_dmamap);
		*ctx->addr = 0;
	}

	if (need_free != 0)
		FUNC1(ctx, M_MPR);
}