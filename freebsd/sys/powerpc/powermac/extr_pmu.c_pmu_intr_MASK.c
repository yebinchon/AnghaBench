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
typedef  int uint8_t ;
struct pmu_softc {int sc_autopoll; int lid_closed; int /*<<< orphan*/  adb_bus; int /*<<< orphan*/  sc_mutex; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int ADB_COMMAND_TALK ; 
 int /*<<< orphan*/  PMU_ADB_CMD ; 
 int PMU_ENV_LID_CLOSED ; 
 int PMU_ENV_POWER ; 
 int /*<<< orphan*/  PMU_INT_ACK ; 
 int PMU_INT_ADB ; 
 int PMU_INT_ENVIRONMENT ; 
 int PMU_SET_POLL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 struct pmu_softc* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (struct pmu_softc*,int /*<<< orphan*/ ,int,int*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pmu_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vIFR ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	device_t        dev;
	struct pmu_softc *sc;

	unsigned int len;
	uint8_t resp[16];
	uint8_t junk[16];

        dev = (device_t)arg;
	sc = FUNC2(dev);

	FUNC3(&sc->sc_mutex);

	FUNC6(sc, vIFR, 0x90);	/* Clear 'em */
	len = FUNC5(sc, PMU_INT_ACK, 0, NULL, 16, resp);

	FUNC4(&sc->sc_mutex);

	if ((len < 1) || (resp[1] == 0)) {
		return;
	}

	if (resp[1] & PMU_INT_ADB) {
		/*
		 * the PMU will turn off autopolling after each command that
		 * it did not issue, so we assume any but TALK R0 is ours and
		 * re-enable autopoll here whenever we receive an ACK for a
		 * non TR0 command.
		 */
		FUNC3(&sc->sc_mutex);

		if ((resp[2] & 0x0f) != (ADB_COMMAND_TALK << 2)) {
			if (sc->sc_autopoll) {
				uint8_t cmd[] = {0, PMU_SET_POLL_MASK, 
				    (sc->sc_autopoll >> 8) & 0xff, 
				    sc->sc_autopoll & 0xff};

				FUNC5(sc, PMU_ADB_CMD, 4, cmd, 16, junk);
			}
		}	

		FUNC4(&sc->sc_mutex);

		FUNC0(sc->adb_bus,resp[1],resp[2],
			len - 3,&resp[3]);
	}
	if (resp[1] & PMU_INT_ENVIRONMENT) {
		/* if the lid was just closed, notify devd. */
		if ((resp[2] & PMU_ENV_LID_CLOSED) && (!sc->lid_closed)) {
			sc->lid_closed = 1;
			FUNC1("PMU", "lid", "close", NULL);
		}
		else if (!(resp[2] & PMU_ENV_LID_CLOSED) && (sc->lid_closed)) {
			/* if the lid was just opened, notify devd. */
			sc->lid_closed = 0;
			FUNC1("PMU", "lid", "open", NULL);
		}
		if (resp[2] & PMU_ENV_POWER)
			FUNC1("PMU", "Button", "pressed", NULL);
	}
}