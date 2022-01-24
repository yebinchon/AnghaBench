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
struct ath_softc {int /*<<< orphan*/ * sc_txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 scalar_t__ FUNC1 (struct ath_softc*,int) ; 
 int HAL_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ath_softc *sc)
{
	int i;

	FUNC0(sc);
	for (i = 0; i < HAL_NUM_TX_QUEUES; i++)
		if (FUNC1(sc, i))
			FUNC2(sc, &sc->sc_txq[i]);
}