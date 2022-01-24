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
struct ecore_func_state_params {int /*<<< orphan*/  ramrod_flags; int /*<<< orphan*/  cmd; int /*<<< orphan*/ * f_obj; int /*<<< orphan*/ * member_0; } ;
struct bxe_softc {int /*<<< orphan*/  func_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  ECORE_F_CMD_STOP ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  RAMROD_DRV_CLR_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct bxe_softc*,struct ecore_func_state_params*) ; 

__attribute__((used)) static int
FUNC3(struct bxe_softc *sc)
{
    struct ecore_func_state_params func_params = { NULL };
    int rc;

    /* prepare parameters for function state transitions */
    FUNC1(RAMROD_COMP_WAIT, &func_params.ramrod_flags);
    func_params.f_obj = &sc->func_obj;
    func_params.cmd = ECORE_F_CMD_STOP;

    /*
     * Try to stop the function the 'good way'. If it fails (in case
     * of a parity error during bxe_chip_cleanup()) and we are
     * not in a debug mode, perform a state transaction in order to
     * enable further HW_RESET transaction.
     */
    rc = FUNC2(sc, &func_params);
    if (rc) {
        FUNC0(sc, "FUNC_STOP ramrod failed. "
                  "Running a dry transaction (%d)\n", rc);
        FUNC1(RAMROD_DRV_CLR_ONLY, &func_params.ramrod_flags);
        return (FUNC2(sc, &func_params));
    }

    return (0);
}