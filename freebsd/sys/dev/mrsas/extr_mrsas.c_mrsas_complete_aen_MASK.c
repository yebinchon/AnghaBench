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
struct mrsas_softc {scalar_t__ remove_in_progress; int mrsas_aen_triggered; int /*<<< orphan*/  ev_task; int /*<<< orphan*/  ev_tq; int /*<<< orphan*/ * aen_cmd; int /*<<< orphan*/  aen_lock; int /*<<< orphan*/  mrsas_select; scalar_t__ mrsas_poll_waiting; } ;
struct mrsas_mfi_cmd {scalar_t__ abort_aen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mrsas_mfi_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(struct mrsas_softc *sc, struct mrsas_mfi_cmd *cmd)
{
	/*
	 * Don't signal app if it is just an aborted previously registered
	 * aen
	 */
	if ((!cmd->abort_aen) && (sc->remove_in_progress == 0)) {
		sc->mrsas_aen_triggered = 1;
		FUNC1(&sc->aen_lock);
		if (sc->mrsas_poll_waiting) {
			sc->mrsas_poll_waiting = 0;
			FUNC3(&sc->mrsas_select);
		}
		FUNC2(&sc->aen_lock);
	} else
		cmd->abort_aen = 0;

	sc->aen_cmd = NULL;
	FUNC0(cmd);

	FUNC4(sc->ev_tq, &sc->ev_task);

	return;
}