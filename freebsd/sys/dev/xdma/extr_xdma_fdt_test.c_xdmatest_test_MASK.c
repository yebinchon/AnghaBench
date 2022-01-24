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
struct TYPE_2__ {int src_width; int dst_width; int block_len; int block_num; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; int /*<<< orphan*/  direction; int /*<<< orphan*/  type; } ;
struct xdmatest_softc {int len; int* src; int /*<<< orphan*/ * xchan; int /*<<< orphan*/  dev; int /*<<< orphan*/  dst_phys; int /*<<< orphan*/  src_phys; TYPE_1__ req; scalar_t__* dst; int /*<<< orphan*/  dst_dma_map; int /*<<< orphan*/  dst_dma_tag; int /*<<< orphan*/  src_dma_map; int /*<<< orphan*/  src_dma_tag; int /*<<< orphan*/  ih; int /*<<< orphan*/ * xdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  XDMA_MEM_TO_MEM ; 
 int /*<<< orphan*/  XR_TYPE_PHYS_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct xdmatest_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xdmatest_intr ; 

__attribute__((used)) static int
FUNC7(struct xdmatest_softc *sc)
{
	int err;
	int i;

	/* Get xDMA controller. */
	sc->xdma = FUNC4(sc->dev, "test");
	if (sc->xdma == NULL) {
		FUNC1(sc->dev, "Can't find xDMA controller.\n");
		return (-1);
	}

	/* Alloc xDMA virtual channel. */
	sc->xchan = FUNC3(sc->xdma);
	if (sc->xchan == NULL) {
		FUNC1(sc->dev, "Can't alloc virtual DMA channel.\n");
		return (-1);
	}

	/* Setup callback. */
	err = FUNC6(sc->xchan, xdmatest_intr, sc, &sc->ih);
	if (err) {
		FUNC1(sc->dev, "Can't setup xDMA interrupt handler.\n");
		return (-1);
	}

	/* We are going to fill memory. */
	FUNC0(sc->src_dma_tag, sc->src_dma_map, BUS_DMASYNC_PREWRITE);
	FUNC0(sc->dst_dma_tag, sc->dst_dma_map, BUS_DMASYNC_PREWRITE);

	/* Fill memory. */
	for (i = 0; i < sc->len; i++) {
		sc->src[i] = (i & 0xff);
		sc->dst[i] = 0;
	}

	sc->req.type = XR_TYPE_PHYS_ADDR;
	sc->req.direction = XDMA_MEM_TO_MEM;
	sc->req.src_addr = sc->src_phys;
	sc->req.dst_addr = sc->dst_phys;
	sc->req.src_width = 4;
	sc->req.dst_width = 4;
	sc->req.block_len = sc->len;
	sc->req.block_num = 1;

	err = FUNC5(sc->xchan, sc->src_phys, sc->dst_phys, sc->len);
	if (err != 0) {
		FUNC1(sc->dev, "Can't configure virtual channel.\n");
		return (-1);
	}

	/* Start operation. */
	FUNC2(sc->xchan);

	return (0);
}