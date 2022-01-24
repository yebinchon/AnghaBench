#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mgb_ring_data {struct mgb_ring_desc* ring; } ;
struct mgb_softc {struct mgb_ring_data tx_ring_data; int /*<<< orphan*/  ctx; } ;
struct TYPE_5__ {void* high; void* low; } ;
struct mgb_ring_desc {void* sts; TYPE_1__ addr; void* ctl; } ;
typedef  int qidx_t ;
typedef  int /*<<< orphan*/  if_softc_ctx_t ;
typedef  TYPE_2__* if_pkt_info_t ;
struct TYPE_7__ {int ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_3__ bus_dma_segment_t ;
struct TYPE_6__ {scalar_t__ ipi_qsidx; int ipi_pidx; int ipi_nsegs; int ipi_new_pidx; TYPE_3__* ipi_segs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int MGB_DESC_CTL_BUFLEN_MASK ; 
 int MGB_DESC_CTL_FCS ; 
 int MGB_DESC_FRAME_LEN_MASK ; 
 int FUNC3 (int) ; 
 int MGB_TX_DESC_CTL_FS ; 
 int MGB_TX_DESC_CTL_LS ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(void *xsc , if_pkt_info_t ipi)
{
	struct mgb_softc *sc;
	if_softc_ctx_t scctx;
	struct mgb_ring_data *rdata;
	struct mgb_ring_desc *txd;
	bus_dma_segment_t *segs;
	qidx_t pidx, nsegs;
	int i;

	FUNC2(ipi->ipi_qsidx == 0,
	    ("tried to refill TX Channel %d.\n", ipi->ipi_qsidx));
	sc = xsc;
	scctx = FUNC5(sc->ctx);
	rdata = &sc->tx_ring_data;

	pidx = ipi->ipi_pidx;
	segs = ipi->ipi_segs;
	nsegs = ipi->ipi_nsegs;

	/* For each seg, create a descriptor */
	for (i = 0; i < nsegs; ++i) {
		FUNC2(nsegs == 1, ("Multisegment packet !!!!!\n"));
		txd = &rdata->ring[pidx];
		txd->ctl = FUNC4(
		    (segs[i].ds_len & MGB_DESC_CTL_BUFLEN_MASK ) |
		    /*
		     * XXX: This will be wrong in the multipacket case
		     * I suspect FS should be for the first packet and
		     * LS should be for the last packet
		     */
		    MGB_TX_DESC_CTL_FS | MGB_TX_DESC_CTL_LS |
		    MGB_DESC_CTL_FCS);
		txd->addr.low = FUNC4(FUNC1(
		    segs[i].ds_addr));
		txd->addr.high = FUNC4(FUNC0(
		    segs[i].ds_addr));
		txd->sts = FUNC4(
		    (segs[i].ds_len << 16) & MGB_DESC_FRAME_LEN_MASK);
		pidx = FUNC3(pidx);
	}
	ipi->ipi_new_pidx = pidx;
	return (0);
}