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
typedef  scalar_t__ uint32_t ;
struct bwi_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 scalar_t__ BWI_RX32_CTRL ; 
 scalar_t__ BWI_RX32_RINGINFO ; 
 scalar_t__ BWI_RX32_STATUS ; 
 scalar_t__ BWI_RX32_STATUS_STATE_DISABLED ; 
 int /*<<< orphan*/  BWI_RX32_STATUS_STATE_MASK ; 
 scalar_t__ FUNC0 (struct bwi_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int NRETRY ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct bwi_softc *sc, uint32_t rx_ctrl)
{
	int i;

	FUNC1(sc, rx_ctrl + BWI_RX32_CTRL, 0);

#define NRETRY 10

	for (i = 0; i < NRETRY; ++i) {
		uint32_t status;

		status = FUNC0(sc, rx_ctrl + BWI_RX32_STATUS);
		if (FUNC3(status, BWI_RX32_STATUS_STATE_MASK) ==
		    BWI_RX32_STATUS_STATE_DISABLED)
			break;

		FUNC2(1000);
	}
	if (i == NRETRY)
		FUNC4(sc->sc_dev, "reset rx ring timedout\n");

#undef NRETRY

	FUNC1(sc, rx_ctrl + BWI_RX32_RINGINFO, 0);
}