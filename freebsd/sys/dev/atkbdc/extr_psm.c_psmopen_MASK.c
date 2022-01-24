#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ dz; scalar_t__ dy; scalar_t__ dx; scalar_t__ obutton; scalar_t__ button; scalar_t__ flags; } ;
struct TYPE_7__ {scalar_t__ tail; scalar_t__ head; scalar_t__ count; } ;
struct TYPE_6__ {int /*<<< orphan*/  protocol; int /*<<< orphan*/  level; } ;
struct TYPE_5__ {int /*<<< orphan*/  protocol; int /*<<< orphan*/  level; } ;
struct psm_softc {int /*<<< orphan*/  kbdc; int /*<<< orphan*/  unit; scalar_t__ pkterrors; scalar_t__ syncerrors; scalar_t__ pqueue_end; scalar_t__ pqueue_start; scalar_t__ button; TYPE_4__ status; TYPE_3__ queue; int /*<<< orphan*/ * async; int /*<<< orphan*/  watchdog; TYPE_2__ dflt_mode; TYPE_1__ mode; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FALSE ; 
 int KBD_DISABLE_AUX_INT ; 
 int KBD_DISABLE_KBD_INT ; 
 int KBD_DISABLE_KBD_PORT ; 
 int KBD_ENABLE_AUX_PORT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (struct psm_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct psm_softc*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct psm_softc *sc)
{
	int command_byte;
	int err;
	int s;

	/* Initialize state */
	sc->mode.level = sc->dflt_mode.level;
	sc->mode.protocol = sc->dflt_mode.protocol;
	sc->watchdog = FALSE;
	sc->async = NULL;

	/* flush the event queue */
	sc->queue.count = 0;
	sc->queue.head = 0;
	sc->queue.tail = 0;
	sc->status.flags = 0;
	sc->status.button = 0;
	sc->status.obutton = 0;
	sc->status.dx = 0;
	sc->status.dy = 0;
	sc->status.dz = 0;
	sc->button = 0;
	sc->pqueue_start = 0;
	sc->pqueue_end = 0;

	/* empty input buffer */
	FUNC1(sc);
	sc->syncerrors = 0;
	sc->pkterrors = 0;

	/* don't let timeout routines in the keyboard driver to poll the kbdc */
	if (!FUNC4(sc->kbdc, TRUE))
		return (EIO);

	/* save the current controller command byte */
	s = FUNC7();
	command_byte = FUNC2(sc->kbdc);

	/* enable the aux port and temporalily disable the keyboard */
	if (command_byte == -1 || !FUNC6(sc->kbdc,
	    FUNC3(sc->kbdc),
	    KBD_DISABLE_KBD_PORT | KBD_DISABLE_KBD_INT |
	    KBD_ENABLE_AUX_PORT | KBD_DISABLE_AUX_INT)) {
		/* CONTROLLER ERROR; do you know how to get out of this? */
		FUNC4(sc->kbdc, FALSE);
		FUNC8(s);
		FUNC5(LOG_ERR,
		    "psm%d: unable to set the command byte (psmopen).\n",
		    sc->unit);
		return (EIO);
	}
	/*
	 * Now that the keyboard controller is told not to generate
	 * the keyboard and mouse interrupts, call `splx()' to allow
	 * the other tty interrupts. The clock interrupt may also occur,
	 * but timeout routines will be blocked by the poll flag set
	 * via `kbdc_lock()'
	 */
	FUNC8(s);

	/* enable the mouse device */
	err = FUNC0(sc, command_byte);

	/* done */
	FUNC4(sc->kbdc, FALSE);
	return (err);
}