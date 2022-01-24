#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mst_watchdog; } ;
struct TYPE_3__ {int /*<<< orphan*/  ic_oerrors; } ;
struct mwl_softc {scalar_t__ sc_tx_timer; TYPE_2__ sc_stats; TYPE_1__ sc_ic; int /*<<< orphan*/ * sc_txq; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_mh; int /*<<< orphan*/  sc_invalid; scalar_t__ sc_running; int /*<<< orphan*/  sc_watchdog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct mwl_softc *sc = arg;

	FUNC0(&sc->sc_watchdog, hz, mwl_watchdog, sc);
	if (sc->sc_tx_timer == 0 || --sc->sc_tx_timer > 0)
		return;

	if (sc->sc_running && !sc->sc_invalid) {
		if (FUNC3(sc->sc_mh))
			FUNC2(sc->sc_dev,
			    "transmit timeout (firmware hung?)\n");
		else
			FUNC2(sc->sc_dev,
			    "transmit timeout\n");
#if 0
		mwl_reset(sc);
mwl_txq_dump(&sc->sc_txq[0]);/*XXX*/
#endif
		FUNC1(sc->sc_ic.ic_oerrors, 1);
		sc->sc_stats.mst_watchdog++;
	}
}