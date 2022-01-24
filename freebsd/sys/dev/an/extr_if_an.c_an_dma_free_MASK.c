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
struct an_softc {int /*<<< orphan*/  an_dtag; } ;
struct an_dma_alloc {scalar_t__ an_dma_vaddr; int /*<<< orphan*/  an_dma_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct an_softc *sc, struct an_dma_alloc *dma)
{
	FUNC0(sc->an_dtag, dma->an_dma_map);
	FUNC1(sc->an_dtag, dma->an_dma_vaddr, dma->an_dma_map);
	dma->an_dma_vaddr = 0;
}