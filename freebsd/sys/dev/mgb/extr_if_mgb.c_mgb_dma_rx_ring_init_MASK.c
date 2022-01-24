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
struct mgb_ring_data {scalar_t__ ring_bus_addr; scalar_t__ head_wb_bus_addr; void* last_head; } ;
struct mgb_softc {int /*<<< orphan*/  dev; struct mgb_ring_data rx_ring_data; } ;

/* Variables and functions */
 void* FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mgb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMAC_RESET ; 
 int /*<<< orphan*/  DMAC_START ; 
 int /*<<< orphan*/  FCT_ENABLE ; 
 int /*<<< orphan*/  FCT_RESET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MGB_DMAC_RX_START ; 
 int /*<<< orphan*/  FUNC5 (struct mgb_softc*,int /*<<< orphan*/ ,int) ; 
 int MGB_DMA_HEAD_WB_ENBL ; 
 int MGB_DMA_RING_LEN_MASK ; 
 int MGB_DMA_RING_PAD_0 ; 
 int MGB_DMA_RING_PAD_MASK ; 
 int MGB_DMA_RING_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  MGB_FCT_RX_CTL ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct mgb_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mgb_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct mgb_softc *sc, int channel)
{
	struct mgb_ring_data *rdata;
	int ring_config, error = 0;

	rdata = &sc->rx_ring_data;
	FUNC14(sc, MGB_DMAC_RX_START, 0, DMAC_RESET);
	FUNC4(FUNC5(sc, MGB_DMAC_RX_START, channel),
	    ("Trying to init channels when not in init state\n"));

	/* write ring address */
	if (rdata->ring_bus_addr == 0) {
		FUNC13(sc->dev, "Invalid ring bus addr.\n");
		goto fail;
	}

	FUNC3(sc, FUNC6(channel),
	    FUNC1(rdata->ring_bus_addr));
	FUNC3(sc, FUNC7(channel),
	    FUNC2(rdata->ring_bus_addr));

	/* write head pointer writeback address */
	if (rdata->head_wb_bus_addr == 0) {
		FUNC13(sc->dev, "Invalid head wb bus addr.\n");
		goto fail;
	}
	FUNC3(sc, FUNC11(channel),
	    FUNC1(rdata->head_wb_bus_addr));
	FUNC3(sc, FUNC12(channel),
	    FUNC2(rdata->head_wb_bus_addr));

	/* Enable head pointer writeback */
	FUNC3(sc, FUNC8(channel), MGB_DMA_HEAD_WB_ENBL);

	ring_config = FUNC0(sc, FUNC9(channel));
	/*  ring size */
	ring_config &= ~MGB_DMA_RING_LEN_MASK;
	ring_config |= (MGB_DMA_RING_SIZE & MGB_DMA_RING_LEN_MASK);
	/* packet padding  (PAD_2 is better for IP header alignment ...) */
	ring_config &= ~MGB_DMA_RING_PAD_MASK;
	ring_config |= (MGB_DMA_RING_PAD_0 & MGB_DMA_RING_PAD_MASK);

	FUNC3(sc, FUNC9(channel), ring_config);

	rdata->last_head = FUNC0(sc, FUNC10(channel));

	FUNC15(sc, MGB_FCT_RX_CTL, channel, FCT_RESET);
	if (error != 0) {
		FUNC13(sc->dev, "Failed to reset RX FCT.\n");
		goto fail;
	}
	FUNC15(sc, MGB_FCT_RX_CTL, channel, FCT_ENABLE);
	if (error != 0) {
		FUNC13(sc->dev, "Failed to enable RX FCT.\n");
		goto fail;
	}
	FUNC14(sc, MGB_DMAC_RX_START, channel, DMAC_START);
	if (error != 0)
		FUNC13(sc->dev, "Failed to start RX DMAC.\n");
fail:
	return (error);
}