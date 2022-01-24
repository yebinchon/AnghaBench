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
struct vge_txdesc {int /*<<< orphan*/ * tx_m; int /*<<< orphan*/  tx_dmamap; } ;
struct TYPE_2__ {int /*<<< orphan*/  vge_tx_tag; struct vge_txdesc* vge_txdesc; int /*<<< orphan*/  vge_rx_tag; struct vge_rxdesc* vge_rxdesc; } ;
struct vge_softc {TYPE_1__ vge_cdata; struct ifnet* vge_ifp; } ;
struct vge_rxdesc {int /*<<< orphan*/ * rx_m; int /*<<< orphan*/  rx_dmamap; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct vge_softc*) ; 
 int VGE_RX_DESC_CNT ; 
 int VGE_TX_DESC_CNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct vge_softc *sc)
{
	struct vge_txdesc *txd;
	struct vge_rxdesc *rxd;
	struct ifnet *ifp;
	int i;

	FUNC0(sc);

	ifp = sc->vge_ifp;
	/*
	 * Free RX and TX mbufs still in the queues.
	 */
	for (i = 0; i < VGE_RX_DESC_CNT; i++) {
		rxd = &sc->vge_cdata.vge_rxdesc[i];
		if (rxd->rx_m != NULL) {
			FUNC1(sc->vge_cdata.vge_rx_tag,
			    rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
			FUNC2(sc->vge_cdata.vge_rx_tag,
			    rxd->rx_dmamap);
			FUNC4(rxd->rx_m);
			rxd->rx_m = NULL;
		}
	}

	for (i = 0; i < VGE_TX_DESC_CNT; i++) {
		txd = &sc->vge_cdata.vge_txdesc[i];
		if (txd->tx_m != NULL) {
			FUNC1(sc->vge_cdata.vge_tx_tag,
			    txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
			FUNC2(sc->vge_cdata.vge_tx_tag,
			    txd->tx_dmamap);
			FUNC4(txd->tx_m);
			txd->tx_m = NULL;
			FUNC3(ifp, IFCOUNTER_OERRORS, 1);
		}
	}
}