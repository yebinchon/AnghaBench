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
struct mwl_softc {int /*<<< orphan*/ * sc_txq; } ;

/* Variables and functions */
 int MWL_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_softc*) ; 
 int FUNC2 (struct mwl_softc*) ; 
 int FUNC3 (struct mwl_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct mwl_softc *sc)
{
	int error, i;

	error = FUNC2(sc);
	if (error != 0) {
		FUNC1(sc);
		return error;
	}

	for (i = 0; i < MWL_NUM_TX_QUEUES; i++) {
		error = FUNC3(sc, &sc->sc_txq[i]);
		if (error != 0) {
			FUNC0(sc);
			return error;
		}
	}
	return 0;
}