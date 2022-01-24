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
struct rt2860_txd {int dummy; } ;
struct rt2860_tx_ring {int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; int /*<<< orphan*/  paddr; int /*<<< orphan*/  txd; } ;
struct rt2860_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int RT2860_TX_RING_COUNT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rt2860_dma_map_addr ; 
 int /*<<< orphan*/  FUNC6 (struct rt2860_softc*,struct rt2860_tx_ring*) ; 

__attribute__((used)) static int
FUNC7(struct rt2860_softc *sc, struct rt2860_tx_ring *ring)
{
	int size, error;

	size = RT2860_TX_RING_COUNT * sizeof (struct rt2860_txd);

	error = FUNC0(FUNC4(sc->sc_dev), 16, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    size, 1, size, 0, NULL, NULL, &ring->desc_dmat);
	if (error != 0) {
		FUNC5(sc->sc_dev, "could not create desc DMA tag\n");
		goto fail;
	}

	error = FUNC3(ring->desc_dmat, (void **)&ring->txd,
	    BUS_DMA_NOWAIT | BUS_DMA_ZERO, &ring->desc_map);
	if (error != 0) {
		FUNC5(sc->sc_dev, "could not allocate DMA memory\n");
		goto fail;
	}

	error = FUNC1(ring->desc_dmat, ring->desc_map, ring->txd,
	    size, rt2860_dma_map_addr, &ring->paddr, 0);
	if (error != 0) {
		FUNC5(sc->sc_dev, "could not load desc DMA map\n");
		goto fail;
	}

	FUNC2(ring->desc_dmat, ring->desc_map, BUS_DMASYNC_PREWRITE);

	return 0;

fail:	FUNC6(sc, ring);
	return error;
}