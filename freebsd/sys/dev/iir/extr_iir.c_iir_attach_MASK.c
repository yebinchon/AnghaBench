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
struct gdt_softc {int sc_bus_cnt; int /*<<< orphan*/  sc_state; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/ * sims; int /*<<< orphan*/ * paths; int /*<<< orphan*/  sc_devnode; } ;
struct cam_devq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gdt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_INIT ; 
 int /*<<< orphan*/  GDT_MAXCMDS ; 
 int /*<<< orphan*/  GDT_NORMAL ; 
 int /*<<< orphan*/  SHUTDOWN_PRI_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct gdt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct cam_devq* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iir_action ; 
 int /*<<< orphan*/  iir_poll ; 
 int /*<<< orphan*/  iir_shutdown ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(struct gdt_softc *gdt)
{
    struct cam_devq *devq;
    int i;

    FUNC1(GDT_D_INIT, ("iir_attach()\n"));

    /*
     * Create the device queue for our SIM.
     * XXX Throttle this down since the card has problems under load.
     */
    devq = FUNC5(32);
    if (devq == NULL)
        return;

    for (i = 0; i < gdt->sc_bus_cnt; i++) {
        /*
         * Construct our SIM entry
         */
        gdt->sims[i] = FUNC2(iir_action, iir_poll, "iir",
	    gdt, FUNC6(gdt->sc_devnode), &gdt->sc_lock,
	    /*untagged*/1, /*tagged*/GDT_MAXCMDS, devq);
	FUNC7(&gdt->sc_lock);
        if (FUNC10(gdt->sims[i], gdt->sc_devnode, i) != CAM_SUCCESS) {
            FUNC3(gdt->sims[i], /*free_devq*/i == 0);
	    FUNC8(&gdt->sc_lock);
            break;
        }

        if (FUNC11(&gdt->paths[i], /*periph*/NULL,
                            FUNC4(gdt->sims[i]),
                            CAM_TARGET_WILDCARD,
                            CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
            FUNC9(FUNC4(gdt->sims[i]));
            FUNC3(gdt->sims[i], /*free_devq*/i == 0);
	    FUNC8(&gdt->sc_lock);
            break;
        }
	FUNC8(&gdt->sc_lock);
    }
    if (i > 0)
        FUNC0(shutdown_final, iir_shutdown,
                              gdt, SHUTDOWN_PRI_DEFAULT);
    /* iir_watchdog(gdt); */
    gdt->sc_state = GDT_NORMAL;
}