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
struct psm_softc {int state; int /*<<< orphan*/  kbdc; int /*<<< orphan*/  unit; int /*<<< orphan*/  callout; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FALSE ; 
 int KBD_DISABLE_AUX_INT ; 
 int KBD_DISABLE_AUX_PORT ; 
 int KBD_DISABLE_KBD_INT ; 
 int KBD_DISABLE_KBD_PORT ; 
 int KBD_ENABLE_AUX_PORT ; 
 int KBD_KBD_CONTROL_BITS ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int PSM_VALID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct psm_softc *sc)
{
	int stat[3];
	int command_byte;
	int s;

	/* don't let timeout routines in the keyboard driver to poll the kbdc */
	if (!FUNC6(sc->kbdc, TRUE))
		return (EIO);

	/* save the current controller command byte */
	s = FUNC9();
	command_byte = FUNC3(sc->kbdc);
	if (command_byte == -1) {
		FUNC6(sc->kbdc, FALSE);
		FUNC10(s);
		return (EIO);
	}

	/* disable the aux interrupt and temporalily disable the keyboard */
	if (!FUNC8(sc->kbdc,
	    FUNC5(sc->kbdc),
	    KBD_DISABLE_KBD_PORT | KBD_DISABLE_KBD_INT |
	    KBD_ENABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {
		FUNC7(LOG_ERR,
		    "psm%d: failed to disable the aux int (psmclose).\n",
		    sc->unit);
		/* CONTROLLER ERROR;
		 * NOTE: we shall force our way through. Because the only
		 * ill effect we shall see is that we may not be able
		 * to read ACK from the mouse, and it doesn't matter much
		 * so long as the mouse will accept the DISABLE command.
		 */
	}
	FUNC10(s);

	/* stop the watchdog timer */
	FUNC0(&sc->callout);

	/* remove anything left in the output buffer */
	FUNC2(sc->kbdc, 10);

	/* disable the aux device, port and interrupt */
	if (sc->state & PSM_VALID) {
		if (!FUNC1(sc->kbdc)) {
			/* MOUSE ERROR;
			 * NOTE: we don't return (error) and continue,
			 * pretending we have successfully disabled the device.
			 * It's OK because the interrupt routine will discard
			 * any data from the mouse hereafter.
			 */
			FUNC7(LOG_ERR,
			    "psm%d: failed to disable the device (psmclose).\n",
			    sc->unit);
		}

		if (FUNC4(sc->kbdc, stat, 0, 3) < 3)
			FUNC7(LOG_DEBUG,
			    "psm%d: failed to get status (psmclose).\n",
			    sc->unit);
	}

	if (!FUNC8(sc->kbdc,
	    FUNC5(sc->kbdc),
	    (command_byte & KBD_KBD_CONTROL_BITS) |
	    KBD_DISABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {
		/*
		 * CONTROLLER ERROR;
		 * we shall ignore this error; see the above comment.
		 */
		FUNC7(LOG_ERR,
		    "psm%d: failed to disable the aux port (psmclose).\n",
		    sc->unit);
	}

	/* remove anything left in the output buffer */
	FUNC2(sc->kbdc, 10);

	/* close is almost always successful */
	FUNC6(sc->kbdc, FALSE);
	return (0);
}