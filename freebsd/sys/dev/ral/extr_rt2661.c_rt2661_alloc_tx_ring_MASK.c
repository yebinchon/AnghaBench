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
struct rt2661_tx_ring {int count; TYPE_1__* data; int /*<<< orphan*/  data_dmat; int /*<<< orphan*/  physaddr; int /*<<< orphan*/  desc; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; scalar_t__ stat; scalar_t__ next; scalar_t__ cur; scalar_t__ queued; } ;
struct rt2661_tx_data {int dummy; } ;
struct rt2661_softc {int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENOMEM ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int RT2661_MAX_SCATTER ; 
 int RT2661_TX_DESC_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rt2661_dma_map_addr ; 
 int /*<<< orphan*/  FUNC7 (struct rt2661_softc*,struct rt2661_tx_ring*) ; 

__attribute__((used)) static int
FUNC8(struct rt2661_softc *sc, struct rt2661_tx_ring *ring,
    int count)
{
	int i, error;

	ring->count = count;
	ring->queued = 0;
	ring->cur = ring->next = ring->stat = 0;

	error = FUNC0(FUNC4(sc->sc_dev), 4, 0, 
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    count * RT2661_TX_DESC_SIZE, 1, count * RT2661_TX_DESC_SIZE,
	    0, NULL, NULL, &ring->desc_dmat);
	if (error != 0) {
		FUNC5(sc->sc_dev, "could not create desc DMA tag\n");
		goto fail;
	}

	error = FUNC3(ring->desc_dmat, (void **)&ring->desc,
	    BUS_DMA_NOWAIT | BUS_DMA_ZERO, &ring->desc_map);
	if (error != 0) {
		FUNC5(sc->sc_dev, "could not allocate DMA memory\n");
		goto fail;
	}

	error = FUNC2(ring->desc_dmat, ring->desc_map, ring->desc,
	    count * RT2661_TX_DESC_SIZE, rt2661_dma_map_addr, &ring->physaddr,
	    0);
	if (error != 0) {
		FUNC5(sc->sc_dev, "could not load desc DMA map\n");
		goto fail;
	}

	ring->data = FUNC6(count * sizeof (struct rt2661_tx_data), M_DEVBUF,
	    M_NOWAIT | M_ZERO);
	if (ring->data == NULL) {
		FUNC5(sc->sc_dev, "could not allocate soft data\n");
		error = ENOMEM;
		goto fail;
	}

	error = FUNC0(FUNC4(sc->sc_dev), 1, 0, 
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL, MCLBYTES,
	    RT2661_MAX_SCATTER, MCLBYTES, 0, NULL, NULL, &ring->data_dmat);
	if (error != 0) {
		FUNC5(sc->sc_dev, "could not create data DMA tag\n");
		goto fail;
	}

	for (i = 0; i < count; i++) {
		error = FUNC1(ring->data_dmat, 0,
		    &ring->data[i].map);
		if (error != 0) {
			FUNC5(sc->sc_dev, "could not create DMA map\n");
			goto fail;
		}
	}

	return 0;

fail:	FUNC7(sc, ring);
	return error;
}