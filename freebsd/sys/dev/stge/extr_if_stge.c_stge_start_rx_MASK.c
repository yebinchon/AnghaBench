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
typedef  int uint32_t ;
struct stge_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FUNC0 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int MC_MASK ; 
 int MC_RxEnable ; 
 int MC_RxEnabled ; 
 int /*<<< orphan*/  STGE_MACCtrl ; 
 int /*<<< orphan*/  STGE_RxDMAPollPeriod ; 
 int STGE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct stge_softc *sc)
{
	uint32_t v;
	int i;

	v = FUNC0(sc, STGE_MACCtrl) & MC_MASK;
	if ((v & MC_RxEnabled) != 0)
		return;
	v |= MC_RxEnable;
	FUNC2(sc, STGE_MACCtrl, v);
	FUNC1(sc, STGE_RxDMAPollPeriod, 1);
	for (i = STGE_TIMEOUT; i > 0; i--) {
		FUNC3(10);
		v = FUNC0(sc, STGE_MACCtrl) & MC_MASK;
		if ((v & MC_RxEnabled) != 0)
			break;
	}
	if (i == 0)
		FUNC4(sc->sc_dev, "Starting Rx MAC timed out\n");
}