#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ model; } ;
struct psm_softc {int config; int /*<<< orphan*/  unit; int /*<<< orphan*/  flags; TYPE_1__ hw; int /*<<< orphan*/  kbdc; } ;
struct TYPE_6__ {int /*<<< orphan*/  resolution; int /*<<< orphan*/  rate; } ;
typedef  TYPE_2__ mousemode_t ;
struct TYPE_7__ {scalar_t__ model; int /*<<< orphan*/  (* probefunc ) (struct psm_softc*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
#define  PSM_ACK 128 
 int PSM_CONFIG_IGNPORTERROR ; 
 int PSM_CONFIG_NORESET ; 
 int /*<<< orphan*/  PSM_NEED_SYNCBITS ; 
 int /*<<< orphan*/  REINIT ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct psm_softc*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_3__* vendortype ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int
FUNC13(struct psm_softc *sc, mousemode_t *mode)
{
	KBDC kbdc = sc->kbdc;
	int stat[3];
	int i;

	switch((i = FUNC12(kbdc))) {
	case 1:	/* ignore these errors */
	case 2:
	case 3:
	case PSM_ACK:
		if (verbose)
			FUNC4(LOG_DEBUG,
			    "psm%d: strange result for test aux port (%d).\n",
			    sc->unit, i);
		/* FALLTHROUGH */
	case 0:		/* no error */
		break;
	case -1:	/* time out */
	default:	/* error */
		FUNC5(kbdc);
		if (sc->config & PSM_CONFIG_IGNPORTERROR)
			break;
		FUNC4(LOG_ERR, "psm%d: the aux port is not functioning (%d).\n",
		    sc->unit, i);
		return (FALSE);
	}

	if (sc->config & PSM_CONFIG_NORESET) {
		/*
		 * Don't try to reset the pointing device.  It may possibly
		 * be left in the unknown state, though...
		 */
	} else {
		/*
		 * NOTE: some controllers appears to hang the `keyboard' when
		 * the aux port doesn't exist and `PSMC_RESET_DEV' is issued.
		 */
		if (!FUNC6(kbdc)) {
			FUNC5(kbdc);
			FUNC4(LOG_ERR, "psm%d: failed to reset the aux device.\n",
			    sc->unit);
			return (FALSE);
		}
	}

	/*
	 * both the aux port and the aux device is functioning, see
	 * if the device can be enabled.
	 */
	if (!FUNC2(kbdc) || !FUNC0(kbdc)) {
		FUNC4(LOG_ERR, "psm%d: failed to enable the aux device.\n",
		    sc->unit);
		return (FALSE);
	}
	FUNC1(kbdc, 10);	/* remove stray data if any */

	/* Re-enable the mouse. */
	for (i = 0; vendortype[i].probefunc != NULL; ++i)
		if (vendortype[i].model == sc->hw.model)
			(*vendortype[i].probefunc)(sc, REINIT);

	/* set mouse parameters */
	if (mode != (mousemode_t *)NULL) {
		if (mode->rate > 0)
			mode->rate = FUNC9(kbdc, mode->rate);
		if (mode->resolution >= 0)
			mode->resolution =
			    FUNC8(kbdc, mode->resolution);
		FUNC10(kbdc, 1);
		FUNC7(kbdc);
	}

	/* Record sync on the next data packet we see. */
	sc->flags |= PSM_NEED_SYNCBITS;

	/* just check the status of the mouse */
	if (FUNC3(kbdc, stat, 0, 3) < 3)
		FUNC4(LOG_DEBUG, "psm%d: failed to get status (doinitialize).\n",
		    sc->unit);

	return (TRUE);
}