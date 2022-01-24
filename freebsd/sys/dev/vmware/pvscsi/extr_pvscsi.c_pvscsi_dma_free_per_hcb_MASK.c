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
typedef  int uint32_t ;
struct pvscsi_softc {int /*<<< orphan*/  sg_list_dma; int /*<<< orphan*/  sense_buffer_dma; int /*<<< orphan*/  buffer_dmat; struct pvscsi_hcb* hcbs; int /*<<< orphan*/  lock; } ;
struct pvscsi_hcb {int /*<<< orphan*/  dma_map; int /*<<< orphan*/  callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pvscsi_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct pvscsi_softc *sc, uint32_t hcbs_allocated)
{
	int i;
	int lock_owned;
	struct pvscsi_hcb *hcb;

	lock_owned = FUNC3(&sc->lock);

	if (lock_owned) {
		FUNC4(&sc->lock);
	}
	for (i = 0; i < hcbs_allocated; ++i) {
		hcb = sc->hcbs + i;
		FUNC1(&hcb->callout);
	};
	if (lock_owned) {
		FUNC2(&sc->lock);
	}

	for (i = 0; i < hcbs_allocated; ++i) {
		hcb = sc->hcbs + i;
		FUNC0(sc->buffer_dmat, hcb->dma_map);
	};

	FUNC5(sc, &sc->sense_buffer_dma);
	FUNC5(sc, &sc->sg_list_dma);
}