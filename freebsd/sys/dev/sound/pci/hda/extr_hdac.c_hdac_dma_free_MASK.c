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
struct hdac_softc {int dummy; } ;
struct hdac_dma {scalar_t__ dma_paddr; scalar_t__ dma_size; int /*<<< orphan*/ * dma_tag; int /*<<< orphan*/ * dma_vaddr; int /*<<< orphan*/  dma_map; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct hdac_softc *sc, struct hdac_dma *dma)
{
	if (dma->dma_paddr != 0) {
		/* Flush caches */
		FUNC1(dma->dma_tag, dma->dma_map,
		    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
		FUNC2(dma->dma_tag, dma->dma_map);
		dma->dma_paddr = 0;
	}
	if (dma->dma_vaddr != NULL) {
		FUNC3(dma->dma_tag, dma->dma_vaddr, dma->dma_map);
		dma->dma_vaddr = NULL;
	}
	if (dma->dma_tag != NULL) {
		FUNC0(dma->dma_tag);
		dma->dma_tag = NULL;
	}
	dma->dma_size = 0;
}