#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rtwn_softc {int sc_flags; } ;
struct rtwn_rx_stat_pci {int /*<<< orphan*/  rxdw0; } ;
struct rtwn_rx_ring {size_t cur; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; struct rtwn_rx_data* rx_data; struct rtwn_rx_stat_pci* desc; } ;
struct rtwn_rx_data {int /*<<< orphan*/  paddr; } ;
struct rtwn_pci_softc {int /*<<< orphan*/  pc_rx_buf; struct rtwn_rx_ring rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MJUMPAGESIZE ; 
 int RTWN_PCI_RX_LIST_COUNT ; 
 struct rtwn_pci_softc* FUNC1 (struct rtwn_softc*) ; 
 int RTWN_RUNNING ; 
 int RTWN_RXDW0_OWN ; 
#define  RTWN_RX_DATA 130 
#define  RTWN_RX_OTHER 129 
#define  RTWN_RX_TX_REPORT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_pci_softc*,int) ; 
 int FUNC6 (struct rtwn_pci_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_pci_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_pci_softc*,struct rtwn_rx_stat_pci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct rtwn_pci_softc*,int) ; 

__attribute__((used)) static void
FUNC10(struct rtwn_softc *sc)
{
	struct rtwn_pci_softc *pc = FUNC1(sc);
	struct rtwn_rx_ring *ring = &pc->rx_ring;
	struct rtwn_rx_stat_pci *rx_desc;
	struct rtwn_rx_data *rx_data;
	int len;

	FUNC2(ring->desc_dmat, ring->desc_map, BUS_DMASYNC_POSTREAD);

	for (;;) {
		rx_desc = &ring->desc[ring->cur];
		rx_data = &ring->rx_data[ring->cur];

		if (FUNC3(rx_desc->rxdw0) & RTWN_RXDW0_OWN)
			break;

		len = FUNC6(pc);

		switch (FUNC4(sc, pc->pc_rx_buf, len)) {
		case RTWN_RX_DATA:
			FUNC7(pc);
			break;
		case RTWN_RX_TX_REPORT:
			FUNC9(pc, len);
			break;
		case RTWN_RX_OTHER:
			FUNC5(pc, len);
			break;
		default:
			/* NOTREACHED */
			FUNC0(0, ("unknown Rx classification code"));
			break;
		}

		/* Update / reset RX descriptor (and set OWN bit). */
		FUNC8(pc, rx_desc, rx_data->paddr,
		    MJUMPAGESIZE, ring->cur);

		if (!(sc->sc_flags & RTWN_RUNNING))
			return;

		/* NB: device can reuse current descriptor. */
		FUNC2(ring->desc_dmat, ring->desc_map,
		    BUS_DMASYNC_POSTREAD);

		if (FUNC3(rx_desc->rxdw0) & RTWN_RXDW0_OWN)
			ring->cur = (ring->cur + 1) % RTWN_PCI_RX_LIST_COUNT;
	}
}