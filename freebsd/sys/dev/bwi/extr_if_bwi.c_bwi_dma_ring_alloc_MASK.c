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
typedef  int /*<<< orphan*/  uint32_t ;
struct bwi_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwi_ring_data {int /*<<< orphan*/  rdata_txrx_ctrl; int /*<<< orphan*/ * rdata_desc; int /*<<< orphan*/  rdata_dmap; int /*<<< orphan*/  rdata_paddr; } ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bwi_dma_ring_addr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(struct bwi_softc *sc, bus_dma_tag_t dtag,
		   struct bwi_ring_data *rd, bus_size_t size,
		   uint32_t txrx_ctrl)
{
	int error;

	error = FUNC1(dtag, &rd->rdata_desc,
				 BUS_DMA_WAITOK | BUS_DMA_ZERO,
				 &rd->rdata_dmap);
	if (error) {
		FUNC3(sc->sc_dev, "can't allocate DMA mem\n");
		return error;
	}

	error = FUNC0(dtag, rd->rdata_dmap, rd->rdata_desc, size,
				bwi_dma_ring_addr, &rd->rdata_paddr,
				BUS_DMA_NOWAIT);
	if (error) {
		FUNC3(sc->sc_dev, "can't load DMA mem\n");
		FUNC2(dtag, rd->rdata_desc, rd->rdata_dmap);
		rd->rdata_desc = NULL;
		return error;
	}

	rd->rdata_txrx_ctrl = txrx_ctrl;
	return 0;
}