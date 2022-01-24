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
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,...) ; 
 int BXE_PREV_WAIT_NEEDED ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS ; 
 int FW_MSG_CODE_DRV_UNLOAD_COMMON ; 
 int HW_LOCK_RESOURCE_NVRAM ; 
 int MCPR_ACCESS_LOCK_LOCK ; 
 int MCPR_NVM_SW_ARB_ARB_REQ_CLR1 ; 
 int MCP_REG_MCPR_ACCESS_LOCK ; 
 int MCP_REG_MCPR_NVM_SW_ARB ; 
 int MISC_REG_DRIVER_CONTROL_1 ; 
 int MISC_REG_DRIVER_CONTROL_7 ; 
 int FUNC3 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,int,int) ; 
 int FUNC5 (struct bxe_softc*) ; 
 int FUNC6 (struct bxe_softc*) ; 
 int FUNC7 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 int FUNC9 (struct bxe_softc*) ; 
 int FUNC10 (struct bxe_softc*) ; 

__attribute__((used)) static int
FUNC11(struct bxe_softc *sc)
{
    int time_counter = 10;
    uint32_t fw, hw_lock_reg, hw_lock_val;
    uint32_t rc = 0;

    /*
     * Clear HW from errors which may have resulted from an interrupted
     * DMAE transaction.
     */
    FUNC8(sc);

    /* Release previously held locks */
    hw_lock_reg =
        (FUNC5(sc) <= 5) ?
            (MISC_REG_DRIVER_CONTROL_1 + FUNC5(sc) * 8) :
            (MISC_REG_DRIVER_CONTROL_7 + (FUNC5(sc) - 6) * 8);

    hw_lock_val = (FUNC3(sc, hw_lock_reg));
    if (hw_lock_val) {
        if (hw_lock_val & HW_LOCK_RESOURCE_NVRAM) {
            FUNC0(sc, DBG_LOAD, "Releasing previously held NVRAM lock\n");
            FUNC4(sc, MCP_REG_MCPR_NVM_SW_ARB,
                   (MCPR_NVM_SW_ARB_ARB_REQ_CLR1 << FUNC6(sc)));
        }
        FUNC0(sc, DBG_LOAD, "Releasing previously held HW lock\n");
        FUNC4(sc, hw_lock_reg, 0xffffffff);
    } else {
        FUNC0(sc, DBG_LOAD, "No need to release HW/NVRAM locks\n");
    }

    if (MCPR_ACCESS_LOCK_LOCK & FUNC3(sc, MCP_REG_MCPR_ACCESS_LOCK)) {
        FUNC0(sc, DBG_LOAD, "Releasing previously held ALR\n");
        FUNC4(sc, MCP_REG_MCPR_ACCESS_LOCK, 0);
    }

    do {
        /* Lock MCP using an unload request */
        fw = FUNC7(sc, DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS, 0);
        if (!fw) {
            FUNC1(sc, "MCP response failure, aborting\n");
            rc = -1;
            break;
        }

        if (fw == FW_MSG_CODE_DRV_UNLOAD_COMMON) {
            rc = FUNC9(sc);
            break;
        }

        /* non-common reply from MCP night require looping */
        rc = FUNC10(sc);
        if (rc != BXE_PREV_WAIT_NEEDED) {
            break;
        }

        FUNC2(20000);
    } while (--time_counter);

    if (!time_counter || rc) {
        FUNC1(sc, "Failed to unload previous driver!"
            " time_counter %d rc %d\n", time_counter, rc);
        rc = -1;
    }

    return (rc);
}