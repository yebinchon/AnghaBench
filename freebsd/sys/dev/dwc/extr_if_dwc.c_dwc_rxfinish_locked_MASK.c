#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_len; TYPE_3__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct dwc_softc {int rx_idx; struct ifnet* ifp; TYPE_2__* rxbuf_map; int /*<<< orphan*/  rxbuf_tag; TYPE_1__* rxdesc_ring; } ;
struct TYPE_5__ {struct mbuf* mbuf; int /*<<< orphan*/  map; } ;
struct TYPE_4__ {int tdes0; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int DDESC_RDES0_FL_MASK ; 
 int DDESC_RDES0_FL_SHIFT ; 
 int DDESC_RDES0_OWN ; 
 int /*<<< orphan*/  FUNC0 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_softc*) ; 
 int /*<<< orphan*/  ETHER_CRC_LEN ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC4 (struct dwc_softc*) ; 
 int FUNC5 (struct dwc_softc*,int,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dwc_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC10(struct dwc_softc *sc)
{
	struct ifnet *ifp;
	struct mbuf *m0;
	struct mbuf *m;
	int error, idx, len;
	uint32_t rdes0;

	ifp = sc->ifp;

	for (;;) {
		idx = sc->rx_idx;

		rdes0 = sc->rxdesc_ring[idx].tdes0;
		if ((rdes0 & DDESC_RDES0_OWN) != 0)
			break;

		FUNC2(sc->rxbuf_tag, sc->rxbuf_map[idx].map,
		    BUS_DMASYNC_POSTREAD);
		FUNC3(sc->rxbuf_tag, sc->rxbuf_map[idx].map);

		len = (rdes0 >> DDESC_RDES0_FL_SHIFT) & DDESC_RDES0_FL_MASK;
		if (len != 0) {
			m = sc->rxbuf_map[idx].mbuf;
			m->m_pkthdr.rcvif = ifp;
			m->m_pkthdr.len = len;
			m->m_len = len;
			FUNC6(ifp, IFCOUNTER_IPACKETS, 1);

			/* Remove trailing FCS */
			FUNC7(m, -ETHER_CRC_LEN);

			FUNC1(sc);
			(*ifp->if_input)(ifp, m);
			FUNC0(sc);
		} else {
			/* XXX Zero-length packet ? */
		}

		if ((m0 = FUNC4(sc)) != NULL) {
			if ((error = FUNC5(sc, idx, m0)) != 0) {
				/*
				 * XXX Now what?
				 * We've got a hole in the rx ring.
				 */
			}
		} else
			FUNC6(sc->ifp, IFCOUNTER_IQDROPS, 1);

		sc->rx_idx = FUNC8(sc, sc->rx_idx);
	}
}