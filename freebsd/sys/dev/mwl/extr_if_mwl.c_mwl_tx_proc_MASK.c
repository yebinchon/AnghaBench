#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mwl_softc {int /*<<< orphan*/  sc_mh; int /*<<< orphan*/  sc_snd; scalar_t__ sc_tx_timer; TYPE_1__* sc_txq; } ;
struct TYPE_2__ {int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl_softc*) ; 
 scalar_t__ FUNC4 (struct mwl_softc*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(void *arg, int npending)
{
	struct mwl_softc *sc = arg;
	int nreaped;

	/*
	 * Process each active queue.
	 */
	nreaped = 0;
	if (!FUNC0(&sc->sc_txq[0].active))
		nreaped += FUNC4(sc, &sc->sc_txq[0]);
	if (!FUNC0(&sc->sc_txq[1].active))
		nreaped += FUNC4(sc, &sc->sc_txq[1]);
	if (!FUNC0(&sc->sc_txq[2].active))
		nreaped += FUNC4(sc, &sc->sc_txq[2]);
	if (!FUNC0(&sc->sc_txq[3].active))
		nreaped += FUNC4(sc, &sc->sc_txq[3]);

	if (nreaped != 0) {
		sc->sc_tx_timer = 0;
		if (FUNC1(&sc->sc_snd) != NULL) {
			/* NB: kick fw; the tx thread may have been preempted */
			FUNC2(sc->sc_mh, 0);
			FUNC3(sc);
		}
	}
}