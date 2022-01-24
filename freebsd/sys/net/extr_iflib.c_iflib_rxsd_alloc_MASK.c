#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
typedef  TYPE_2__* iflib_rxq_t ;
typedef  TYPE_3__* iflib_fl_t ;
typedef  TYPE_4__* if_softc_ctx_t ;
typedef  TYPE_5__* if_shared_ctx_t ;
typedef  TYPE_6__* if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_12__ {int* isc_nrxd; } ;
struct TYPE_14__ {int /*<<< orphan*/  ifc_dev; TYPE_4__ ifc_softc_ctx; TYPE_5__* ifc_sctx; } ;
struct TYPE_13__ {int /*<<< orphan*/  isc_rx_maxsegsize; int /*<<< orphan*/  isc_rx_nsegments; int /*<<< orphan*/  isc_rx_maxsize; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ifsd_map; int /*<<< orphan*/ * ifsd_ba; int /*<<< orphan*/ * ifsd_cl; struct mbuf** ifsd_m; } ;
struct TYPE_11__ {int ifl_size; TYPE_1__ ifl_sds; int /*<<< orphan*/  ifl_buf_tag; } ;
struct TYPE_10__ {size_t ifr_fl_offset; int ifr_nfl; TYPE_3__* ifr_fl; TYPE_6__* ifr_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_IFLIB ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(iflib_rxq_t rxq)
{
	if_ctx_t ctx = rxq->ifr_ctx;
	if_shared_ctx_t sctx = ctx->ifc_sctx;
	if_softc_ctx_t scctx = &ctx->ifc_softc_ctx;
	device_t dev = ctx->ifc_dev;
	iflib_fl_t fl;
	int			err;

	FUNC0(scctx->isc_nrxd[0] > 0);
	FUNC0(scctx->isc_nrxd[rxq->ifr_fl_offset] > 0);

	fl = rxq->ifr_fl;
	for (int i = 0; i <  rxq->ifr_nfl; i++, fl++) {
		fl->ifl_size = scctx->isc_nrxd[rxq->ifr_fl_offset]; /* this isn't necessarily the same */
		/* Set up DMA tag for RX buffers. */
		err = FUNC1(FUNC3(dev), /* parent */
					 1, 0,			/* alignment, bounds */
					 BUS_SPACE_MAXADDR,	/* lowaddr */
					 BUS_SPACE_MAXADDR,	/* highaddr */
					 NULL, NULL,		/* filter, filterarg */
					 sctx->isc_rx_maxsize,	/* maxsize */
					 sctx->isc_rx_nsegments,	/* nsegments */
					 sctx->isc_rx_maxsegsize,	/* maxsegsize */
					 0,			/* flags */
					 NULL,			/* lockfunc */
					 NULL,			/* lockarg */
					 &fl->ifl_buf_tag);
		if (err) {
			FUNC4(dev,
			    "Unable to allocate RX DMA tag: %d\n", err);
			goto fail;
		}

		/* Allocate memory for the RX mbuf map. */
		if (!(fl->ifl_sds.ifsd_m =
		      (struct mbuf **) FUNC6(sizeof(struct mbuf *) *
					      scctx->isc_nrxd[rxq->ifr_fl_offset], M_IFLIB, M_NOWAIT | M_ZERO))) {
			FUNC4(dev,
			    "Unable to allocate RX mbuf map memory\n");
			err = ENOMEM;
			goto fail;
		}

		/* Allocate memory for the direct RX cluster pointer map. */
		if (!(fl->ifl_sds.ifsd_cl =
		      (caddr_t *) FUNC6(sizeof(caddr_t) *
					      scctx->isc_nrxd[rxq->ifr_fl_offset], M_IFLIB, M_NOWAIT | M_ZERO))) {
			FUNC4(dev,
			    "Unable to allocate RX cluster map memory\n");
			err = ENOMEM;
			goto fail;
		}

		/* Allocate memory for the RX cluster bus address map. */
		if (!(fl->ifl_sds.ifsd_ba =
		      (bus_addr_t *) FUNC6(sizeof(bus_addr_t) *
					      scctx->isc_nrxd[rxq->ifr_fl_offset], M_IFLIB, M_NOWAIT | M_ZERO))) {
			FUNC4(dev,
			    "Unable to allocate RX bus address map memory\n");
			err = ENOMEM;
			goto fail;
		}

		/*
		 * Create the DMA maps for RX buffers.
		 */
		if (!(fl->ifl_sds.ifsd_map =
		      (bus_dmamap_t *) FUNC6(sizeof(bus_dmamap_t) * scctx->isc_nrxd[rxq->ifr_fl_offset], M_IFLIB, M_NOWAIT | M_ZERO))) {
			FUNC4(dev,
			    "Unable to allocate RX buffer DMA map memory\n");
			err = ENOMEM;
			goto fail;
		}
		for (int i = 0; i < scctx->isc_nrxd[rxq->ifr_fl_offset]; i++) {
			err = FUNC2(fl->ifl_buf_tag, 0,
			    &fl->ifl_sds.ifsd_map[i]);
			if (err != 0) {
				FUNC4(dev, "Unable to create RX buffer DMA map\n");
				goto fail;
			}
		}
	}
	return (0);

fail:
	FUNC5(ctx);
	return (err);
}