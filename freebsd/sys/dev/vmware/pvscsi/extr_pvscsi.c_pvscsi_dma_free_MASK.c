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
struct pvscsi_softc {int dummy; } ;
struct pvscsi_dma {scalar_t__ paddr; int /*<<< orphan*/ * tag; int /*<<< orphan*/  map; int /*<<< orphan*/ * vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pvscsi_dma*,int) ; 

__attribute__((used)) static void
FUNC4(struct pvscsi_softc *sc, struct pvscsi_dma *dma)
{

	if (dma->tag != NULL) {
		if (dma->paddr != 0) {
			FUNC1(dma->tag, dma->map);
		}

		if (dma->vaddr != NULL) {
			FUNC2(dma->tag, dma->vaddr, dma->map);
		}

		FUNC0(dma->tag);
	}

	FUNC3(dma, sizeof(*dma));
}