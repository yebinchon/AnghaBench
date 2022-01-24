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
struct otus_softc {int /*<<< orphan*/  sc_cmd; int /*<<< orphan*/  sc_cmd_waiting; int /*<<< orphan*/  sc_cmd_pending; int /*<<< orphan*/  sc_cmd_inactive; int /*<<< orphan*/  sc_cmd_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  OTUS_CMD_LIST_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct otus_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct otus_softc *sc)
{

	/*
	 * XXX TODO: something needs to wake up any pending/sleeping
	 * waiters!
	 */
	FUNC0(&sc->sc_cmd_active);
	FUNC0(&sc->sc_cmd_inactive);
	FUNC0(&sc->sc_cmd_pending);
	FUNC0(&sc->sc_cmd_waiting);

	FUNC1(sc, sc->sc_cmd, OTUS_CMD_LIST_COUNT);
}