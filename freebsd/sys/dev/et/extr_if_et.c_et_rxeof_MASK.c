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
struct ifnet {int if_drv_flags; int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct et_rxstat_ring {int rsr_index; int rsr_wrap; int /*<<< orphan*/  rsr_dmap; int /*<<< orphan*/  rsr_dtag; struct et_rxstat* rsr_stat; } ;
struct et_rxstatus_data {int /*<<< orphan*/  rxsd_dmap; int /*<<< orphan*/  rxsd_dtag; TYPE_1__* rxsd_status; } ;
struct et_softc {int sc_flags; struct et_rxdesc_ring* sc_rx_ring; struct et_rxbuf_data* sc_rx_data; struct et_rxstat_ring sc_rxstat_ring; struct et_rxstatus_data sc_rx_status; struct ifnet* ifp; } ;
struct et_rxstat {int /*<<< orphan*/  rxst_info2; int /*<<< orphan*/  rxst_info1; } ;
struct et_rxdesc_ring {int rr_index; int rr_wrap; int /*<<< orphan*/  rr_posreg; } ;
struct et_rxbuf_data {scalar_t__ (* rbd_newbuf ) (struct et_rxbuf_data*,int) ;int /*<<< orphan*/  (* rbd_discard ) (struct et_rxbuf_data*,int) ;TYPE_2__* rbd_buf; } ;
struct TYPE_5__ {struct mbuf* rb_mbuf; } ;
struct TYPE_4__ {int /*<<< orphan*/  rxs_stat_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  FUNC0 (struct et_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ETHER_CRC_LEN ; 
 int ETHER_HDR_LEN ; 
 int ET_FLAG_TXRX_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (struct et_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct et_softc*) ; 
 int /*<<< orphan*/  ET_RXSTAT_POS ; 
 int ET_RXSTAT_POS_INDEX_MASK ; 
 int ET_RXSTAT_POS_WRAP ; 
 int ET_RXST_INFO1_OK ; 
 int ET_RXST_INFO2_BUFIDX_MASK ; 
 int ET_RXST_INFO2_BUFIDX_SHIFT ; 
 int ET_RXST_INFO2_LEN_MASK ; 
 int ET_RXST_INFO2_LEN_SHIFT ; 
 int ET_RXST_INFO2_RINGIDX_MASK ; 
 int ET_RXST_INFO2_RINGIDX_SHIFT ; 
 int ET_RXS_STATRING_INDEX_MASK ; 
 int ET_RXS_STATRING_INDEX_SHIFT ; 
 int ET_RXS_STATRING_WRAP ; 
 int ET_RX_NDESC ; 
 int ET_RX_NRING ; 
 int ET_RX_NSTAT ; 
 int ET_RX_RING_POS_INDEX_MASK ; 
 int ET_RX_RING_POS_WRAP ; 
 int /*<<< orphan*/  FUNC3 (struct et_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,char*,int,...) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct et_rxbuf_data*,int) ; 
 scalar_t__ FUNC11 (struct et_rxbuf_data*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct et_rxbuf_data*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC14(struct et_softc *sc)
{
	struct et_rxstatus_data *rxsd;
	struct et_rxstat_ring *rxst_ring;
	struct et_rxbuf_data *rbd;
	struct et_rxdesc_ring *rx_ring;
	struct et_rxstat *st;
	struct ifnet *ifp;
	struct mbuf *m;
	uint32_t rxstat_pos, rxring_pos;
	uint32_t rxst_info1, rxst_info2, rxs_stat_ring;
	int buflen, buf_idx, npost[2], ring_idx;
	int rxst_index, rxst_wrap;

	FUNC2(sc);

	ifp = sc->ifp;
	rxsd = &sc->sc_rx_status;
	rxst_ring = &sc->sc_rxstat_ring;

	if ((sc->sc_flags & ET_FLAG_TXRX_ENABLED) == 0)
		return;

	FUNC5(rxsd->rxsd_dtag, rxsd->rxsd_dmap,
	    BUS_DMASYNC_POSTREAD);
	FUNC5(rxst_ring->rsr_dtag, rxst_ring->rsr_dmap,
	    BUS_DMASYNC_POSTREAD);

	npost[0] = npost[1] = 0;
	rxs_stat_ring = FUNC8(rxsd->rxsd_status->rxs_stat_ring);
	rxst_wrap = (rxs_stat_ring & ET_RXS_STATRING_WRAP) ? 1 : 0;
	rxst_index = (rxs_stat_ring & ET_RXS_STATRING_INDEX_MASK) >>
	    ET_RXS_STATRING_INDEX_SHIFT;

	while (rxst_index != rxst_ring->rsr_index ||
	    rxst_wrap != rxst_ring->rsr_wrap) {
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
			break;

		FUNC4(rxst_ring->rsr_index < ET_RX_NSTAT);
		st = &rxst_ring->rsr_stat[rxst_ring->rsr_index];
		rxst_info1 = FUNC8(st->rxst_info1);
		rxst_info2 = FUNC8(st->rxst_info2);
		buflen = (rxst_info2 & ET_RXST_INFO2_LEN_MASK) >>
		    ET_RXST_INFO2_LEN_SHIFT;
		buf_idx = (rxst_info2 & ET_RXST_INFO2_BUFIDX_MASK) >>
		    ET_RXST_INFO2_BUFIDX_SHIFT;
		ring_idx = (rxst_info2 & ET_RXST_INFO2_RINGIDX_MASK) >>
		    ET_RXST_INFO2_RINGIDX_SHIFT;

		if (++rxst_ring->rsr_index == ET_RX_NSTAT) {
			rxst_ring->rsr_index = 0;
			rxst_ring->rsr_wrap ^= 1;
		}
		rxstat_pos = rxst_ring->rsr_index & ET_RXSTAT_POS_INDEX_MASK;
		if (rxst_ring->rsr_wrap)
			rxstat_pos |= ET_RXSTAT_POS_WRAP;
		FUNC0(sc, ET_RXSTAT_POS, rxstat_pos);

		if (ring_idx >= ET_RX_NRING) {
			FUNC6(ifp, IFCOUNTER_IERRORS, 1);
			FUNC7(ifp, "invalid ring index %d\n", ring_idx);
			continue;
		}
		if (buf_idx >= ET_RX_NDESC) {
			FUNC6(ifp, IFCOUNTER_IERRORS, 1);
			FUNC7(ifp, "invalid buf index %d\n", buf_idx);
			continue;
		}

		rbd = &sc->sc_rx_data[ring_idx];
		m = rbd->rbd_buf[buf_idx].rb_mbuf;
		if ((rxst_info1 & ET_RXST_INFO1_OK) == 0){
			/* Discard errored frame. */
			rbd->rbd_discard(rbd, buf_idx);
		} else if (rbd->rbd_newbuf(rbd, buf_idx) != 0) {
			/* No available mbufs, discard it. */
			FUNC6(ifp, IFCOUNTER_IQDROPS, 1);
			rbd->rbd_discard(rbd, buf_idx);
		} else {
			buflen -= ETHER_CRC_LEN;
			if (buflen < ETHER_HDR_LEN) {
				FUNC9(m);
				FUNC6(ifp, IFCOUNTER_IERRORS, 1);
			} else {
				m->m_pkthdr.len = m->m_len = buflen;
				m->m_pkthdr.rcvif = ifp;
				FUNC3(sc);
				ifp->if_input(ifp, m);
				FUNC1(sc);
			}
		}

		rx_ring = &sc->sc_rx_ring[ring_idx];
		if (buf_idx != rx_ring->rr_index) {
			FUNC7(ifp,
			    "WARNING!! ring %d, buf_idx %d, rr_idx %d\n",
			    ring_idx, buf_idx, rx_ring->rr_index);
		}

		FUNC4(rx_ring->rr_index < ET_RX_NDESC);
		if (++rx_ring->rr_index == ET_RX_NDESC) {
			rx_ring->rr_index = 0;
			rx_ring->rr_wrap ^= 1;
		}
		rxring_pos = rx_ring->rr_index & ET_RX_RING_POS_INDEX_MASK;
		if (rx_ring->rr_wrap)
			rxring_pos |= ET_RX_RING_POS_WRAP;
		FUNC0(sc, rx_ring->rr_posreg, rxring_pos);
	}

	FUNC5(rxsd->rxsd_dtag, rxsd->rxsd_dmap,
	    BUS_DMASYNC_PREREAD);
	FUNC5(rxst_ring->rsr_dtag, rxst_ring->rsr_dmap,
	    BUS_DMASYNC_PREREAD);
}