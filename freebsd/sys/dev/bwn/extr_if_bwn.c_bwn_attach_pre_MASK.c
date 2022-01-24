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
struct bwn_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_tq; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_watchdog_ch; int /*<<< orphan*/  sc_task_ch; int /*<<< orphan*/  sc_rfswitch_ch; int /*<<< orphan*/  sc_maclist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static void
FUNC7(struct bwn_softc *sc)
{

	FUNC0(sc);
	FUNC1(&sc->sc_maclist);
	FUNC2(&sc->sc_rfswitch_ch, &sc->sc_mtx, 0);
	FUNC2(&sc->sc_task_ch, &sc->sc_mtx, 0);
	FUNC2(&sc->sc_watchdog_ch, &sc->sc_mtx, 0);
	FUNC4(&sc->sc_snd, ifqmaxlen);
	sc->sc_tq = FUNC5("bwn_taskq", M_NOWAIT,
		taskqueue_thread_enqueue, &sc->sc_tq);
	FUNC6(&sc->sc_tq, 1, PI_NET,
		"%s taskq", FUNC3(sc->sc_dev));
}