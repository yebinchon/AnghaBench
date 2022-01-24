#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct tty {int dummy; } ;
struct TYPE_10__ {void* mode; } ;
struct TYPE_12__ {int /*<<< orphan*/  kbd_mode; TYPE_2__* sc; TYPE_1__ smode; int /*<<< orphan*/ * proc; scalar_t__ pid; int /*<<< orphan*/  ysize; int /*<<< orphan*/  scr; int /*<<< orphan*/  vtb; } ;
typedef  TYPE_3__ scr_stat ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_11__ {scalar_t__ unit; int /*<<< orphan*/  kbd; TYPE_3__* cur_scp; } ;
typedef  int /*<<< orphan*/ * SC_STAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  KDSKBMODE ; 
 int /*<<< orphan*/  K_XLATE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 scalar_t__ SC_CONSOLECTL ; 
 scalar_t__ FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  TRUE ; 
 void* VT_AUTO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ main_console ; 
 scalar_t__ sc_console_unit ; 
 int /*<<< orphan*/  sc_consptr ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (struct tty*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 () ; 

__attribute__((used)) static void
FUNC11(struct tty *tp)
{
    scr_stat *scp;
    int s;

    if (FUNC1(tp) != SC_CONSOLECTL) {
	scp = FUNC8(tp);
	/* were we in the middle of the VT switching process? */
	FUNC0(5, ("sc%d: scclose(), ", scp->sc->unit));
	s = FUNC10();
	if ((scp == scp->sc->cur_scp) && (scp->sc->unit == sc_console_unit))
	    FUNC2(sc_consptr, TRUE);
	if (FUNC4(scp, TRUE, &s) == 0)	/* force release */
	    FUNC0(5, ("reset WAIT_REL, "));
	if (FUNC3(scp) == 0)		/* force acknowledge */
	    FUNC0(5, ("reset WAIT_ACQ, "));
#ifdef not_yet_done
	if (scp == &main_console) {
	    scp->pid = 0;
	    scp->proc = NULL;
	    scp->smode.mode = VT_AUTO;
	}
	else {
	    sc_vtb_destroy(&scp->vtb);
#ifndef __sparc64__
	    sc_vtb_destroy(&scp->scr);
#endif
	    sc_free_history_buffer(scp, scp->ysize);
	    SC_STAT(tp) = NULL;
	    free(scp, M_DEVBUF);
	}
#else
	scp->pid = 0;
	scp->proc = NULL;
	scp->smode.mode = VT_AUTO;
#endif
	scp->kbd_mode = K_XLATE;
	if (scp == scp->sc->cur_scp)
	    (void)FUNC6(scp->sc->kbd, KDSKBMODE, (caddr_t)&scp->kbd_mode);
	FUNC0(5, ("done.\n"));
    }
}