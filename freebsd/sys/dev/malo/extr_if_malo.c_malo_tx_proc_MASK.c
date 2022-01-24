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
struct malo_softc {scalar_t__ malo_timer; TYPE_1__* malo_txq; } ;
struct TYPE_2__ {int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct malo_softc*) ; 
 int MALO_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  FUNC1 (struct malo_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct malo_softc*) ; 
 scalar_t__ FUNC4 (struct malo_softc*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(void *arg, int npending)
{
	struct malo_softc *sc = arg;
	int i, nreaped;

	/*
	 * Process each active queue.
	 */
	nreaped = 0;
	FUNC0(sc);
	for (i = 0; i < MALO_NUM_TX_QUEUES; i++) {
		if (!FUNC2(&sc->malo_txq[i].active))
			nreaped += FUNC4(sc, &sc->malo_txq[i]);
	}

	if (nreaped != 0) {
		sc->malo_timer = 0;
		FUNC3(sc);
	}
	FUNC1(sc);
}