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
struct rx_rdesc {int /*<<< orphan*/  vtags; int /*<<< orphan*/  len; int /*<<< orphan*/  index; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {scalar_t__ len; int csum_flags; int csum_data; int /*<<< orphan*/  ether_vtag; struct ifnet* rcvif; } ;
struct mbuf {int m_len; int /*<<< orphan*/  m_flags; TYPE_2__ m_pkthdr; struct mbuf* m_next; } ;
struct ifnet {int if_capenable; int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_3__ {scalar_t__ age_rxlen; struct mbuf* age_rxtail; struct mbuf* age_rxprev_tail; struct mbuf* age_rxhead; struct age_rxdesc* age_rxdesc; } ;
struct age_softc {TYPE_1__ age_cdata; struct ifnet* age_ifp; } ;
struct age_rxdesc {struct mbuf* rx_m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct age_softc*) ; 
 int AGE_RRD_CODE ; 
 int AGE_RRD_CRC ; 
 int AGE_RRD_DRIBBLE ; 
 int AGE_RRD_ERROR ; 
 int AGE_RRD_IPCSUM_NOK ; 
 int AGE_RRD_IPV4 ; 
 int AGE_RRD_LENGTH_NOK ; 
 int AGE_RRD_OFLOW ; 
 int AGE_RRD_RUNT ; 
 int AGE_RRD_TCP ; 
 int AGE_RRD_TCP_UDPCSUM_NOK ; 
 int AGE_RRD_TRUNC ; 
 int AGE_RRD_UDP ; 
 int AGE_RRD_VLAN ; 
 int /*<<< orphan*/  FUNC3 (struct age_softc*) ; 
 int AGE_RX_BUF_SIZE ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  AGE_RX_RING_CNT ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct age_softc*) ; 
 int CSUM_DATA_VALID ; 
 int CSUM_IP_CHECKED ; 
 int CSUM_IP_VALID ; 
 int CSUM_PSEUDO_HDR ; 
 scalar_t__ ETHER_CRC_LEN ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  M_VLANTAG ; 
 struct mbuf* FUNC10 (struct ifnet*,struct mbuf*) ; 
 scalar_t__ FUNC11 (struct age_softc*,struct age_rxdesc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC16(struct age_softc *sc, struct rx_rdesc *rxrd)
{
	struct age_rxdesc *rxd;
	struct ifnet *ifp;
	struct mbuf *mp, *m;
	uint32_t status, index, vtag;
	int count, nsegs;
	int rx_cons;

	FUNC2(sc);

	ifp = sc->age_ifp;
	status = FUNC13(rxrd->flags);
	index = FUNC13(rxrd->index);
	rx_cons = FUNC5(index);
	nsegs = FUNC6(index);

	sc->age_cdata.age_rxlen = FUNC4(FUNC13(rxrd->len));
	if ((status & (AGE_RRD_ERROR | AGE_RRD_LENGTH_NOK)) != 0) {
		/*
		 * We want to pass the following frames to upper
		 * layer regardless of error status of Rx return
		 * ring.
		 *
		 *  o IP/TCP/UDP checksum is bad.
		 *  o frame length and protocol specific length
		 *     does not match.
		 */
		status |= AGE_RRD_IPCSUM_NOK | AGE_RRD_TCP_UDPCSUM_NOK;
		if ((status & (AGE_RRD_CRC | AGE_RRD_CODE | AGE_RRD_DRIBBLE |
		    AGE_RRD_RUNT | AGE_RRD_OFLOW | AGE_RRD_TRUNC)) != 0)
			return;
	}

	for (count = 0; count < nsegs; count++,
	    FUNC0(rx_cons, AGE_RX_RING_CNT)) {
		rxd = &sc->age_cdata.age_rxdesc[rx_cons];
		mp = rxd->rx_m;
		/* Add a new receive buffer to the ring. */
		if (FUNC11(sc, rxd) != 0) {
			FUNC12(ifp, IFCOUNTER_IQDROPS, 1);
			/* Reuse Rx buffers. */
			if (sc->age_cdata.age_rxhead != NULL)
				FUNC14(sc->age_cdata.age_rxhead);
			break;
		}

		/*
		 * Assume we've received a full sized frame.
		 * Actual size is fixed when we encounter the end of
		 * multi-segmented frame.
		 */
		mp->m_len = AGE_RX_BUF_SIZE;

		/* Chain received mbufs. */
		if (sc->age_cdata.age_rxhead == NULL) {
			sc->age_cdata.age_rxhead = mp;
			sc->age_cdata.age_rxtail = mp;
		} else {
			mp->m_flags &= ~M_PKTHDR;
			sc->age_cdata.age_rxprev_tail =
			    sc->age_cdata.age_rxtail;
			sc->age_cdata.age_rxtail->m_next = mp;
			sc->age_cdata.age_rxtail = mp;
		}

		if (count == nsegs - 1) {
			/* Last desc. for this frame. */
			m = sc->age_cdata.age_rxhead;
			m->m_flags |= M_PKTHDR;
			/*
			 * It seems that L1 controller has no way
			 * to tell hardware to strip CRC bytes.
			 */
			m->m_pkthdr.len = sc->age_cdata.age_rxlen -
			    ETHER_CRC_LEN;
			if (nsegs > 1) {
				/* Set last mbuf size. */
				mp->m_len = sc->age_cdata.age_rxlen -
				    ((nsegs - 1) * AGE_RX_BUF_SIZE);
				/* Remove the CRC bytes in chained mbufs. */
				if (mp->m_len <= ETHER_CRC_LEN) {
					sc->age_cdata.age_rxtail =
					    sc->age_cdata.age_rxprev_tail;
					sc->age_cdata.age_rxtail->m_len -=
					    (ETHER_CRC_LEN - mp->m_len);
					sc->age_cdata.age_rxtail->m_next = NULL;
					FUNC14(mp);
				} else {
					mp->m_len -= ETHER_CRC_LEN;
				}
			} else
				m->m_len = m->m_pkthdr.len;
			m->m_pkthdr.rcvif = ifp;
			/*
			 * Set checksum information.
			 * It seems that L1 controller can compute partial
			 * checksum. The partial checksum value can be used
			 * to accelerate checksum computation for fragmented
			 * TCP/UDP packets. Upper network stack already
			 * takes advantage of the partial checksum value in
			 * IP reassembly stage. But I'm not sure the
			 * correctness of the partial hardware checksum
			 * assistance due to lack of data sheet. If it is
			 * proven to work on L1 I'll enable it.
			 */
			if ((ifp->if_capenable & IFCAP_RXCSUM) != 0 &&
			    (status & AGE_RRD_IPV4) != 0) {
				if ((status & AGE_RRD_IPCSUM_NOK) == 0)
					m->m_pkthdr.csum_flags |=
					    CSUM_IP_CHECKED | CSUM_IP_VALID;
				if ((status & (AGE_RRD_TCP | AGE_RRD_UDP)) &&
				    (status & AGE_RRD_TCP_UDPCSUM_NOK) == 0) {
					m->m_pkthdr.csum_flags |=
					    CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
					m->m_pkthdr.csum_data = 0xffff;
				}
				/*
				 * Don't mark bad checksum for TCP/UDP frames
				 * as fragmented frames may always have set
				 * bad checksummed bit of descriptor status.
				 */
			}

			/* Check for VLAN tagged frames. */
			if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0 &&
			    (status & AGE_RRD_VLAN) != 0) {
				vtag = FUNC7(FUNC13(rxrd->vtags));
				m->m_pkthdr.ether_vtag = FUNC8(vtag);
				m->m_flags |= M_VLANTAG;
			}
#ifndef __NO_STRICT_ALIGNMENT
			m = FUNC10(ifp, m);
			if (m != NULL)
#endif
			{
			/* Pass it on. */
			FUNC9(sc);
			(*ifp->if_input)(ifp, m);
			FUNC1(sc);
			}
		}
	}

	/* Reset mbuf chains. */
	FUNC3(sc);
}