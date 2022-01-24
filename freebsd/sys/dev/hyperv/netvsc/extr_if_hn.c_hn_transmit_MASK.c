#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct rm_priotracker {int dummy; } ;
struct TYPE_3__ {int len; int csum_flags; int flowid; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  if_bpf; struct hn_softc* if_softc; } ;
struct hn_tx_ring {int /*<<< orphan*/  hn_tx_task; int /*<<< orphan*/  hn_tx_taskq; int /*<<< orphan*/  hn_tx_lock; int /*<<< orphan*/  hn_direct_tx_size; scalar_t__ hn_sched_tx; scalar_t__ hn_oactive; int /*<<< orphan*/  hn_mbuf_br; } ;
struct hn_softc {int hn_xvf_flags; int hn_tx_ring_inuse; struct hn_tx_ring* hn_tx_ring; int /*<<< orphan*/  hn_vf_lock; TYPE_2__* hn_vf_ifp; } ;
struct TYPE_4__ {int (* if_transmit ) (TYPE_2__*,struct mbuf*) ;} ;

/* Variables and functions */
 int CSUM_IP6_TCP ; 
 int CSUM_IP6_UDP ; 
 int CSUM_IP_TCP ; 
 int CSUM_IP_UDP ; 
 int CSUM_TSO ; 
 int EIO ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int HN_XVFFLAG_ACCBPF ; 
 int HN_XVFFLAG_ENABLED ; 
 int /*<<< orphan*/  IFCOUNTER_OBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OMCASTS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_OQDROPS ; 
 scalar_t__ FUNC1 (struct mbuf*) ; 
 scalar_t__ M_HASHTYPE_NONE ; 
 int M_MCAST ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ifnet*,int /*<<< orphan*/ ,struct mbuf*) ; 
 struct mbuf* FUNC6 (struct mbuf*,int*) ; 
 struct mbuf* FUNC7 (struct mbuf*) ; 
 struct mbuf* FUNC8 (struct mbuf*) ; 
 int FUNC9 (struct hn_tx_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC11 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mbuf*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 scalar_t__ FUNC17 (int,scalar_t__,int*) ; 
 int FUNC18 (TYPE_2__*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC20(struct ifnet *ifp, struct mbuf *m)
{
	struct hn_softc *sc = ifp->if_softc;
	struct hn_tx_ring *txr;
	int error, idx = 0;

	if (sc->hn_xvf_flags & HN_XVFFLAG_ENABLED) {
		struct rm_priotracker pt;

		FUNC15(&sc->hn_vf_lock, &pt);
		if (FUNC3(sc->hn_xvf_flags & HN_XVFFLAG_ENABLED)) {
			struct mbuf *m_bpf = NULL;
			int obytes, omcast;

			obytes = m->m_pkthdr.len;
			omcast = (m->m_flags & M_MCAST) != 0;

			if (sc->hn_xvf_flags & HN_XVFFLAG_ACCBPF) {
				if (FUNC4(ifp->if_bpf)) {
					m_bpf = FUNC11(m, M_NOWAIT);
					if (m_bpf == NULL) {
						/*
						 * Failed to grab a shallow
						 * copy; tap now.
						 */
						FUNC0(ifp, m);
					}
				}
			} else {
				FUNC0(ifp, m);
			}

			error = sc->hn_vf_ifp->if_transmit(sc->hn_vf_ifp, m);
			FUNC16(&sc->hn_vf_lock, &pt);

			if (m_bpf != NULL) {
				if (!error)
					FUNC0(ifp, m_bpf);
				FUNC12(m_bpf);
			}

			if (error == ENOBUFS) {
				FUNC10(ifp, IFCOUNTER_OQDROPS, 1);
			} else if (error) {
				FUNC10(ifp, IFCOUNTER_OERRORS, 1);
			} else {
				FUNC10(ifp, IFCOUNTER_OPACKETS, 1);
				FUNC10(ifp, IFCOUNTER_OBYTES, obytes);
				if (omcast) {
					FUNC10(ifp, IFCOUNTER_OMCASTS,
					    omcast);
				}
			}
			return (error);
		}
		FUNC16(&sc->hn_vf_lock, &pt);
	}

#if defined(INET6) || defined(INET)
	/*
	 * Perform TSO packet header fixup or get l2/l3 header length now,
	 * since packet headers should be cache-hot.
	 */
	if (m->m_pkthdr.csum_flags & CSUM_TSO) {
		m = hn_tso_fixup(m);
		if (__predict_false(m == NULL)) {
			if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
			return EIO;
		}
	} else if (m->m_pkthdr.csum_flags &
	    (CSUM_IP_UDP | CSUM_IP_TCP | CSUM_IP6_UDP | CSUM_IP6_TCP)) {
		m = hn_set_hlen(m);
		if (__predict_false(m == NULL)) {
			if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
			return EIO;
		}
	}
#endif

	/*
	 * Select the TX ring based on flowid
	 */
	if (FUNC1(m) != M_HASHTYPE_NONE) {
#ifdef RSS
		uint32_t bid;

		if (rss_hash2bucket(m->m_pkthdr.flowid, M_HASHTYPE_GET(m),
		    &bid) == 0)
			idx = bid % sc->hn_tx_ring_inuse;
		else
#endif
		{
#if defined(INET6) || defined(INET)
			int tcpsyn = 0;

			if (m->m_pkthdr.len < 128 &&
			    (m->m_pkthdr.csum_flags &
			     (CSUM_IP_TCP | CSUM_IP6_TCP)) &&
			    (m->m_pkthdr.csum_flags & CSUM_TSO) == 0) {
				m = hn_check_tcpsyn(m, &tcpsyn);
				if (__predict_false(m == NULL)) {
					if_inc_counter(ifp,
					    IFCOUNTER_OERRORS, 1);
					return (EIO);
				}
			}
#else
			const int tcpsyn = 0;
#endif
			if (tcpsyn)
				idx = 0;
			else
				idx = m->m_pkthdr.flowid % sc->hn_tx_ring_inuse;
		}
	}
	txr = &sc->hn_tx_ring[idx];

	error = FUNC5(ifp, txr->hn_mbuf_br, m);
	if (error) {
		FUNC10(ifp, IFCOUNTER_OQDROPS, 1);
		return error;
	}

	if (txr->hn_oactive)
		return 0;

	if (txr->hn_sched_tx)
		goto do_sched;

	if (FUNC13(&txr->hn_tx_lock)) {
		int sched;

		sched = FUNC9(txr, txr->hn_direct_tx_size);
		FUNC14(&txr->hn_tx_lock);
		if (!sched)
			return 0;
	}
do_sched:
	FUNC19(txr->hn_tx_taskq, &txr->hn_tx_task);
	return 0;
}