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
struct rtwn_softc {int sc_flags; size_t cmdq_first; struct rtwn_cmdq* cmdq; } ;
struct rtwn_cmdq {int /*<<< orphan*/  data; int /*<<< orphan*/  (* func ) (struct rtwn_softc*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int RTWN_CMDQ_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*) ; 
 int RTWN_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_cmdq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *arg, int pending)
{
	struct rtwn_softc *sc = arg;
	struct rtwn_cmdq *item;

	/*
	 * Device must be powered on (via rtwn_power_on())
	 * before any command may be sent.
	 */
	FUNC2(sc);
	if (!(sc->sc_flags & RTWN_RUNNING)) {
		FUNC3(sc);
		return;
	}

	FUNC0(sc);
	while (sc->cmdq[sc->cmdq_first].func != NULL) {
		item = &sc->cmdq[sc->cmdq_first];
		sc->cmdq_first = (sc->cmdq_first + 1) % RTWN_CMDQ_SIZE;
		FUNC1(sc);

		item->func(sc, &item->data);

		FUNC0(sc);
		FUNC4(item, 0, sizeof (*item));
	}
	FUNC1(sc);
	FUNC3(sc);
}