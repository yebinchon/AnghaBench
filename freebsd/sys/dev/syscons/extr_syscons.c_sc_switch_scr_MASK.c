#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_17__ ;
typedef  struct TYPE_21__   TYPE_15__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct tty {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_23__ {scalar_t__ mode; } ;
struct TYPE_25__ {int status; scalar_t__ index; TYPE_1__ smode; int /*<<< orphan*/  pid; struct proc* proc; int /*<<< orphan*/  bell_duration; int /*<<< orphan*/  bell_pitch; } ;
typedef  TYPE_3__ scr_stat ;
struct TYPE_26__ {int flags; scalar_t__ first_vty; scalar_t__ vtys; scalar_t__ unit; scalar_t__ switch_in_progress; TYPE_3__* cur_scp; TYPE_3__* old_scp; TYPE_3__* new_scp; scalar_t__ delayed_next_scr; scalar_t__ blink_in_progress; scalar_t__ write_in_progress; } ;
typedef  TYPE_4__ sc_softc_t ;
struct TYPE_24__ {scalar_t__ mode; } ;
struct TYPE_22__ {TYPE_2__ smode; } ;
struct TYPE_21__ {int /*<<< orphan*/  bell_pitch; } ;
struct TYPE_20__ {scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  BELL_DURATION ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 struct tty* FUNC3 (TYPE_4__*,scalar_t__) ; 
 int SC_SCRN_BLANKED ; 
 int SC_SCRN_VTYLOCK ; 
 TYPE_17__* FUNC4 (struct tty*) ; 
 int SWITCH_WAIT_ACQ ; 
 int SWITCH_WAIT_REL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ VT_AUTO ; 
 scalar_t__ VT_PROCESS ; 
 TYPE_15__ bios_value ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ kdb_active ; 
 struct proc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_10__* sc_console ; 
 scalar_t__ sc_console_unit ; 
 int /*<<< orphan*/  sc_consptr ; 
 TYPE_3__* FUNC12 (struct tty*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 scalar_t__ FUNC15 (TYPE_3__*) ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 scalar_t__ FUNC18 (struct tty*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

int
FUNC21(sc_softc_t *sc, u_int next_scr)
{
    scr_stat *cur_scp;
    struct tty *tp;
    struct proc *p;
    int s;

    FUNC0(5, ("sc0: sc_switch_scr() %d ", next_scr + 1));

    if (sc->cur_scp == NULL)
	return (0);

    /* prevent switch if previously requested */
    if (sc->flags & SC_SCRN_VTYLOCK) {
	    FUNC11(sc->cur_scp, sc->cur_scp->bell_pitch,
		sc->cur_scp->bell_duration);
	    return EPERM;
    }

    /* delay switch if the screen is blanked or being updated */
    if ((sc->flags & SC_SCRN_BLANKED) || sc->write_in_progress
	|| sc->blink_in_progress) {
	sc->delayed_next_scr = next_scr + 1;
	FUNC13();
	FUNC0(5, ("switch delayed\n"));
	return 0;
    }
    sc->delayed_next_scr = 0;

    s = FUNC16();
    cur_scp = sc->cur_scp;

    /* we are in the middle of the vty switching process... */
    if (sc->switch_in_progress
	&& (cur_scp->smode.mode == VT_PROCESS)
	&& cur_scp->proc) {
	p = FUNC10(cur_scp->pid);
	if (cur_scp->proc != p) {
	    if (p)
		FUNC2(p);
	    /* 
	     * The controlling process has died!!.  Do some clean up.
	     * NOTE:`cur_scp->proc' and `cur_scp->smode.mode' 
	     * are not reset here yet; they will be cleared later.
	     */
	    FUNC0(5, ("cur_scp controlling process %d died, ",
	       cur_scp->pid));
	    if (cur_scp->status & SWITCH_WAIT_REL) {
		/*
		 * Force the previous switch to finish, but return now 
		 * with error.
		 */
		FUNC0(5, ("reset WAIT_REL, "));
		FUNC9(cur_scp, TRUE, &s);
		FUNC17(s);
		FUNC0(5, ("finishing previous switch\n"));
		return EINVAL;
	    } else if (cur_scp->status & SWITCH_WAIT_ACQ) {
		/* let's assume screen switch has been completed. */
		FUNC0(5, ("reset WAIT_ACQ, "));
		FUNC8(cur_scp);
	    } else {
		/* 
	 	 * We are in between screen release and acquisition, and
		 * reached here via scgetc() or scrn_timer() which has 
		 * interrupted exchange_scr(). Don't do anything stupid.
		 */
		FUNC0(5, ("waiting nothing, "));
	    }
	} else {
	    if (p)
		FUNC2(p);
	    /*
	     * The controlling process is alive, but not responding... 
	     * It is either buggy or it may be just taking time.
	     * The following code is a gross kludge to cope with this
	     * problem for which there is no clean solution. XXX
	     */
	    if (cur_scp->status & SWITCH_WAIT_REL) {
		switch (sc->switch_in_progress++) {
		case 1:
		    break;
		case 2:
		    FUNC0(5, ("sending relsig again, "));
		    FUNC15(cur_scp);
		    break;
		case 3:
		    break;
		case 4:
		default:
		    /*
		     * Act as if the controlling program returned
		     * VT_FALSE.
		     */
		    FUNC0(5, ("force reset WAIT_REL, "));
		    FUNC9(cur_scp, FALSE, &s);
		    FUNC17(s);
		    FUNC0(5, ("act as if VT_FALSE was seen\n"));
		    return EINVAL;
		}
	    } else if (cur_scp->status & SWITCH_WAIT_ACQ) {
		switch (sc->switch_in_progress++) {
		case 1:
		    break;
		case 2:
		    FUNC0(5, ("sending acqsig again, "));
		    FUNC14(cur_scp);
		    break;
		case 3:
		    break;
		case 4:
		default:
		     /* clear the flag and finish the previous switch */
		    FUNC0(5, ("force reset WAIT_ACQ, "));
		    FUNC8(cur_scp);
		    break;
		}
	    }
	}
    }

    /*
     * Return error if an invalid argument is given, or vty switch
     * is still in progress.
     */
    if ((next_scr < sc->first_vty) || (next_scr >= sc->first_vty + sc->vtys)
	|| sc->switch_in_progress) {
	FUNC17(s);
	FUNC11(cur_scp, bios_value.bell_pitch, BELL_DURATION);
	FUNC0(5, ("error 1\n"));
	return EINVAL;
    }

    /*
     * Don't allow switching away from the graphics mode vty
     * if the switch mode is VT_AUTO, unless the next vty is the same 
     * as the current or the current vty has been closed (but showing).
     */
    tp = FUNC3(sc, cur_scp->index);
    if ((cur_scp->index != next_scr)
	&& FUNC18(tp)
	&& (cur_scp->smode.mode == VT_AUTO)
	&& FUNC1(cur_scp)) {
	FUNC17(s);
	FUNC11(cur_scp, bios_value.bell_pitch, BELL_DURATION);
	FUNC0(5, ("error, graphics mode\n"));
	return EINVAL;
    }

    /*
     * Is the wanted vty open? Don't allow switching to a closed vty.
     * If we are in DDB, don't switch to a vty in the VT_PROCESS mode.
     * Note that we always allow the user to switch to the kernel 
     * console even if it is closed.
     */
    if ((sc_console == NULL) || (next_scr != sc_console->index)) {
	tp = FUNC3(sc, next_scr);
	if (!FUNC18(tp)) {
	    FUNC17(s);
	    FUNC11(cur_scp, bios_value.bell_pitch, BELL_DURATION);
	    FUNC0(5, ("error 2, requested vty isn't open!\n"));
	    return EINVAL;
	}
	if (kdb_active && FUNC4(tp)->smode.mode == VT_PROCESS) {
	    FUNC17(s);
	    FUNC0(5, ("error 3, requested vty is in the VT_PROCESS mode\n"));
	    return EINVAL;
	}
    }

    /* this is the start of vty switching process... */
    ++sc->switch_in_progress;
    sc->old_scp = cur_scp;
    sc->new_scp = FUNC12(FUNC3(sc, next_scr));
    if (sc->new_scp == sc->old_scp) {
	sc->switch_in_progress = 0;
	/*
	 * XXX wakeup() locks the scheduler lock which will hang if
	 * the lock is in an in-between state, e.g., when we stop at
	 * a breakpoint at fork_exit.  It has always been wrong to call
	 * wakeup() when the debugger is active.  In RELENG_4, wakeup()
	 * is supposed to be locked by splhigh(), but the debugger may
	 * be invoked at splhigh().
	 */
	if (!kdb_active)
	    FUNC20(FUNC5(sc,next_scr));
	FUNC17(s);
	FUNC0(5, ("switch done (new == old)\n"));
	return 0;
    }

    /* has controlling process died? */
    FUNC19(sc->old_scp);
    FUNC19(sc->new_scp);

    /* wait for the controlling process to release the screen, if necessary */
    if (FUNC15(sc->old_scp)) {
	FUNC17(s);
	return 0;
    }

    /* go set up the new vty screen */
    FUNC17(s);
    FUNC7(sc);
    s = FUNC16();

    /* wake up processes waiting for this vty */
    if (!kdb_active)
	FUNC20(FUNC5(sc,next_scr));

    /* wait for the controlling process to acknowledge, if necessary */
    if (FUNC14(sc->cur_scp)) {
	FUNC17(s);
	return 0;
    }

    sc->switch_in_progress = 0;
    if (sc->unit == sc_console_unit)
	FUNC6(sc_consptr,  TRUE);
    FUNC17(s);
    FUNC0(5, ("switch done\n"));

    return 0;
}