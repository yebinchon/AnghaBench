#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; } ;
struct hn_txdesc {int dummy; } ;
struct hn_tx_ring {int hn_suspended; int hn_oactive; scalar_t__ hn_agg_pktleft; int /*<<< orphan*/ * hn_agg_txd; int /*<<< orphan*/  hn_mbuf_br; int /*<<< orphan*/  hn_no_txdescs; int /*<<< orphan*/  hn_tx_lock; struct hn_softc* hn_sc; } ;
struct hn_softc {struct ifnet* hn_ifp; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC3 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,struct mbuf*) ; 
 int FUNC5 (struct ifnet*,struct hn_tx_ring*,struct hn_txdesc*,struct mbuf**) ; 
 int FUNC6 (struct ifnet*,struct hn_tx_ring*) ; 
 struct hn_txdesc* FUNC7 (struct hn_tx_ring*) ; 
 int FUNC8 (struct ifnet*,struct hn_tx_ring*,struct hn_txdesc*) ; 
 scalar_t__ hn_use_if_start ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct hn_tx_ring *txr, int len)
{
	struct hn_softc *sc = txr->hn_sc;
	struct ifnet *ifp = sc->hn_ifp;
	struct mbuf *m_head;
	int sched = 0;

	FUNC9(&txr->hn_tx_lock, MA_OWNED);
#ifdef HN_IFSTART_SUPPORT
	KASSERT(hn_use_if_start == 0,
	    ("hn_xmit is called, when if_start is enabled"));
#endif
	FUNC0(txr->hn_agg_txd == NULL, ("lingering aggregating txdesc"));

	if (FUNC1(txr->hn_suspended))
		return (0);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0 || txr->hn_oactive)
		return (0);

	while ((m_head = FUNC3(ifp, txr->hn_mbuf_br)) != NULL) {
		struct hn_txdesc *txd;
		int error;

		if (len > 0 && m_head->m_pkthdr.len > len) {
			/*
			 * This sending could be time consuming; let callers
			 * dispatch this packet sending (and sending of any
			 * following up packets) to tx taskqueue.
			 */
			FUNC4(ifp, txr->hn_mbuf_br, m_head);
			sched = 1;
			break;
		}

		txd = FUNC7(txr);
		if (txd == NULL) {
			txr->hn_no_txdescs++;
			FUNC4(ifp, txr->hn_mbuf_br, m_head);
			txr->hn_oactive = 1;
			break;
		}

		error = FUNC5(ifp, txr, txd, &m_head);
		if (error) {
			/* Both txd and m_head are freed; discard */
			FUNC0(txr->hn_agg_txd == NULL,
			    ("encap failed w/ pending aggregating txdesc"));
			FUNC2(ifp, txr->hn_mbuf_br);
			continue;
		}

		if (txr->hn_agg_pktleft == 0) {
			if (txr->hn_agg_txd != NULL) {
				FUNC0(m_head == NULL,
				    ("pending mbuf for aggregating txdesc"));
				error = FUNC6(ifp, txr);
				if (FUNC1(error)) {
					txr->hn_oactive = 1;
					break;
				}
			} else {
				FUNC0(m_head != NULL, ("mbuf was freed"));
				error = FUNC8(ifp, txr, txd);
				if (FUNC1(error)) {
					/* txd is freed, but m_head is not */
					FUNC4(ifp, txr->hn_mbuf_br,
					    m_head);
					txr->hn_oactive = 1;
					break;
				}
			}
		}
#ifdef INVARIANTS
		else {
			KASSERT(txr->hn_agg_txd != NULL,
			    ("no aggregating txdesc"));
			KASSERT(m_head == NULL,
			    ("pending mbuf for aggregating txdesc"));
		}
#endif

		/* Sent */
		FUNC2(ifp, txr->hn_mbuf_br);
	}

	/* Flush pending aggerated transmission. */
	if (txr->hn_agg_txd != NULL)
		FUNC6(ifp, txr);
	return (sched);
}