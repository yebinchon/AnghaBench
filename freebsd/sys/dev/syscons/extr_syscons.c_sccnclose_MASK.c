#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sc_cnstate {void* kbd_opened; void* scr_opened; } ;
struct TYPE_7__ {scalar_t__ kbd_open_level; int /*<<< orphan*/  kbd; TYPE_1__* cur_scp; } ;
typedef  TYPE_2__ sc_softc_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  kbd_mode; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  KDSKBMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct sc_cnstate*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct sc_cnstate*) ; 

__attribute__((used)) static void
FUNC5(sc_softc_t *sc, struct sc_cnstate *sp)
{
    sp->scr_opened = FALSE;
    FUNC4(sc, sp);

    if (!sp->kbd_opened)
	return;

    /* Restore keyboard mode (for the current, possibly-changed scp). */
    FUNC2(sc->kbd, FALSE);
    if (--sc->kbd_open_level == 0)
	(void)FUNC1(sc->kbd, KDSKBMODE, (caddr_t)&sc->cur_scp->kbd_mode);

    FUNC0(sc->kbd);
    sp->kbd_opened = FALSE;
    FUNC3(sc, sp);
}