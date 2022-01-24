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
struct vtnet_softc {int vtnet_max_vq_pairs; int /*<<< orphan*/ * vtnet_txqs; int /*<<< orphan*/ * vtnet_rxqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct vtnet_softc *sc)
{
	int i;

	if (sc->vtnet_rxqs != NULL) {
		for (i = 0; i < sc->vtnet_max_vq_pairs; i++)
			FUNC1(&sc->vtnet_rxqs[i]);
		FUNC0(sc->vtnet_rxqs, M_DEVBUF);
		sc->vtnet_rxqs = NULL;
	}

	if (sc->vtnet_txqs != NULL) {
		for (i = 0; i < sc->vtnet_max_vq_pairs; i++)
			FUNC2(&sc->vtnet_txqs[i]);
		FUNC0(sc->vtnet_txqs, M_DEVBUF);
		sc->vtnet_txqs = NULL;
	}
}