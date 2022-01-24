#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct netif_rx_response {int flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; } ;
struct TYPE_9__ {TYPE_2__ gso; } ;
struct netif_extra_info {int type; TYPE_3__ u; } ;
struct TYPE_11__ {int /*<<< orphan*/  rsp_cons; TYPE_1__* sring; } ;
struct lro_ctrl {scalar_t__ lro_cnt; } ;
struct netfront_rxq {TYPE_5__ ring; struct lro_ctrl lro; struct netfront_info* info; } ;
struct netfront_rx_info {struct netif_extra_info* extras; struct netif_rx_response rx; } ;
struct netfront_info {struct ifnet* xn_ifp; } ;
struct mbufq {int dummy; } ;
struct TYPE_10__ {int csum_flags; int csum_data; int /*<<< orphan*/  tso_segsz; struct ifnet* rcvif; } ;
struct mbuf {TYPE_4__ m_pkthdr; } ;
struct ifnet {int if_capenable; int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  rsp_prod; } ;
typedef  int /*<<< orphan*/  RING_IDX ;

/* Variables and functions */
 int CSUM_DATA_VALID ; 
 int CSUM_PSEUDO_HDR ; 
 int CSUM_TSO ; 
 int IFCAP_LRO ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  INT_MAX ; 
 int NETRXF_data_validated ; 
 int NETRXF_extra_info ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int XEN_NETIF_EXTRA_TYPE_GSO ; 
 int /*<<< orphan*/  FUNC2 (struct netfront_rxq*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC5 (struct mbufq*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbufq*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbufq*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbufq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct netif_rx_response*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct netif_extra_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct lro_ctrl*) ; 
 scalar_t__ FUNC16 (struct lro_ctrl*,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct netfront_rxq*) ; 
 int FUNC18 (struct netfront_rxq*,struct netfront_rx_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mbuf**) ; 

__attribute__((used)) static void
FUNC19(struct netfront_rxq *rxq)
{
	struct ifnet *ifp;
	struct netfront_info *np = rxq->info;
#if (defined(INET) || defined(INET6))
	struct lro_ctrl *lro = &rxq->lro;
#endif
	struct netfront_rx_info rinfo;
	struct netif_rx_response *rx = &rinfo.rx;
	struct netif_extra_info *extras = rinfo.extras;
	RING_IDX i, rp;
	struct mbuf *m;
	struct mbufq mbufq_rxq, mbufq_errq;
	int err, work_to_do;

	FUNC2(rxq);

	if (!FUNC11(np))
		return;

	/* XXX: there should be some sane limit. */
	FUNC8(&mbufq_errq, INT_MAX);
	FUNC8(&mbufq_rxq, INT_MAX);

	ifp = np->xn_ifp;

	do {
		rp = rxq->ring.sring->rsp_prod;
		FUNC12();	/* Ensure we see queued responses up to 'rp'. */

		i = rxq->ring.rsp_cons;
		while ((i != rp)) {
			FUNC9(rx, FUNC1(&rxq->ring, i), sizeof(*rx));
			FUNC10(extras, 0, sizeof(rinfo.extras));

			m = NULL;
			err = FUNC18(rxq, &rinfo, rp, &i, &m);

			if (FUNC3(err)) {
				if (m)
					(void )FUNC7(&mbufq_errq, m);
				FUNC4(ifp, IFCOUNTER_IQDROPS, 1);
				continue;
			}

			m->m_pkthdr.rcvif = ifp;
			if (rx->flags & NETRXF_data_validated) {
				/*
				 * According to mbuf(9) the correct way to tell
				 * the stack that the checksum of an inbound
				 * packet is correct, without it actually being
				 * present (because the underlying interface
				 * doesn't provide it), is to set the
				 * CSUM_DATA_VALID and CSUM_PSEUDO_HDR flags,
				 * and the csum_data field to 0xffff.
				 */
				m->m_pkthdr.csum_flags |= (CSUM_DATA_VALID
				    | CSUM_PSEUDO_HDR);
				m->m_pkthdr.csum_data = 0xffff;
			}
			if ((rx->flags & NETRXF_extra_info) != 0 &&
			    (extras[XEN_NETIF_EXTRA_TYPE_GSO - 1].type ==
			    XEN_NETIF_EXTRA_TYPE_GSO)) {
				m->m_pkthdr.tso_segsz =
				extras[XEN_NETIF_EXTRA_TYPE_GSO - 1].u.gso.size;
				m->m_pkthdr.csum_flags |= CSUM_TSO;
			}

			(void )FUNC7(&mbufq_rxq, m);
		}

		rxq->ring.rsp_cons = i;

		FUNC17(rxq);

		FUNC0(&rxq->ring, work_to_do);
	} while (work_to_do);

	FUNC6(&mbufq_errq);
	/*
	 * Process all the mbufs after the remapping is complete.
	 * Break the mbuf chain first though.
	 */
	while ((m = FUNC5(&mbufq_rxq)) != NULL) {
		FUNC4(ifp, IFCOUNTER_IPACKETS, 1);
#if (defined(INET) || defined(INET6))
		/* Use LRO if possible */
		if ((ifp->if_capenable & IFCAP_LRO) == 0 ||
		    lro->lro_cnt == 0 || tcp_lro_rx(lro, m, 0)) {
			/*
			 * If LRO fails, pass up to the stack
			 * directly.
			 */
			(*ifp->if_input)(ifp, m);
		}
#else
		(*ifp->if_input)(ifp, m);
#endif
	}

#if (defined(INET) || defined(INET6))
	/*
	 * Flush any outstanding LRO work
	 */
	tcp_lro_flush_all(lro);
#endif
}