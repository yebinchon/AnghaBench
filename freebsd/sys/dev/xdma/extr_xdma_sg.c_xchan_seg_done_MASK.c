#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdma_controller_t ;
struct TYPE_10__ {int caps; int /*<<< orphan*/  queue_out; int /*<<< orphan*/  processing; int /*<<< orphan*/  dma_tag_bufs; int /*<<< orphan*/ * xdma; } ;
typedef  TYPE_2__ xdma_channel_t ;
struct xdma_transfer_status {int /*<<< orphan*/  transferred; int /*<<< orphan*/  error; } ;
struct TYPE_9__ {int /*<<< orphan*/  transferred; int /*<<< orphan*/  error; } ;
struct xchan_buf {scalar_t__ nsegs_left; scalar_t__ vaddr; int /*<<< orphan*/  map; } ;
struct xdma_request {scalar_t__ direction; scalar_t__ req_type; TYPE_1__ status; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; struct xchan_buf buf; int /*<<< orphan*/  m; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct xdma_request* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct xdma_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct xdma_request*,int /*<<< orphan*/ ) ; 
 int XCHAN_CAP_BOUNCE ; 
 int XCHAN_CAP_BUSDMA ; 
 int XCHAN_CAP_IOMMU ; 
 scalar_t__ XDMA_DEV_TO_MEM ; 
 scalar_t__ XDMA_MEM_TO_DEV ; 
 scalar_t__ XR_TYPE_MBUF ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xr_next ; 

void
FUNC13(xdma_channel_t *xchan,
    struct xdma_transfer_status *st)
{
	struct xdma_request *xr;
	xdma_controller_t *xdma;
	struct xchan_buf *b;
	bus_addr_t addr;

	xdma = xchan->xdma;

	xr = FUNC4(&xchan->processing);
	if (xr == NULL)
		FUNC11("request not found\n");

	b = &xr->buf;

	FUNC7(&b->nsegs_left, 1);

	if (b->nsegs_left == 0) {
		if (xchan->caps & XCHAN_CAP_BUSDMA) {
			if (xr->direction == XDMA_MEM_TO_DEV)
				FUNC8(xchan->dma_tag_bufs, b->map, 
				    BUS_DMASYNC_POSTWRITE);
			else
				FUNC8(xchan->dma_tag_bufs, b->map, 
				    BUS_DMASYNC_POSTREAD);
			FUNC9(xchan->dma_tag_bufs, b->map);
		} else if (xchan->caps & XCHAN_CAP_BOUNCE) {
			if (xr->req_type == XR_TYPE_MBUF &&
			    xr->direction == XDMA_DEV_TO_MEM)
				FUNC10(xr->m, 0, st->transferred,
				    (void *)xr->buf.vaddr);
		} else if (xchan->caps & XCHAN_CAP_IOMMU) {
			if (xr->direction == XDMA_MEM_TO_DEV)
				addr = xr->src_addr;
			else
				addr = xr->dst_addr;
			FUNC12(xchan, addr);
		}
		xr->status.error = st->error;
		xr->status.transferred = st->transferred;

		FUNC2(xchan);
		FUNC6(&xchan->processing, xr, xr_next);
		FUNC3(xchan);

		FUNC0(xchan);
		FUNC5(&xchan->queue_out, xr, xr_next);
		FUNC1(xchan);
	}
}