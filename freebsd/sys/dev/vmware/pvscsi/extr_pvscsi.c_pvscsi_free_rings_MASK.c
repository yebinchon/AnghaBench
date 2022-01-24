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
struct pvscsi_softc {int /*<<< orphan*/  msg_ring_dma; scalar_t__ use_msg; int /*<<< orphan*/  cmp_ring_dma; int /*<<< orphan*/  req_ring_dma; int /*<<< orphan*/  rings_state_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvscsi_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct pvscsi_softc *sc)
{

	FUNC0(sc, &sc->rings_state_dma);
	FUNC0(sc, &sc->req_ring_dma);
	FUNC0(sc, &sc->cmp_ring_dma);
	if (sc->use_msg) {
		FUNC0(sc, &sc->msg_ring_dma);
	}
}