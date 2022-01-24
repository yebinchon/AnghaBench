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
struct safe_softc {int dummy; } ;
struct safe_dma_alloc {int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct safe_softc *sc, struct safe_dma_alloc *dma)
{
	FUNC1(dma->dma_tag, dma->dma_map);
	FUNC2(dma->dma_tag, dma->dma_vaddr, dma->dma_map);
	FUNC0(dma->dma_tag);
}