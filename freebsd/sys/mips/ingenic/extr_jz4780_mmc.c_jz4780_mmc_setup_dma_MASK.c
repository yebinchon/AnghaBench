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
struct jz4780_mmc_softc {int sc_dma_map_err; int /*<<< orphan*/  sc_dma_buf_map; int /*<<< orphan*/  sc_dma_buf_tag; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_dma_desc; int /*<<< orphan*/  sc_dma_map; int /*<<< orphan*/  sc_dma_tag; } ;
struct jz4780_mmc_dma_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int JZ_MSC_DMA_MAX_SIZE ; 
 int JZ_MSC_DMA_SEGS ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct jz4780_mmc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jz4780_mmc_dma_desc_cb ; 

__attribute__((used)) static int
FUNC5(struct jz4780_mmc_softc *sc)
{
	int dma_desc_size, error;

	/* Allocate the DMA descriptor memory. */
	dma_desc_size = sizeof(struct jz4780_mmc_dma_desc) * JZ_MSC_DMA_SEGS;
	error = FUNC0(FUNC4(sc->sc_dev), 1, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    dma_desc_size, 1, dma_desc_size, 0, NULL, NULL, &sc->sc_dma_tag);
	if (error)
		return (error);
	error = FUNC3(sc->sc_dma_tag, &sc->sc_dma_desc,
	    BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->sc_dma_map);
	if (error)
		return (error);

	error = FUNC2(sc->sc_dma_tag, sc->sc_dma_map,
	    sc->sc_dma_desc, dma_desc_size, jz4780_mmc_dma_desc_cb, sc, 0);
	if (error)
		return (error);
	if (sc->sc_dma_map_err)
		return (sc->sc_dma_map_err);

	/* Create the DMA map for data transfers. */
	error = FUNC0(FUNC4(sc->sc_dev), 1, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    JZ_MSC_DMA_MAX_SIZE * JZ_MSC_DMA_SEGS, JZ_MSC_DMA_SEGS,
	    JZ_MSC_DMA_MAX_SIZE, BUS_DMA_ALLOCNOW, NULL, NULL,
	    &sc->sc_dma_buf_tag);
	if (error)
		return (error);
	error = FUNC1(sc->sc_dma_buf_tag, 0,
	    &sc->sc_dma_buf_map);
	if (error)
		return (error);

	return (0);
}