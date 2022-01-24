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
struct msk_rxdesc {struct mbuf* rx_m; } ;
struct TYPE_4__ {int msk_rx_cons; int msk_rx_prod; struct msk_rxdesc* msk_rxdesc; } ;
struct msk_if_softc {int msk_flags; int msk_framesize; TYPE_2__ msk_cdata; int /*<<< orphan*/  msk_vtag; struct ifnet* msk_ifp; } ;
struct TYPE_3__ {int len; int /*<<< orphan*/  ether_vtag; struct ifnet* rcvif; } ;
struct mbuf {int m_len; int /*<<< orphan*/  m_flags; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_capenable; int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;

/* Variables and functions */
 int ETHER_HDR_LEN ; 
 scalar_t__ ETHER_VLAN_ENCAP_LEN ; 
 int GMR_FS_ANY_ERR ; 
 int GMR_FS_GOOD_FC ; 
 int GMR_FS_RX_OK ; 
 int GMR_FS_VLAN ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int MSK_FLAG_NORXCHK ; 
 int MSK_FLAG_RAMBUF ; 
 int /*<<< orphan*/  FUNC0 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct msk_if_softc*) ; 
 int MSK_MAX_FRAMELEN ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int MSK_RX_RING_CNT ; 
 int /*<<< orphan*/  M_VLANTAG ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct msk_if_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 scalar_t__ FUNC7 (struct msk_if_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct msk_if_softc*,int,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC10(struct msk_if_softc *sc_if, uint32_t status, uint32_t control,
    int len)
{
	struct mbuf *m;
	struct ifnet *ifp;
	struct msk_rxdesc *rxd;
	int cons, rxlen;

	ifp = sc_if->msk_ifp;

	FUNC1(sc_if);

	cons = sc_if->msk_cdata.msk_rx_cons;
	do {
		rxlen = status >> 16;
		if ((status & GMR_FS_VLAN) != 0 &&
		    (ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
			rxlen -= ETHER_VLAN_ENCAP_LEN;
		if ((sc_if->msk_flags & MSK_FLAG_NORXCHK) != 0) {
			/*
			 * For controllers that returns bogus status code
			 * just do minimal check and let upper stack
			 * handle this frame.
			 */
			if (len > MSK_MAX_FRAMELEN || len < ETHER_HDR_LEN) {
				FUNC4(ifp, IFCOUNTER_IERRORS, 1);
				FUNC5(sc_if, cons);
				break;
			}
		} else if (len > sc_if->msk_framesize ||
		    ((status & GMR_FS_ANY_ERR) != 0) ||
		    ((status & GMR_FS_RX_OK) == 0) || (rxlen != len)) {
			/* Don't count flow-control packet as errors. */
			if ((status & GMR_FS_GOOD_FC) == 0)
				FUNC4(ifp, IFCOUNTER_IERRORS, 1);
			FUNC5(sc_if, cons);
			break;
		}
#ifdef MSK_64BIT_DMA
		rxd = &sc_if->msk_cdata.msk_rxdesc[(cons + 1) %
		    MSK_RX_RING_CNT];
#else
		rxd = &sc_if->msk_cdata.msk_rxdesc[cons];
#endif
		m = rxd->rx_m;
		if (FUNC7(sc_if, cons) != 0) {
			FUNC4(ifp, IFCOUNTER_IQDROPS, 1);
			/* Reuse old buffer. */
			FUNC5(sc_if, cons);
			break;
		}
		m->m_pkthdr.rcvif = ifp;
		m->m_pkthdr.len = m->m_len = len;
#ifndef __NO_STRICT_ALIGNMENT
		if ((sc_if->msk_flags & MSK_FLAG_RAMBUF) != 0)
			FUNC6(m);
#endif
		FUNC4(ifp, IFCOUNTER_IPACKETS, 1);
		if ((ifp->if_capenable & IFCAP_RXCSUM) != 0)
			FUNC8(sc_if, control, m);
		/* Check for VLAN tagged packets. */
		if ((status & GMR_FS_VLAN) != 0 &&
		    (ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0) {
			m->m_pkthdr.ether_vtag = sc_if->msk_vtag;
			m->m_flags |= M_VLANTAG;
		}
		FUNC2(sc_if);
		(*ifp->if_input)(ifp, m);
		FUNC0(sc_if);
	} while (0);

	FUNC3(sc_if->msk_cdata.msk_rx_cons, MSK_RX_RING_CNT);
	FUNC3(sc_if->msk_cdata.msk_rx_prod, MSK_RX_RING_CNT);
}