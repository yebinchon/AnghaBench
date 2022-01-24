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
struct TYPE_2__ {int len; int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct hn_txdesc {int dummy; } ;
struct hn_tx_ring {int hn_suspended; scalar_t__ hn_agg_pktleft; int /*<<< orphan*/ * hn_agg_txd; int /*<<< orphan*/  hn_no_txdescs; int /*<<< orphan*/  hn_tx_lock; struct hn_softc* hn_sc; } ;
struct hn_softc {struct hn_tx_ring* hn_tx_ring; struct ifnet* hn_ifp; } ;

/* Variables and functions */
 int CSUM_IP6_TCP ; 
 int CSUM_IP6_UDP ; 
 int CSUM_IP_TCP ; 
 int CSUM_IP_UDP ; 
 int CSUM_TSO ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int FUNC6 (struct ifnet*,struct hn_tx_ring*,struct hn_txdesc*,struct mbuf**) ; 
 int FUNC7 (struct ifnet*,struct hn_tx_ring*) ; 
 struct mbuf* FUNC8 (struct mbuf*) ; 
 struct mbuf* FUNC9 (struct mbuf*) ; 
 struct hn_txdesc* FUNC10 (struct hn_tx_ring*) ; 
 int FUNC11 (struct ifnet*,struct hn_tx_ring*,struct hn_txdesc*) ; 
 int hn_use_if_start ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct hn_tx_ring *txr, int len)
{
	struct hn_softc *sc = txr->hn_sc;
	struct ifnet *ifp = sc->hn_ifp;
	int sched = 0;

	FUNC3(hn_use_if_start,
	    ("hn_start_locked is called, when if_start is disabled"));
	FUNC3(txr == &sc->hn_tx_ring[0], ("not the first TX ring"));
	FUNC13(&txr->hn_tx_lock, MA_OWNED);
	FUNC3(txr->hn_agg_txd == NULL, ("lingering aggregating txdesc"));

	if (FUNC4(txr->hn_suspended))
		return (0);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING)
		return (0);

	while (!FUNC1(&ifp->if_snd)) {
		struct hn_txdesc *txd;
		struct mbuf *m_head;
		int error;

		FUNC0(&ifp->if_snd, m_head);
		if (m_head == NULL)
			break;

		if (len > 0 && m_head->m_pkthdr.len > len) {
			/*
			 * This sending could be time consuming; let callers
			 * dispatch this packet sending (and sending of any
			 * following up packets) to tx taskqueue.
			 */
			FUNC2(&ifp->if_snd, m_head);
			sched = 1;
			break;
		}

#if defined(INET6) || defined(INET)
		if (m_head->m_pkthdr.csum_flags & CSUM_TSO) {
			m_head = hn_tso_fixup(m_head);
			if (__predict_false(m_head == NULL)) {
				if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
				continue;
			}
		} else if (m_head->m_pkthdr.csum_flags &
		    (CSUM_IP_UDP | CSUM_IP_TCP | CSUM_IP6_UDP | CSUM_IP6_TCP)) {
			m_head = hn_set_hlen(m_head);
			if (__predict_false(m_head == NULL)) {
				if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
				continue;
			}
		}
#endif

		txd = FUNC10(txr);
		if (txd == NULL) {
			txr->hn_no_txdescs++;
			FUNC2(&ifp->if_snd, m_head);
			FUNC5(&ifp->if_drv_flags, IFF_DRV_OACTIVE);
			break;
		}

		error = FUNC6(ifp, txr, txd, &m_head);
		if (error) {
			/* Both txd and m_head are freed */
			FUNC3(txr->hn_agg_txd == NULL,
			    ("encap failed w/ pending aggregating txdesc"));
			continue;
		}

		if (txr->hn_agg_pktleft == 0) {
			if (txr->hn_agg_txd != NULL) {
				FUNC3(m_head == NULL,
				    ("pending mbuf for aggregating txdesc"));
				error = FUNC7(ifp, txr);
				if (FUNC4(error)) {
					FUNC5(&ifp->if_drv_flags,
					    IFF_DRV_OACTIVE);
					break;
				}
			} else {
				FUNC3(m_head != NULL, ("mbuf was freed"));
				error = FUNC11(ifp, txr, txd);
				if (FUNC4(error)) {
					/* txd is freed, but m_head is not */
					FUNC2(&ifp->if_snd, m_head);
					FUNC5(&ifp->if_drv_flags,
					    IFF_DRV_OACTIVE);
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
	}

	/* Flush pending aggerated transmission. */
	if (txr->hn_agg_txd != NULL)
		FUNC7(ifp, txr);
	return (sched);
}