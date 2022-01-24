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
struct msk_rxdesc {TYPE_3__* rx_le; int /*<<< orphan*/ * rx_m; } ;
struct msk_rx_desc {int dummy; } ;
struct msk_ring_data {TYPE_3__* msk_jumbo_rx_ring; } ;
struct TYPE_5__ {int msk_rx_cons; int msk_rx_prod; int /*<<< orphan*/  msk_jumbo_rx_ring_map; int /*<<< orphan*/  msk_jumbo_rx_ring_tag; struct msk_rxdesc* msk_jumbo_rxdesc; int /*<<< orphan*/  msk_rx_putwm; } ;
struct msk_if_softc {int msk_flags; TYPE_2__ msk_cdata; int /*<<< orphan*/  msk_rxq; int /*<<< orphan*/  msk_softc; TYPE_1__* msk_ifp; struct msk_ring_data msk_rdata; } ;
struct TYPE_6__ {void* msk_control; void* msk_addr; } ;
struct TYPE_4__ {int if_capenable; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ENOBUFS ; 
 int ETHER_HDR_LEN ; 
 int HW_OWNER ; 
 int IFCAP_RXCSUM ; 
 int MSK_FLAG_DESCV2 ; 
 int /*<<< orphan*/  FUNC1 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int MSK_JUMBO_RX_RING_CNT ; 
 int /*<<< orphan*/  MSK_PUT_WM ; 
 int MSK_RX_BUF_CNT ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int OP_TCPSTART ; 
 int /*<<< orphan*/  PREF_UNIT_PUT_IDX_REG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 void* FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct msk_if_softc*,int) ; 
 scalar_t__ FUNC9 (struct msk_if_softc*,int) ; 

__attribute__((used)) static int
FUNC10(struct msk_if_softc *sc_if)
{
	struct msk_ring_data *rd;
	struct msk_rxdesc *rxd;
	int i, nbuf, prod;

	FUNC1(sc_if);

	sc_if->msk_cdata.msk_rx_cons = 0;
	sc_if->msk_cdata.msk_rx_prod = 0;
	sc_if->msk_cdata.msk_rx_putwm = MSK_PUT_WM;

	rd = &sc_if->msk_rdata;
	FUNC6(rd->msk_jumbo_rx_ring,
	    sizeof(struct msk_rx_desc) * MSK_JUMBO_RX_RING_CNT);
	for (i = prod = 0; i < MSK_JUMBO_RX_RING_CNT; i++) {
		rxd = &sc_if->msk_cdata.msk_jumbo_rxdesc[prod];
		rxd->rx_m = NULL;
		rxd->rx_le = &rd->msk_jumbo_rx_ring[prod];
		FUNC2(prod, MSK_JUMBO_RX_RING_CNT);
	}
	nbuf = MSK_RX_BUF_CNT;
	prod = 0;
	/* Have controller know how to compute Rx checksum. */
	if ((sc_if->msk_flags & MSK_FLAG_DESCV2) == 0 &&
	    (sc_if->msk_ifp->if_capenable & IFCAP_RXCSUM) != 0) {
#ifdef MSK_64BIT_DMA
		rxd = &sc_if->msk_cdata.msk_jumbo_rxdesc[prod];
		rxd->rx_m = NULL;
		rxd->rx_le = &rd->msk_jumbo_rx_ring[prod];
		rxd->rx_le->msk_addr = htole32(ETHER_HDR_LEN << 16 |
		    ETHER_HDR_LEN);
		rxd->rx_le->msk_control = htole32(OP_TCPSTART | HW_OWNER);
		MSK_INC(prod, MSK_JUMBO_RX_RING_CNT);
		MSK_INC(sc_if->msk_cdata.msk_rx_cons, MSK_JUMBO_RX_RING_CNT);
#endif
		rxd = &sc_if->msk_cdata.msk_jumbo_rxdesc[prod];
		rxd->rx_m = NULL;
		rxd->rx_le = &rd->msk_jumbo_rx_ring[prod];
		rxd->rx_le->msk_addr = FUNC7(ETHER_HDR_LEN << 16 |
		    ETHER_HDR_LEN);
		rxd->rx_le->msk_control = FUNC7(OP_TCPSTART | HW_OWNER);
		FUNC2(prod, MSK_JUMBO_RX_RING_CNT);
		FUNC2(sc_if->msk_cdata.msk_rx_cons, MSK_JUMBO_RX_RING_CNT);
		nbuf--;
	}
	for (i = 0; i < nbuf; i++) {
		if (FUNC8(sc_if, prod) != 0)
			return (ENOBUFS);
		FUNC3(prod, MSK_JUMBO_RX_RING_CNT);
	}

	FUNC5(sc_if->msk_cdata.msk_jumbo_rx_ring_tag,
	    sc_if->msk_cdata.msk_jumbo_rx_ring_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	/* Update prefetch unit. */
	sc_if->msk_cdata.msk_rx_prod = prod;
	FUNC0(sc_if->msk_softc,
	    FUNC4(sc_if->msk_rxq, PREF_UNIT_PUT_IDX_REG),
	    (sc_if->msk_cdata.msk_rx_prod + MSK_JUMBO_RX_RING_CNT - 1) %
	    MSK_JUMBO_RX_RING_CNT);
	if (FUNC9(sc_if, 1) != 0)
		return (ENOBUFS);
	return (0);
}