#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_11__ ;

/* Type definitions */
typedef  TYPE_1__* iflib_txq_t ;
typedef  TYPE_2__* iflib_rxq_t ;
typedef  int /*<<< orphan*/  iflib_fl_t ;
typedef  int /*<<< orphan*/  if_t ;
typedef  TYPE_3__* if_softc_ctx_t ;
typedef  TYPE_4__* if_ctx_t ;
struct TYPE_22__ {int isc_tx_csum_flags; int isc_ntxqsets; int isc_nrxqsets; } ;
struct TYPE_23__ {TYPE_1__* ifc_txqs; int /*<<< orphan*/  ifc_ifp; int /*<<< orphan*/  ifc_dev; TYPE_2__* ifc_rxqs; TYPE_3__ ifc_softc_ctx; } ;
struct TYPE_21__ {int ifr_id; int ifr_nfl; int /*<<< orphan*/  ifr_fl; } ;
struct TYPE_19__ {int /*<<< orphan*/  c_cpu; } ;
struct TYPE_20__ {TYPE_11__ ift_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int CSUM_IP ; 
 int CSUM_IP6_SCTP ; 
 int CSUM_IP6_TCP ; 
 int CSUM_IP6_TSO ; 
 int CSUM_IP6_UDP ; 
 int CSUM_IP_TSO ; 
 int CSUM_SCTP ; 
 int CSUM_TCP ; 
 int CSUM_UDP ; 
 int IFCAP_NETMAP ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_TXCSUM_IPV6 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_11__*,int,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  iflib_timer ; 

__attribute__((used)) static void
FUNC18(if_ctx_t ctx)
{
	if_softc_ctx_t sctx = &ctx->ifc_softc_ctx;
	if_softc_ctx_t scctx = &ctx->ifc_softc_ctx;
	if_t ifp = ctx->ifc_ifp;
	iflib_fl_t fl;
	iflib_txq_t txq;
	iflib_rxq_t rxq;
	int i, j, tx_ip_csum_flags, tx_ip6_csum_flags;

	FUNC12(ifp, IFF_DRV_OACTIVE, IFF_DRV_RUNNING);
	FUNC3(ctx);

	tx_ip_csum_flags = scctx->isc_tx_csum_flags & (CSUM_IP | CSUM_TCP | CSUM_UDP | CSUM_SCTP);
	tx_ip6_csum_flags = scctx->isc_tx_csum_flags & (CSUM_IP6_TCP | CSUM_IP6_UDP | CSUM_IP6_SCTP);
	/* Set hardware offload abilities */
	FUNC9(ifp);
	if (FUNC10(ifp) & IFCAP_TXCSUM)
		FUNC13(ifp, tx_ip_csum_flags, 0);
	if (FUNC10(ifp) & IFCAP_TXCSUM_IPV6)
		FUNC13(ifp,  tx_ip6_csum_flags, 0);
	if (FUNC10(ifp) & IFCAP_TSO4)
		FUNC13(ifp, CSUM_IP_TSO, 0);
	if (FUNC10(ifp) & IFCAP_TSO6)
		FUNC13(ifp, CSUM_IP6_TSO, 0);

	for (i = 0, txq = ctx->ifc_txqs; i < sctx->isc_ntxqsets; i++, txq++) {
		FUNC0(txq);
		FUNC7(&txq->ift_timer);
		FUNC1(txq);
		FUNC17(ctx, txq);
	}

	/*
	 * Calculate a suitable Rx mbuf size prior to calling IFDI_INIT, so
	 * that drivers can use the value when setting up the hardware receive
	 * buffers.
	 */
	FUNC14(ctx);

#ifdef INVARIANTS
	i = if_getdrvflags(ifp);
#endif
	FUNC2(ctx);
	FUNC5(FUNC11(ifp) == i);
	for (i = 0, rxq = ctx->ifc_rxqs; i < sctx->isc_nrxqsets; i++, rxq++) {
		/* XXX this should really be done on a per-queue basis */
		if (FUNC10(ifp) & IFCAP_NETMAP) {
			FUNC5(rxq->ifr_id == i);
			FUNC16(ctx, rxq);
			continue;
		}
		for (j = 0, fl = rxq->ifr_fl; j < rxq->ifr_nfl; j++, fl++) {
			if (FUNC15(fl)) {
				FUNC8(ctx->ifc_dev,
				    "setting up free list %d failed - "
				    "check cluster settings\n", j);
				goto done;
			}
		}
	}
done:
	FUNC12(ctx->ifc_ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);
	FUNC4(ctx);
	txq = ctx->ifc_txqs;
	for (i = 0; i < sctx->isc_ntxqsets; i++, txq++)
		FUNC6(&txq->ift_timer, hz/2, iflib_timer, txq,
			txq->ift_timer.c_cpu);
}