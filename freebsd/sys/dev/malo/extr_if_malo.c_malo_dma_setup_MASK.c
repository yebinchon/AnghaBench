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
struct malo_softc {int /*<<< orphan*/ * malo_txq; } ;

/* Variables and functions */
 int MALO_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct malo_softc*) ; 
 int FUNC1 (struct malo_softc*) ; 
 int FUNC2 (struct malo_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct malo_softc*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(struct malo_softc *sc)
{
	int error, i;

	/* rxdma initializing.  */
	error = FUNC1(sc);
	if (error != 0)
		return error;

	/* NB: we just have 1 tx queue now.  */
	for (i = 0; i < MALO_NUM_TX_QUEUES; i++) {
		error = FUNC2(sc, &sc->malo_txq[i]);
		if (error != 0) {
			FUNC0(sc);

			return error;
		}

		FUNC3(sc, &sc->malo_txq[i], i);
	}

	return 0;
}