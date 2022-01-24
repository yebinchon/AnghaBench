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
struct hn_softc {int hn_flags; int hn_tx_ring_cnt; scalar_t__ hn_tx_ring_inuse; int /*<<< orphan*/ * hn_tx_ring; int /*<<< orphan*/ * hn_chim; int /*<<< orphan*/  hn_dev; int /*<<< orphan*/  hn_chim_dma; } ;

/* Variables and functions */
 int HN_FLAG_CHIM_REF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct hn_softc *sc)
{
	int i;

	if (sc->hn_chim != NULL) {
		if ((sc->hn_flags & HN_FLAG_CHIM_REF) == 0) {
			FUNC3(&sc->hn_chim_dma, sc->hn_chim);
		} else {
			FUNC0(sc->hn_dev,
			    "chimney sending buffer is referenced");
		}
		sc->hn_chim = NULL;
	}

	if (sc->hn_tx_ring_cnt == 0)
		return;

	for (i = 0; i < sc->hn_tx_ring_cnt; ++i)
		FUNC2(&sc->hn_tx_ring[i]);

	FUNC1(sc->hn_tx_ring, M_DEVBUF);
	sc->hn_tx_ring = NULL;

	sc->hn_tx_ring_cnt = 0;
	sc->hn_tx_ring_inuse = 0;
}