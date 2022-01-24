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
struct stge_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FUNC0 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DMAC_TxDMAInProg ; 
 int /*<<< orphan*/  STGE_DMACtrl ; 
 int STGE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(struct stge_softc *sc)
{
	int i;

	for (i = 0; i < STGE_TIMEOUT; i++) {
		FUNC1(2);
		if ((FUNC0(sc, STGE_DMACtrl) & DMAC_TxDMAInProg) == 0)
			break;
	}

	if (i == STGE_TIMEOUT)
		FUNC2(sc->sc_dev, "DMA wait timed out\n");
}