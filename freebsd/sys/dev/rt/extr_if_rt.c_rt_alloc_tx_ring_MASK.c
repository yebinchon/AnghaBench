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
struct rt_txdesc {int dummy; } ;
struct rt_softc_tx_ring {int qid; scalar_t__ data_next; scalar_t__ data_cur; scalar_t__ data_queued; int /*<<< orphan*/  data_dma_tag; struct rt_softc_tx_data* data; int /*<<< orphan*/  seg0_phys_addr; int /*<<< orphan*/  seg0; int /*<<< orphan*/  seg0_dma_map; int /*<<< orphan*/  seg0_dma_tag; scalar_t__ desc_next; scalar_t__ desc_cur; scalar_t__ desc_queued; int /*<<< orphan*/  desc_phys_addr; int /*<<< orphan*/  desc; int /*<<< orphan*/  desc_dma_map; int /*<<< orphan*/  desc_dma_tag; int /*<<< orphan*/  lock; } ;
struct rt_softc_tx_data {int /*<<< orphan*/  dma_map; } ;
struct rt_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int MJUMPAGESIZE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int RT_SOFTC_MAX_SCATTER ; 
 int RT_SOFTC_TX_RING_DATA_COUNT ; 
 int RT_SOFTC_TX_RING_DESC_COUNT ; 
 int RT_TX_DATA_SEG0_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt_dma_map_addr ; 
 int /*<<< orphan*/  FUNC8 (struct rt_softc*,struct rt_softc_tx_ring*) ; 

__attribute__((used)) static int
FUNC9(struct rt_softc *sc, struct rt_softc_tx_ring *ring, int qid)
{
	struct rt_softc_tx_data *data;
	int error, i;

	FUNC7(&ring->lock, FUNC5(sc->dev), NULL, MTX_DEF);

	error = FUNC0(FUNC4(sc->dev), PAGE_SIZE, 0,
		BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
		RT_SOFTC_TX_RING_DESC_COUNT * sizeof(struct rt_txdesc), 1,
		RT_SOFTC_TX_RING_DESC_COUNT * sizeof(struct rt_txdesc),
		0, NULL, NULL, &ring->desc_dma_tag);
	if (error != 0) {
		FUNC6(sc->dev,
		    "could not create Tx desc DMA tag\n");
		goto fail;
	}

	error = FUNC3(ring->desc_dma_tag, (void **) &ring->desc,
	    BUS_DMA_NOWAIT | BUS_DMA_ZERO, &ring->desc_dma_map);
	if (error != 0)	{
		FUNC6(sc->dev,
		    "could not allocate Tx desc DMA memory\n");
		goto fail;
	}

	error = FUNC2(ring->desc_dma_tag, ring->desc_dma_map,
	    ring->desc,	(RT_SOFTC_TX_RING_DESC_COUNT *
	    sizeof(struct rt_txdesc)), rt_dma_map_addr,
	    &ring->desc_phys_addr, 0);
	if (error != 0) {
		FUNC6(sc->dev, "could not load Tx desc DMA map\n");
		goto fail;
	}

	ring->desc_queued = 0;
	ring->desc_cur = 0;
	ring->desc_next = 0;

	error = FUNC0(FUNC4(sc->dev), PAGE_SIZE, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    RT_SOFTC_TX_RING_DATA_COUNT * RT_TX_DATA_SEG0_SIZE, 1,
	    RT_SOFTC_TX_RING_DATA_COUNT * RT_TX_DATA_SEG0_SIZE,
	    0, NULL, NULL, &ring->seg0_dma_tag);
	if (error != 0) {
		FUNC6(sc->dev,
		    "could not create Tx seg0 DMA tag\n");
		goto fail;
	}

	error = FUNC3(ring->seg0_dma_tag, (void **) &ring->seg0,
	    BUS_DMA_NOWAIT | BUS_DMA_ZERO, &ring->seg0_dma_map);
	if (error != 0) {
		FUNC6(sc->dev,
		    "could not allocate Tx seg0 DMA memory\n");
		goto fail;
	}

	error = FUNC2(ring->seg0_dma_tag, ring->seg0_dma_map,
	    ring->seg0,
	    RT_SOFTC_TX_RING_DATA_COUNT * RT_TX_DATA_SEG0_SIZE,
	    rt_dma_map_addr, &ring->seg0_phys_addr, 0);
	if (error != 0) {
		FUNC6(sc->dev, "could not load Tx seg0 DMA map\n");
		goto fail;
	}

	error = FUNC0(FUNC4(sc->dev), PAGE_SIZE, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    MJUMPAGESIZE, RT_SOFTC_MAX_SCATTER, MJUMPAGESIZE, 0, NULL, NULL,
	    &ring->data_dma_tag);
	if (error != 0) {
		FUNC6(sc->dev,
		    "could not create Tx data DMA tag\n");
		goto fail;
	}

	for (i = 0; i < RT_SOFTC_TX_RING_DATA_COUNT; i++) {
		data = &ring->data[i];

		error = FUNC1(ring->data_dma_tag, 0,
		    &data->dma_map);
		if (error != 0) {
			FUNC6(sc->dev, "could not create Tx data DMA "
			    "map\n");
			goto fail;
		}
	}

	ring->data_queued = 0;
	ring->data_cur = 0;
	ring->data_next = 0;

	ring->qid = qid;
	return (0);

fail:
	FUNC8(sc, ring);
	return (error);
}