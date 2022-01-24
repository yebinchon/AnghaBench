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
struct rx_rdesc {int /*<<< orphan*/  vtag; int /*<<< orphan*/  rdinfo; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  ether_vtag; struct ifnet* rcvif; } ;
struct mbuf {int m_len; int /*<<< orphan*/  m_flags; TYPE_2__ m_pkthdr; struct mbuf* m_next; } ;
struct ifnet {int if_capenable; int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_3__ {scalar_t__ alc_rxlen; struct mbuf* alc_rxtail; struct mbuf* alc_rxprev_tail; struct mbuf* alc_rxhead; struct alc_rxdesc* alc_rxdesc; } ;
struct alc_softc {int alc_buf_size; TYPE_1__ alc_cdata; struct ifnet* alc_ifp; } ;
struct alc_rxdesc {struct mbuf* rx_m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct alc_softc*) ; 
 int /*<<< orphan*/  ALC_RX_RING_CNT ; 
 int /*<<< orphan*/  FUNC3 (struct alc_softc*) ; 
 scalar_t__ ETHER_CRC_LEN ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  M_VLANTAG ; 
 scalar_t__ FUNC4 (int) ; 
 int RRD_ERR_ALIGN ; 
 int RRD_ERR_CRC ; 
 int RRD_ERR_LENGTH ; 
 int RRD_ERR_RUNT ; 
 int RRD_ERR_SUM ; 
 int RRD_ERR_TRUNC ; 
 int RRD_IPCSUM_NOK ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int RRD_TCP_UDPCSUM_NOK ; 
 int FUNC7 (int) ; 
 int RRD_VLAN_TAG ; 
 struct mbuf* FUNC8 (struct ifnet*,struct mbuf*) ; 
 scalar_t__ FUNC9 (struct alc_softc*,struct alc_rxdesc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC15(struct alc_softc *sc, struct rx_rdesc *rrd)
{
	struct alc_rxdesc *rxd;
	struct ifnet *ifp;
	struct mbuf *mp, *m;
	uint32_t rdinfo, status, vtag;
	int count, nsegs, rx_cons;

	ifp = sc->alc_ifp;
	status = FUNC11(rrd->status);
	rdinfo = FUNC11(rrd->rdinfo);
	rx_cons = FUNC6(rdinfo);
	nsegs = FUNC5(rdinfo);

	sc->alc_cdata.alc_rxlen = FUNC4(status);
	if ((status & (RRD_ERR_SUM | RRD_ERR_LENGTH)) != 0) {
		/*
		 * We want to pass the following frames to upper
		 * layer regardless of error status of Rx return
		 * ring.
		 *
		 *  o IP/TCP/UDP checksum is bad.
		 *  o frame length and protocol specific length
		 *     does not match.
		 *
		 *  Force network stack compute checksum for
		 *  errored frames.
		 */
		status |= RRD_TCP_UDPCSUM_NOK | RRD_IPCSUM_NOK;
		if ((status & (RRD_ERR_CRC | RRD_ERR_ALIGN |
		    RRD_ERR_TRUNC | RRD_ERR_RUNT)) != 0)
			return;
	}

	for (count = 0; count < nsegs; count++,
	    FUNC0(rx_cons, ALC_RX_RING_CNT)) {
		rxd = &sc->alc_cdata.alc_rxdesc[rx_cons];
		mp = rxd->rx_m;
		/* Add a new receive buffer to the ring. */
		if (FUNC9(sc, rxd) != 0) {
			FUNC10(ifp, IFCOUNTER_IQDROPS, 1);
			/* Reuse Rx buffers. */
			if (sc->alc_cdata.alc_rxhead != NULL)
				FUNC12(sc->alc_cdata.alc_rxhead);
			break;
		}

		/*
		 * Assume we've received a full sized frame.
		 * Actual size is fixed when we encounter the end of
		 * multi-segmented frame.
		 */
		mp->m_len = sc->alc_buf_size;

		/* Chain received mbufs. */
		if (sc->alc_cdata.alc_rxhead == NULL) {
			sc->alc_cdata.alc_rxhead = mp;
			sc->alc_cdata.alc_rxtail = mp;
		} else {
			mp->m_flags &= ~M_PKTHDR;
			sc->alc_cdata.alc_rxprev_tail =
			    sc->alc_cdata.alc_rxtail;
			sc->alc_cdata.alc_rxtail->m_next = mp;
			sc->alc_cdata.alc_rxtail = mp;
		}

		if (count == nsegs - 1) {
			/* Last desc. for this frame. */
			m = sc->alc_cdata.alc_rxhead;
			m->m_flags |= M_PKTHDR;
			/*
			 * It seems that L1C/L2C controller has no way
			 * to tell hardware to strip CRC bytes.
			 */
			m->m_pkthdr.len =
			    sc->alc_cdata.alc_rxlen - ETHER_CRC_LEN;
			if (nsegs > 1) {
				/* Set last mbuf size. */
				mp->m_len = sc->alc_cdata.alc_rxlen -
				    (nsegs - 1) * sc->alc_buf_size;
				/* Remove the CRC bytes in chained mbufs. */
				if (mp->m_len <= ETHER_CRC_LEN) {
					sc->alc_cdata.alc_rxtail =
					    sc->alc_cdata.alc_rxprev_tail;
					sc->alc_cdata.alc_rxtail->m_len -=
					    (ETHER_CRC_LEN - mp->m_len);
					sc->alc_cdata.alc_rxtail->m_next = NULL;
					FUNC12(mp);
				} else {
					mp->m_len -= ETHER_CRC_LEN;
				}
			} else
				m->m_len = m->m_pkthdr.len;
			m->m_pkthdr.rcvif = ifp;
			/*
			 * Due to hardware bugs, Rx checksum offloading
			 * was intentionally disabled.
			 */
			if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0 &&
			    (status & RRD_VLAN_TAG) != 0) {
				vtag = FUNC7(FUNC11(rrd->vtag));
				m->m_pkthdr.ether_vtag = FUNC13(vtag);
				m->m_flags |= M_VLANTAG;
			}
#ifndef __NO_STRICT_ALIGNMENT
			m = FUNC8(ifp, m);
			if (m != NULL)
#endif
			{
			/* Pass it on. */
			FUNC3(sc);
			(*ifp->if_input)(ifp, m);
			FUNC1(sc);
			}
		}
	}
	/* Reset mbuf chains. */
	FUNC2(sc);
}