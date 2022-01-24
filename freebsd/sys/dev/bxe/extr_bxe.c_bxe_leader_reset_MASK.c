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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct bxe_softc {scalar_t__ is_leader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_LOAD_DONE ; 
 int /*<<< orphan*/  DRV_MSG_CODE_LOAD_REQ ; 
 int /*<<< orphan*/  DRV_MSG_CODE_LOAD_REQ_WITH_LFA ; 
 int /*<<< orphan*/  DRV_MSG_CODE_UNLOAD_DONE ; 
 int /*<<< orphan*/  DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP ; 
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON ; 
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON_CHIP ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 scalar_t__ FUNC4 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 
 scalar_t__ FUNC7 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(struct bxe_softc *sc)
{
    int rc = 0;
    uint8_t global = FUNC7(sc);
    uint32_t load_code;

    /*
     * If not going to reset MCP, load "fake" driver to reset HW while
     * driver is owner of the HW.
     */
    if (!global && !FUNC1(sc)) {
        load_code = FUNC4(sc, DRV_MSG_CODE_LOAD_REQ,
                                   DRV_MSG_CODE_LOAD_REQ_WITH_LFA);
        if (!load_code) {
            FUNC0(sc, "MCP response failure, aborting\n");
            rc = -1;
            goto exit_leader_reset;
        }

        if ((load_code != FW_MSG_CODE_DRV_LOAD_COMMON_CHIP) &&
            (load_code != FW_MSG_CODE_DRV_LOAD_COMMON)) {
            FUNC0(sc, "MCP unexpected response, aborting\n");
            rc = -1;
            goto exit_leader_reset2;
        }

        load_code = FUNC4(sc, DRV_MSG_CODE_LOAD_DONE, 0);
        if (!load_code) {
            FUNC0(sc, "MCP response failure, aborting\n");
            rc = -1;
            goto exit_leader_reset2;
        }
    }

    /* try to recover after the failure */
    if (FUNC5(sc, global)) {
        FUNC0(sc, "Something bad occurred on engine %d!\n", FUNC2(sc));
        rc = -1;
        goto exit_leader_reset2;
    }

    /*
     * Clear the RESET_IN_PROGRESS and RESET_GLOBAL bits and update the driver
     * state.
     */
    FUNC8(sc);
    if (global) {
        FUNC3(sc);
    }

exit_leader_reset2:

    /* unload "fake driver" if it was loaded */
    if (!global && !FUNC1(sc)) {
        FUNC4(sc, DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP, 0);
        FUNC4(sc, DRV_MSG_CODE_UNLOAD_DONE, 0);
    }

exit_leader_reset:

    sc->is_leader = 0;
    FUNC6(sc);

    FUNC9();
    return (rc);
}