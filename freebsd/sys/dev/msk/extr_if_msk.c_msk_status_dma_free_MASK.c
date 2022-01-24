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
struct msk_softc {int /*<<< orphan*/ * msk_stat_tag; int /*<<< orphan*/ * msk_stat_ring; int /*<<< orphan*/  msk_stat_map; scalar_t__ msk_stat_ring_paddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct msk_softc *sc)
{

	/* Destroy status block. */
	if (sc->msk_stat_tag) {
		if (sc->msk_stat_ring_paddr) {
			FUNC1(sc->msk_stat_tag, sc->msk_stat_map);
			sc->msk_stat_ring_paddr = 0;
		}
		if (sc->msk_stat_ring) {
			FUNC2(sc->msk_stat_tag,
			    sc->msk_stat_ring, sc->msk_stat_map);
			sc->msk_stat_ring = NULL;
		}
		FUNC0(sc->msk_stat_tag);
		sc->msk_stat_tag = NULL;
	}
}