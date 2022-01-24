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
struct mgb_ring_data {scalar_t__ ring_bus_addr; scalar_t__ head_wb_bus_addr; int last_tail; void* last_head; } ;
struct mgb_softc {int /*<<< orphan*/  dev; struct mgb_ring_data tx_ring_data; } ;

/* Variables and functions */
 void* FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mgb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMAC_RESET ; 
 int /*<<< orphan*/  DMAC_START ; 
 int /*<<< orphan*/  FCT_ENABLE ; 
 int /*<<< orphan*/  FCT_RESET ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (struct mgb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MGB_DMAC_TX_START ; 
 int MGB_DMA_HEAD_WB_ENBL ; 
 int MGB_DMA_HEAD_WB_LS_ENBL ; 
 int MGB_DMA_RING_LEN_MASK ; 
 int MGB_DMA_RING_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  MGB_FCT_TX_CTL ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int FUNC15 (struct mgb_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct mgb_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct mgb_softc *sc, int channel)
{
	struct mgb_ring_data *rdata;
	int ring_config, error = 0;

	rdata = &sc->tx_ring_data;
	if ((error = FUNC16(sc, MGB_FCT_TX_CTL, channel, FCT_RESET))) {
		FUNC14(sc->dev, "Failed to reset TX FCT.\n");
		goto fail;
	}
	if ((error = FUNC16(sc, MGB_FCT_TX_CTL, channel,
	    FCT_ENABLE))) {
		FUNC14(sc->dev, "Failed to enable TX FCT.\n");
		goto fail;
	}
	if ((error = FUNC15(sc, MGB_DMAC_TX_START, channel,
	    DMAC_RESET))) {
		FUNC14(sc->dev, "Failed to reset TX DMAC.\n");
		goto fail;
	}
	FUNC4(FUNC5(sc, MGB_DMAC_TX_START, channel),
	    ("Trying to init channels in not init state\n"));

	/* write ring address */
	if (rdata->ring_bus_addr == 0) {
		FUNC14(sc->dev, "Invalid ring bus addr.\n");
		goto fail;
	}
	FUNC3(sc, FUNC6(channel),
	    FUNC1(rdata->ring_bus_addr));
	FUNC3(sc, FUNC7(channel),
	    FUNC2(rdata->ring_bus_addr));

	/* write ring size */
	ring_config = FUNC0(sc, FUNC9(channel));
	ring_config &= ~MGB_DMA_RING_LEN_MASK;
	ring_config |= (MGB_DMA_RING_SIZE & MGB_DMA_RING_LEN_MASK);
	FUNC3(sc, FUNC9(channel), ring_config);

	/* Enable interrupt on completion and head pointer writeback */
	ring_config = (MGB_DMA_HEAD_WB_LS_ENBL | MGB_DMA_HEAD_WB_ENBL);
	FUNC3(sc, FUNC8(channel), ring_config);

	/* write head pointer writeback address */
	if (rdata->head_wb_bus_addr == 0) {
		FUNC14(sc->dev, "Invalid head wb bus addr.\n");
		goto fail;
	}
	FUNC3(sc, FUNC11(channel),
	    FUNC1(rdata->head_wb_bus_addr));
	FUNC3(sc, FUNC12(channel),
	    FUNC2(rdata->head_wb_bus_addr));

	rdata->last_head = FUNC0(sc, FUNC10(channel));
	FUNC4(rdata->last_head == 0, ("MGB_DMA_TX_HEAD was not reset.\n"));
	rdata->last_tail = 0;
	FUNC3(sc, FUNC13(channel), rdata->last_tail);

	if ((error = FUNC15(sc, MGB_DMAC_TX_START, channel,
	    DMAC_START)))
		FUNC14(sc->dev, "Failed to start TX DMAC.\n");
fail:
	return error;
}