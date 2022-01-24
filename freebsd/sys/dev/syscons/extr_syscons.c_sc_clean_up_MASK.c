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
struct TYPE_6__ {int /*<<< orphan*/  status; TYPE_2__* sc; } ;
typedef  TYPE_1__ scr_stat ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MOUSE_HIDDEN ; 
 int SC_SCRN_BLANKED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_2__*) ; 

int
FUNC4(scr_stat *scp)
{
#ifdef DEV_SPLASH
    int error;
#endif

    if (scp->sc->flags & SC_SCRN_BLANKED) {
	FUNC2();
#ifdef DEV_SPLASH
	if ((error = wait_scrn_saver_stop(scp->sc)))
	    return error;
#endif
    }
    scp->status |= MOUSE_HIDDEN;
    FUNC1(scp);
    FUNC0(scp);
    return 0;
}