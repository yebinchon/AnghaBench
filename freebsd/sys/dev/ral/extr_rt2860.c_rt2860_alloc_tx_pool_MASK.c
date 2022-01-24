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
struct rt2860_txwi {int dummy; } ;
struct rt2860_tx_data {int paddr; struct rt2860_txwi* txwi; int /*<<< orphan*/  map; } ;
struct rt2860_softc {int /*<<< orphan*/  data_pool; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  txwi_dmat; struct rt2860_tx_data* data; scalar_t__ txwi_vaddr; int /*<<< orphan*/  txwi_map; } ;
typedef  scalar_t__ caddr_t ;
typedef  int bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int RT2860_TXWI_DMASZ ; 
 int RT2860_TX_POOL_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rt2860_tx_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  rt2860_dma_map_addr ; 
 int /*<<< orphan*/  FUNC9 (struct rt2860_softc*) ; 

int
FUNC10(struct rt2860_softc *sc)
{
	caddr_t vaddr;
	bus_addr_t paddr;
	int i, size, error;

	size = RT2860_TX_POOL_COUNT * RT2860_TXWI_DMASZ;

	/* init data_pool early in case of failure.. */
	FUNC0(&sc->data_pool);

	error = FUNC2(FUNC7(sc->sc_dev), 1, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    size, 1, size, 0, NULL, NULL, &sc->txwi_dmat);
	if (error != 0) {
		FUNC8(sc->sc_dev, "could not create txwi DMA tag\n");
		goto fail;
	}

	error = FUNC6(sc->txwi_dmat, (void **)&sc->txwi_vaddr,
	    BUS_DMA_NOWAIT | BUS_DMA_ZERO, &sc->txwi_map);
	if (error != 0) {
		FUNC8(sc->sc_dev, "could not allocate DMA memory\n");
		goto fail;
	}

	error = FUNC4(sc->txwi_dmat, sc->txwi_map,
	    sc->txwi_vaddr, size, rt2860_dma_map_addr, &paddr, 0);
	if (error != 0) {
		FUNC8(sc->sc_dev, "could not load txwi DMA map\n");
		goto fail;
	}

	FUNC5(sc->txwi_dmat, sc->txwi_map, BUS_DMASYNC_PREWRITE);

	vaddr = sc->txwi_vaddr;
	for (i = 0; i < RT2860_TX_POOL_COUNT; i++) {
		struct rt2860_tx_data *data = &sc->data[i];

		error = FUNC3(sc->txwi_dmat, 0, &data->map);
		if (error != 0) {
			FUNC8(sc->sc_dev, "could not create DMA map\n");
			goto fail;
		}
		data->txwi = (struct rt2860_txwi *)vaddr;
		data->paddr = paddr;
		vaddr += RT2860_TXWI_DMASZ;
		paddr += RT2860_TXWI_DMASZ;

		FUNC1(&sc->data_pool, data, next);
	}

	return 0;

fail:	FUNC9(sc);
	return error;
}