#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_13__ {int /*<<< orphan*/  status; int /*<<< orphan*/  kbd_mode; } ;
typedef  TYPE_1__ scr_stat ;
struct TYPE_14__ {int config; scalar_t__ keyboard; scalar_t__ scrn_time_stamp; int flags; int /*<<< orphan*/  ctimeout; TYPE_1__* cur_scp; scalar_t__ write_in_progress; scalar_t__ switch_in_progress; scalar_t__ blink_in_progress; int /*<<< orphan*/ * kbd; scalar_t__ font_loading_in_progress; } ;
typedef  TYPE_2__ sc_softc_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_15__ {TYPE_2__* sc; } ;

/* Variables and functions */
 scalar_t__ CONS_LKM_SAVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  KDSKBMODE ; 
 int /*<<< orphan*/  LOCK_MASK ; 
 int SBT_1S ; 
 int SC_AUTODETECT_KBD ; 
 int SC_SCRN_BLANKED ; 
 int SC_SCRN_IDLE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void (*) (void*),TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ kdb_active ; 
 scalar_t__ panicstr ; 
 scalar_t__ run_scrn_saver ; 
 scalar_t__ saver_mode ; 
 scalar_t__ FUNC6 (TYPE_2__*,int) ; 
 TYPE_8__* sc_console ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ scrn_blank_time ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ shutdown_in_progress ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/  (*) (TYPE_2__*,scalar_t__)) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ suspend_in_progress ; 
 scalar_t__ time_uptime ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
    static time_t kbd_time_stamp = 0;
    sc_softc_t *sc;
    scr_stat *scp;
    int again, rate;

    again = (arg != NULL);
    if (arg != NULL)
	sc = (sc_softc_t *)arg;
    else if (sc_console != NULL)
	sc = sc_console->sc;
    else
	return;

    /* find the vty to update */
    scp = sc->cur_scp;

    /* don't do anything when we are performing some I/O operations */
    if (suspend_in_progress || sc->font_loading_in_progress)
	goto done;

    if ((sc->kbd == NULL) && (sc->config & SC_AUTODETECT_KBD)) {
	/* try to allocate a keyboard automatically */
	if (kbd_time_stamp != time_uptime) {
	    kbd_time_stamp = time_uptime;
	    sc->keyboard = FUNC6(sc, -1);
	    if (sc->keyboard >= 0) {
		sc->kbd = FUNC4(sc->keyboard);
		(void)FUNC5(sc->kbd, KDSKBMODE,
			  (caddr_t)&sc->cur_scp->kbd_mode);
		FUNC11(sc->cur_scp, sc->cur_scp->status,
				 LOCK_MASK);
	    }
	}
    }

    /* should we stop the screen saver? */
    if (kdb_active || panicstr || shutdown_in_progress)
	FUNC7();
    if (run_scrn_saver) {
	if (time_uptime > sc->scrn_time_stamp + scrn_blank_time)
	    sc->flags |= SC_SCRN_IDLE;
	else
	    sc->flags &= ~SC_SCRN_IDLE;
    } else {
	sc->scrn_time_stamp = time_uptime;
	sc->flags &= ~SC_SCRN_IDLE;
	if (scrn_blank_time > 0)
	    run_scrn_saver = TRUE;
    }
#ifdef DEV_SPLASH
    if ((saver_mode != CONS_LKM_SAVER) || !(sc->flags & SC_SCRN_IDLE))
	if (sc->flags & SC_SCRN_BLANKED)
            stop_scrn_saver(sc, current_saver);
#endif

    /* should we just return ? */
    if (sc->blink_in_progress || sc->switch_in_progress
	|| sc->write_in_progress)
	goto done;

    /* Update the screen */
    scp = sc->cur_scp;		/* cur_scp may have changed... */
    if (!FUNC1(scp) && !(sc->flags & SC_SCRN_BLANKED))
	FUNC8(scp, TRUE);

#ifdef DEV_SPLASH
    /* should we activate the screen saver? */
    if ((saver_mode == CONS_LKM_SAVER) && (sc->flags & SC_SCRN_IDLE))
	if (!ISGRAPHSC(scp) || (sc->flags & SC_SCRN_BLANKED))
	    (*current_saver)(sc, TRUE);
#endif

done:
    if (again) {
	/*
	 * Use reduced "refresh" rate if we are in graphics and that is not a
	 * graphical screen saver.  In such case we just have nothing to do.
	 */
	if (FUNC1(scp) && !(sc->flags & SC_SCRN_BLANKED))
	    rate = 2;
	else
	    rate = 30;
	FUNC2(&sc->ctimeout, SBT_1S / rate, 0,
	    scrn_timer, sc, FUNC0(1));
    }
}