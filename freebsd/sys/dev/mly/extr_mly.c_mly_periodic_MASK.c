#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mly_softc {int mly_cam_channels; int /*<<< orphan*/  mly_periodic; TYPE_2__** mly_btl; TYPE_1__* mly_controllerparam; } ;
struct TYPE_4__ {int mb_flags; } ;
struct TYPE_3__ {int initiator_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mly_softc*) ; 
 int MLY_BTL_RESCAN ; 
 scalar_t__ FUNC1 (struct mly_softc*,int) ; 
 int MLY_MAX_TARGETS ; 
 int MLY_PERIODIC_INTERVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mly_softc*,int,int) ; 

__attribute__((used)) static void
FUNC6(void *data)
{
    struct mly_softc	*sc = (struct mly_softc *)data;
    int			bus, target;

    FUNC3(2);
    FUNC0(sc);

    /*
     * Scan devices.
     */
    for (bus = 0; bus < sc->mly_cam_channels; bus++) {
	if (FUNC1(sc, bus)) {
	    for (target = 0; target < MLY_MAX_TARGETS; target++) {

		/* ignore the controller in this scan */
		if (target == sc->mly_controllerparam->initiator_id)
		    continue;

		/* perform device rescan? */
		if (sc->mly_btl[bus][target].mb_flags & MLY_BTL_RESCAN)
		    FUNC5(sc, bus, target);
	    }
	}
    }
    
    /* check for controller events */
    FUNC4(sc);

    /* reschedule ourselves */
    FUNC2(&sc->mly_periodic, MLY_PERIODIC_INTERVAL * hz);
}