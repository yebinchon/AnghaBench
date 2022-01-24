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
struct TYPE_5__ {scalar_t__ len; struct ifnet* rcvif; } ;
struct mbuf {scalar_t__ m_len; TYPE_2__ m_pkthdr; } ;
struct ifnet {int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_6__ {int arge_rx_cons; int /*<<< orphan*/  arge_rx_ring_map; int /*<<< orphan*/  arge_rx_ring_tag; int /*<<< orphan*/  arge_rx_tag; struct arge_rxdesc* arge_rxdesc; } ;
struct TYPE_4__ {struct arge_desc* arge_rx_ring; } ;
struct arge_softc {int arge_hw_flags; TYPE_3__ arge_cdata; int /*<<< orphan*/  arge_dev; TYPE_1__ arge_rdata; struct ifnet* arge_ifp; } ;
struct arge_rxdesc {struct mbuf* rx_m; int /*<<< orphan*/  rx_dmamap; } ;
struct arge_desc {int packet_ctrl; scalar_t__ packet_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_DMA_RX_STATUS ; 
 int ARGE_DESC_EMPTY ; 
 int FUNC0 (int) ; 
 int ARGE_HW_FLG_RX_DESC_ALIGN_4BYTE ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct arge_softc*) ; 
 int ARGE_RX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC4 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct arge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  DMA_RX_STATUS_PKT_RECVD ; 
 scalar_t__ ETHER_CRC_LEN ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 scalar_t__ FUNC7 (struct arge_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC12(struct arge_softc *sc)
{
	struct arge_rxdesc	*rxd;
	struct ifnet		*ifp = sc->arge_ifp;
	int			cons, prog, packet_len, i;
	struct arge_desc	*cur_rx;
	struct mbuf		*m;
	int			rx_npkts = 0;

	FUNC3(sc);

	cons = sc->arge_cdata.arge_rx_cons;

	FUNC8(sc->arge_cdata.arge_rx_ring_tag,
	    sc->arge_cdata.arge_rx_ring_map,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

	for (prog = 0; prog < ARGE_RX_RING_COUNT;
	    FUNC1(cons, ARGE_RX_RING_COUNT)) {
		cur_rx = &sc->arge_rdata.arge_rx_ring[cons];
		rxd = &sc->arge_cdata.arge_rxdesc[cons];
		m = rxd->rx_m;

		if ((cur_rx->packet_ctrl & ARGE_DESC_EMPTY) != 0)
		       break;

		FUNC5(sc, AR71XX_DMA_RX_STATUS, DMA_RX_STATUS_PKT_RECVD);

		prog++;

		packet_len = FUNC0(cur_rx->packet_ctrl);
		FUNC8(sc->arge_cdata.arge_rx_tag, rxd->rx_dmamap,
		    BUS_DMASYNC_POSTREAD);
		m = rxd->rx_m;

		/*
		 * If the MAC requires 4 byte alignment then the RX setup
		 * routine will have pre-offset things; so un-offset it here.
		 */
		if (sc->arge_hw_flags & ARGE_HW_FLG_RX_DESC_ALIGN_4BYTE)
			FUNC6(m);

		m->m_pkthdr.rcvif = ifp;
		/* Skip 4 bytes of CRC */
		m->m_pkthdr.len = m->m_len = packet_len - ETHER_CRC_LEN;
		FUNC10(ifp, IFCOUNTER_IPACKETS, 1);
		rx_npkts++;

		FUNC4(sc);
		(*ifp->if_input)(ifp, m);
		FUNC2(sc);
		cur_rx->packet_addr = 0;
	}

	if (prog > 0) {

		i = sc->arge_cdata.arge_rx_cons;
		for (; prog > 0 ; prog--) {
			if (FUNC7(sc, i) != 0) {
				FUNC9(sc->arge_dev,
				    "Failed to allocate buffer\n");
				break;
			}
			FUNC1(i, ARGE_RX_RING_COUNT);
		}

		FUNC8(sc->arge_cdata.arge_rx_ring_tag,
		    sc->arge_cdata.arge_rx_ring_map,
		    BUS_DMASYNC_PREWRITE);

		sc->arge_cdata.arge_rx_cons = cons;
	}

	return (rx_npkts);
}