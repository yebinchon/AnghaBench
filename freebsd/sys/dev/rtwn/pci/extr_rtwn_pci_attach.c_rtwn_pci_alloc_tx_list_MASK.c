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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct rtwn_tx_ring {int /*<<< orphan*/  data_dmat; scalar_t__ paddr; scalar_t__ desc; struct rtwn_tx_data* tx_data; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; } ;
struct rtwn_tx_data {int /*<<< orphan*/ * ni; int /*<<< orphan*/ * m; int /*<<< orphan*/  map; } ;
struct rtwn_softc {int txdesc_len; int /*<<< orphan*/  sc_dev; } ;
struct rtwn_pci_softc {struct rtwn_tx_ring* tx_ring; } ;
typedef  int bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int MJUMPAGESIZE ; 
 int PAGE_SIZE ; 
 struct rtwn_pci_softc* FUNC0 (struct rtwn_softc*) ; 
 int RTWN_PCI_TX_LIST_COUNT ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rtwn_pci_dma_map_addr ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtwn_pci_softc*,void*,scalar_t__) ; 

__attribute__((used)) static int
FUNC10(struct rtwn_softc *sc, int qid)
{
	struct rtwn_pci_softc *pc = FUNC0(sc);
	struct rtwn_tx_ring *tx_ring = &pc->tx_ring[qid];
	bus_size_t size;
	int i, error;

	size = sc->txdesc_len * RTWN_PCI_TX_LIST_COUNT;
	error = FUNC1(FUNC6(sc->sc_dev), PAGE_SIZE, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    size, 1, size, 0, NULL, NULL, &tx_ring->desc_dmat);
	if (error != 0) {
		FUNC7(sc->sc_dev, "could not create tx ring DMA tag\n");
		goto fail;
	}

	error = FUNC5(tx_ring->desc_dmat, &tx_ring->desc,
	    BUS_DMA_NOWAIT | BUS_DMA_ZERO, &tx_ring->desc_map);
	if (error != 0) {
		FUNC7(sc->sc_dev, "can't map tx ring DMA memory\n");
		goto fail;
	}
	error = FUNC3(tx_ring->desc_dmat, tx_ring->desc_map,
	    tx_ring->desc, size, rtwn_pci_dma_map_addr, &tx_ring->paddr,
	    BUS_DMA_NOWAIT);
	if (error != 0) {
		FUNC7(sc->sc_dev, "could not load desc DMA map\n");
		goto fail;
	}
	FUNC4(tx_ring->desc_dmat, tx_ring->desc_map,
	    BUS_DMASYNC_PREWRITE);

	error = FUNC1(FUNC6(sc->sc_dev), 1, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    MJUMPAGESIZE, 1, MJUMPAGESIZE, 0, NULL, NULL, &tx_ring->data_dmat);
	if (error != 0) {
		FUNC7(sc->sc_dev, "could not create tx buf DMA tag\n");
		goto fail;
	}

	for (i = 0; i < RTWN_PCI_TX_LIST_COUNT; i++) {
		struct rtwn_tx_data *tx_data = &tx_ring->tx_data[i];
		void *tx_desc = (uint8_t *)tx_ring->desc + sc->txdesc_len * i;
		uint32_t next_desc_addr = tx_ring->paddr +
		    sc->txdesc_len * ((i + 1) % RTWN_PCI_TX_LIST_COUNT);

		FUNC9(pc, tx_desc, next_desc_addr);

		error = FUNC2(tx_ring->data_dmat, 0, &tx_data->map);
		if (error != 0) {
			FUNC7(sc->sc_dev,
			    "could not create tx buf DMA map\n");
			return (error);
		}
		tx_data->m = NULL;
		tx_data->ni = NULL;
	}
	return (0);

fail:
	FUNC8(sc, qid);
	return (error);
}