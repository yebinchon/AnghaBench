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
struct adapter {int /*<<< orphan*/  dev; int /*<<< orphan*/  dmat; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  oneseg_dma_callback ; 

__attribute__((used)) static int
FUNC5(struct adapter *sc, size_t len, bus_dma_tag_t *tag,
    bus_dmamap_t *map, bus_addr_t *pa, void **va)
{
	int rc;

	rc = FUNC0(sc->dmat, 512, 0, BUS_SPACE_MAXADDR,
	    BUS_SPACE_MAXADDR, NULL, NULL, len, 1, len, 0, NULL, NULL, tag);
	if (rc != 0) {
		FUNC3(sc->dev, "cannot allocate DMA tag: %d\n", rc);
		goto done;
	}

	rc = FUNC2(*tag, va,
	    BUS_DMA_WAITOK | BUS_DMA_COHERENT | BUS_DMA_ZERO, map);
	if (rc != 0) {
		FUNC3(sc->dev, "cannot allocate DMA memory: %d\n", rc);
		goto done;
	}

	rc = FUNC1(*tag, *map, *va, len, oneseg_dma_callback, pa, 0);
	if (rc != 0) {
		FUNC3(sc->dev, "cannot load DMA map: %d\n", rc);
		goto done;
	}
done:
	if (rc)
		FUNC4(sc, *tag, *map, *pa, *va);

	return (rc);
}