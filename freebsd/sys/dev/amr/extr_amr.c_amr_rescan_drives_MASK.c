#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cdev {scalar_t__ si_drv1; } ;
struct amr_softc {TYPE_1__* amr_drive; int /*<<< orphan*/  amr_dev; int /*<<< orphan*/  amr_state; scalar_t__ amr_busyslots; } ;
struct TYPE_2__ {scalar_t__ al_disk; } ;

/* Variables and functions */
 int AMR_MAXLD ; 
 int /*<<< orphan*/  AMR_STATE_REMAP_LD ; 
 int /*<<< orphan*/  AMR_STATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct amr_softc*) ; 
 scalar_t__ FUNC1 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct amr_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(struct cdev *dev)
{
    struct amr_softc	*sc = (struct amr_softc *)dev->si_drv1;
    int			i, error = 0;

    sc->amr_state |= AMR_STATE_REMAP_LD;
    while (sc->amr_busyslots) {
	FUNC4(sc->amr_dev, "idle controller\n");
	FUNC0(sc);
    }

    /* mark ourselves as in-shutdown */
    sc->amr_state |= AMR_STATE_SHUTDOWN;

    /* flush controller */
    FUNC4(sc->amr_dev, "flushing cache...");
    FUNC5("%s\n", FUNC1(sc) ? "failed" : "done");

    /* delete all our child devices */
    for(i = 0 ; i < AMR_MAXLD; i++) {
	if(sc->amr_drive[i].al_disk != 0) {
	    if((error = FUNC3(sc->amr_dev,
		sc->amr_drive[i].al_disk)) != 0)
		goto shutdown_out;

	     sc->amr_drive[i].al_disk = 0;
	}
    }

shutdown_out:
    FUNC2(sc);
}