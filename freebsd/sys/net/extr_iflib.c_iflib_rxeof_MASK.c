#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int csum_flags; scalar_t__ len; } ;
struct mbuf {struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;
struct if_rxd_info {int iri_cidx; scalar_t__ iri_len; scalar_t__ iri_nfrags; int /*<<< orphan*/  iri_frags; TYPE_4__* iri_ifp; int /*<<< orphan*/  iri_qsidx; } ;
typedef  int qidx_t ;
typedef  TYPE_2__* iflib_rxq_t ;
typedef  TYPE_3__* iflib_fl_t ;
typedef  TYPE_4__* if_t ;
typedef  TYPE_5__* if_softc_ctx_t ;
typedef  TYPE_6__* if_shared_ctx_t ;
typedef  TYPE_7__* if_ctx_t ;
struct TYPE_27__ {scalar_t__* isc_nrxd; } ;
struct TYPE_29__ {int (* isc_rxd_pkt_get ) (int /*<<< orphan*/ ,struct if_rxd_info*) ;int /*<<< orphan*/  ifc_flags; int /*<<< orphan*/  ifc_softc; TYPE_4__* ifc_ifp; TYPE_5__ ifc_softc_ctx; TYPE_6__* ifc_sctx; } ;
struct TYPE_28__ {int isc_flags; int isc_nfl; } ;
struct TYPE_26__ {int /*<<< orphan*/  (* if_input ) (TYPE_4__*,struct mbuf*) ;int /*<<< orphan*/  if_vnet; } ;
struct TYPE_25__ {int ifl_cidx; } ;
struct TYPE_24__ {int ifr_cq_cidx; int /*<<< orphan*/  ifr_lc; TYPE_3__* ifr_fl; int /*<<< orphan*/  ifr_frags; int /*<<< orphan*/  ifr_id; TYPE_7__* ifr_ctx; } ;

/* Variables and functions */
 int CSUM_L4_CALC ; 
 int CSUM_L4_VALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int IFCAP_LRO ; 
 int /*<<< orphan*/  IFCOUNTER_IBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFC_DO_RESET ; 
 int IFLIB_HAS_RXCQ ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,TYPE_3__*,int) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 int FUNC13 (struct mbuf*,int,int) ; 
 struct mbuf* FUNC14 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC16 (TYPE_7__*,TYPE_2__*,int,int) ; 
 struct mbuf* FUNC17 (TYPE_2__*,struct if_rxd_info*) ; 
 int /*<<< orphan*/  rx_ctx_inactive ; 
 int /*<<< orphan*/  rx_if_input ; 
 int /*<<< orphan*/  rx_unavail ; 
 int /*<<< orphan*/  FUNC18 (struct if_rxd_info*) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct if_rxd_info*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC25(iflib_rxq_t rxq, qidx_t budget)
{
	if_t ifp;
	if_ctx_t ctx = rxq->ifr_ctx;
	if_shared_ctx_t sctx = ctx->ifc_sctx;
	if_softc_ctx_t scctx = &ctx->ifc_softc_ctx;
	int avail, i;
	qidx_t *cidxp;
	struct if_rxd_info ri;
	int err, budget_left, rx_bytes, rx_pkts;
	iflib_fl_t fl;
	int lro_enabled;
	bool v4_forwarding, v6_forwarding, lro_possible;

	/*
	 * XXX early demux data packets so that if_input processing only handles
	 * acks in interrupt context
	 */
	struct mbuf *m, *mh, *mt, *mf;

	lro_possible = v4_forwarding = v6_forwarding = false;
	ifp = ctx->ifc_ifp;
	mh = mt = NULL;
	FUNC5(budget > 0);
	rx_pkts	= rx_bytes = 0;
	if (sctx->isc_flags & IFLIB_HAS_RXCQ)
		cidxp = &rxq->ifr_cq_cidx;
	else
		cidxp = &rxq->ifr_fl[0].ifl_cidx;
	if ((avail = FUNC16(ctx, rxq, *cidxp, budget)) == 0) {
		for (i = 0, fl = &rxq->ifr_fl[0]; i < sctx->isc_nfl; i++, fl++)
			FUNC8(ctx, fl, budget + 8);
		FUNC3(rx_unavail);
		return (false);
	}

	/* pfil needs the vnet to be set */
	FUNC2(ifp->if_vnet);
	for (budget_left = budget; budget_left > 0 && avail > 0;) {
		if (FUNC9(!FUNC0(ctx))) {
			FUNC3(rx_ctx_inactive);
			break;
		}
		/*
		 * Reset client set fields to their default values
		 */
		FUNC18(&ri);
		ri.iri_qsidx = rxq->ifr_id;
		ri.iri_cidx = *cidxp;
		ri.iri_ifp = ifp;
		ri.iri_frags = rxq->ifr_frags;
		err = ctx->isc_rxd_pkt_get(ctx->ifc_softc, &ri);

		if (err)
			goto err;
		rx_pkts += 1;
		rx_bytes += ri.iri_len;
		if (sctx->isc_flags & IFLIB_HAS_RXCQ) {
			*cidxp = ri.iri_cidx;
			/* Update our consumer index */
			/* XXX NB: shurd - check if this is still safe */
			while (rxq->ifr_cq_cidx >= scctx->isc_nrxd[0])
				rxq->ifr_cq_cidx -= scctx->isc_nrxd[0];
			/* was this only a completion queue message? */
			if (FUNC9(ri.iri_nfrags == 0))
				continue;
		}
		FUNC5(ri.iri_nfrags != 0);
		FUNC5(ri.iri_len != 0);

		/* will advance the cidx on the corresponding free lists */
		m = FUNC17(rxq, &ri);
		avail--;
		budget_left--;
		if (avail == 0 && budget_left)
			avail = FUNC16(ctx, rxq, *cidxp, budget_left);

		if (FUNC9(m == NULL))
			continue;

		/* imm_pkt: -- cxgb */
		if (mh == NULL)
			mh = mt = m;
		else {
			mt->m_nextpkt = m;
			mt = m;
		}
	}
	FUNC1();
	/* make sure that we can refill faster than drain */
	for (i = 0, fl = &rxq->ifr_fl[0]; i < sctx->isc_nfl; i++, fl++)
		FUNC8(ctx, fl, budget + 8);

	lro_enabled = (FUNC10(ifp) & IFCAP_LRO);
	if (lro_enabled)
		FUNC15(&rxq->ifr_lc, &v4_forwarding, &v6_forwarding);
	mt = mf = NULL;
	while (mh != NULL) {
		m = mh;
		mh = mh->m_nextpkt;
		m->m_nextpkt = NULL;
#ifndef __NO_STRICT_ALIGNMENT
		if (!FUNC4(m) && (m = FUNC14(m)) == NULL)
			continue;
#endif
		rx_bytes += m->m_pkthdr.len;
		rx_pkts++;
#if defined(INET6) || defined(INET)
		if (lro_enabled) {
			if (!lro_possible) {
				lro_possible = iflib_check_lro_possible(m, v4_forwarding, v6_forwarding);
				if (lro_possible && mf != NULL) {
					ifp->if_input(ifp, mf);
					DBG_COUNTER_INC(rx_if_input);
					mt = mf = NULL;
				}
			}
			if ((m->m_pkthdr.csum_flags & (CSUM_L4_CALC|CSUM_L4_VALID)) ==
			    (CSUM_L4_CALC|CSUM_L4_VALID)) {
				if (lro_possible && tcp_lro_rx(&rxq->ifr_lc, m, 0) == 0)
					continue;
			}
		}
#endif
		if (lro_possible) {
			ifp->if_input(ifp, m);
			FUNC3(rx_if_input);
			continue;
		}

		if (mf == NULL)
			mf = m;
		if (mt != NULL)
			mt->m_nextpkt = m;
		mt = m;
	}
	if (mf != NULL) {
		ifp->if_input(ifp, mf);
		FUNC3(rx_if_input);
	}

	FUNC11(ifp, IFCOUNTER_IBYTES, rx_bytes);
	FUNC11(ifp, IFCOUNTER_IPACKETS, rx_pkts);

	/*
	 * Flush any outstanding LRO work
	 */
#if defined(INET6) || defined(INET)
	tcp_lro_flush_all(&rxq->ifr_lc);
#endif
	if (avail)
		return true;
	return (FUNC16(ctx, rxq, *cidxp, 1));
err:
	FUNC6(ctx);
	ctx->ifc_flags |= IFC_DO_RESET;
	FUNC12(ctx);
	FUNC7(ctx);
	return (false);
}