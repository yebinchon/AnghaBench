#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bus_size_t ;
struct TYPE_9__ {scalar_t__ paddr; int /*<<< orphan*/  ptr; int /*<<< orphan*/  map; int /*<<< orphan*/  tag; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__* POCE_SOFTC ;
typedef  TYPE_2__* POCE_DMA_MEM ;
typedef  int /*<<< orphan*/  OCE_DMA_MEM ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  oce_dma_map_addr ; 

int
FUNC6(POCE_SOFTC sc, bus_size_t size, POCE_DMA_MEM dma, int flags)
{
	int rc;


	FUNC4(dma, 0, sizeof(OCE_DMA_MEM));

	rc = FUNC0(FUNC3(sc->dev),
				8, 0,
				BUS_SPACE_MAXADDR,
				BUS_SPACE_MAXADDR,
				NULL, NULL,
				size, 1, size, 0, NULL, NULL, &dma->tag);

	if (rc == 0) {
		rc = FUNC2(dma->tag,
				      &dma->ptr,
				      BUS_DMA_NOWAIT | BUS_DMA_COHERENT |
					BUS_DMA_ZERO,
				      &dma->map);
	}

	dma->paddr = 0;
	if (rc == 0) {
		rc = FUNC1(dma->tag,
				     dma->map,
				     dma->ptr,
				     size,
				     oce_dma_map_addr,
				     &dma->paddr, flags | BUS_DMA_NOWAIT);
		if (dma->paddr == 0)
			rc = ENXIO;
	}

	if (rc != 0)
		FUNC5(sc, dma);

	return rc;
}