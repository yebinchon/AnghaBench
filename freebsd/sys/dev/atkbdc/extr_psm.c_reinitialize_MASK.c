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
struct psm_softc {int state; int /*<<< orphan*/  kbdc; int /*<<< orphan*/  unit; int /*<<< orphan*/  mode; int /*<<< orphan*/  lastinputerr; scalar_t__ pkterrors; scalar_t__ syncerrors; int /*<<< orphan*/  callout; int /*<<< orphan*/  watchdog; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int KBD_DISABLE_AUX_INT ; 
 int KBD_DISABLE_AUX_PORT ; 
 int KBD_DISABLE_KBD_INT ; 
 int KBD_DISABLE_KBD_PORT ; 
 int KBD_ENABLE_AUX_PORT ; 
 int KBD_KBD_CONTROL_BITS ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int PSM_EV_OPEN_A ; 
 int PSM_EV_OPEN_R ; 
 int PSM_OPEN ; 
 int PSM_VALID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct psm_softc*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct psm_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct psm_softc*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static int
FUNC17(struct psm_softc *sc, int doinit)
{
	int err;
	int c;
	int s;

	/* don't let anybody mess with the aux device */
	if (!FUNC10(sc->kbdc, TRUE))
		return (EIO);
	s = FUNC15();

	/* block our watchdog timer */
	sc->watchdog = FALSE;
	FUNC1(&sc->callout);

	/* save the current controller command byte */
	FUNC6(sc->kbdc, 10);
	c = FUNC8(sc->kbdc);
	FUNC0(2, (LOG_DEBUG,
	    "psm%d: current command byte: %04x (reinitialize).\n",
	    sc->unit, c));

	/* enable the aux port but disable the aux interrupt and the keyboard */
	if ((c == -1) || !FUNC14(sc->kbdc,
	    FUNC9(sc->kbdc),
	    KBD_DISABLE_KBD_PORT | KBD_DISABLE_KBD_INT |
	    KBD_ENABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {
		/* CONTROLLER ERROR */
		FUNC16(s);
		FUNC10(sc->kbdc, FALSE);
		FUNC11(LOG_ERR,
		    "psm%d: unable to set the command byte (reinitialize).\n",
		    sc->unit);
		return (EIO);
	}

	/* flush any data */
	if (sc->state & PSM_VALID) {
		/* this may fail; but never mind... */
		FUNC2(sc->kbdc);
		FUNC5(sc->kbdc, 10);
	}
	FUNC7(sc);
	sc->syncerrors = 0;
	sc->pkterrors = 0;
	FUNC12(&sc->lastinputerr, 0, sizeof(sc->lastinputerr));

	/* try to detect the aux device; are you still there? */
	err = 0;
	if (doinit) {
		if (FUNC3(sc, &sc->mode)) {
			/* yes */
			sc->state |= PSM_VALID;
		} else {
			/* the device has gone! */
			FUNC13(sc->kbdc, c);
			sc->state &= ~PSM_VALID;
			FUNC11(LOG_ERR,
			    "psm%d: the aux device has gone! (reinitialize).\n",
			    sc->unit);
			err = ENXIO;
		}
	}
	FUNC16(s);

	/* restore the driver state */
	if ((sc->state & (PSM_OPEN | PSM_EV_OPEN_R | PSM_EV_OPEN_A)) &&
	    (err == 0)) {
		/* enable the aux device and the port again */
		err = FUNC4(sc, c);
		if (err != 0)
			FUNC11(LOG_ERR, "psm%d: failed to enable the device "
			    "(reinitialize).\n", sc->unit);
	} else {
		/* restore the keyboard port and disable the aux port */
		if (!FUNC14(sc->kbdc,
		    FUNC9(sc->kbdc),
		    (c & KBD_KBD_CONTROL_BITS) |
		    KBD_DISABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {
			/* CONTROLLER ERROR */
			FUNC11(LOG_ERR, "psm%d: failed to disable the aux port "
			    "(reinitialize).\n", sc->unit);
			err = EIO;
		}
	}

	FUNC10(sc->kbdc, FALSE);
	return (err);
}