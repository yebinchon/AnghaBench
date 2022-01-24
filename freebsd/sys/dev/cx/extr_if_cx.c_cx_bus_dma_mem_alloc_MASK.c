#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dmat; int /*<<< orphan*/  mapp; int /*<<< orphan*/  virt; int /*<<< orphan*/  phys; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ cx_dma_mem_t ;

/* Variables and functions */
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_24BIT ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cx_bus_dmamap_addr ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int
FUNC6 (int bnum, int cnum, cx_dma_mem_t *dmem)
{
	int error;

	error = FUNC0 (NULL, 16, 0, BUS_SPACE_MAXADDR_24BIT,
		BUS_SPACE_MAXADDR, NULL, NULL, dmem->size, 1,
		dmem->size, 0, NULL, NULL, &dmem->dmat);
	if (error) {
		if (cnum >= 0)	FUNC5 ("cx%d-%d: ", bnum, cnum);
		else		FUNC5 ("cx%d: ", bnum);
		FUNC5 ("couldn't allocate tag for dma memory\n");
 		return 0;
	}
	error = FUNC3 (dmem->dmat, (void **)&dmem->virt,
		BUS_DMA_NOWAIT | BUS_DMA_ZERO, &dmem->mapp);
	if (error) {
		if (cnum >= 0)	FUNC5 ("cx%d-%d: ", bnum, cnum);
		else		FUNC5 ("cx%d: ", bnum);
		FUNC5 ("couldn't allocate mem for dma memory\n");
		FUNC1 (dmem->dmat);
 		return 0;
	}
	error = FUNC2 (dmem->dmat, dmem->mapp, dmem->virt,
		dmem->size, cx_bus_dmamap_addr, &dmem->phys, 0);
	if (error) {
		if (cnum >= 0)	FUNC5 ("cx%d-%d: ", bnum, cnum);
		else		FUNC5 ("cx%d: ", bnum);
		FUNC5 ("couldn't load mem map for dma memory\n");
		FUNC4 (dmem->dmat, dmem->virt, dmem->mapp);
		FUNC1 (dmem->dmat);
 		return 0;
	}
	return 1;
}