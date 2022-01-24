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
struct TYPE_2__ {int /*<<< orphan*/  ue_dev; } ;
struct ure_softc {TYPE_1__ sc_ue; } ;

/* Variables and functions */
 int URE_CR_RST ; 
 int /*<<< orphan*/  URE_MCU_TYPE_PLA ; 
 int /*<<< orphan*/  URE_PLA_CR ; 
 int URE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (struct ure_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ure_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct ure_softc *sc)
{
	int i;

	FUNC3(sc, URE_PLA_CR, URE_MCU_TYPE_PLA, URE_CR_RST);

	for (i = 0; i < URE_TIMEOUT; i++) {
		if (!(FUNC2(sc, URE_PLA_CR, URE_MCU_TYPE_PLA) &
		    URE_CR_RST))
			break;
		FUNC1(&sc->sc_ue, hz / 100);
	}
	if (i == URE_TIMEOUT)
		FUNC0(sc->sc_ue.ue_dev, "reset never completed\n");
}