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
typedef  int uint32_t ;
struct TYPE_3__ {int* mf_config; } ;
struct TYPE_4__ {TYPE_1__ mf_info; } ;
struct bxe_softc {int /*<<< orphan*/  flags; TYPE_2__ devinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  BXE_MF_FUNC_DIS ; 
 int /*<<< orphan*/  DBG_INTR ; 
 int /*<<< orphan*/  DRV_MSG_CODE_DCC_FAILURE ; 
 int /*<<< orphan*/  DRV_MSG_CODE_DCC_OK ; 
 int DRV_STATUS_DCC_BANDWIDTH_ALLOCATION ; 
 int DRV_STATUS_DCC_DISABLE_ENABLE_PF ; 
 int FUNC_MF_CFG_FUNC_DISABLED ; 
 size_t FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bxe_softc *sc,
              uint32_t         dcc_event)
{
    FUNC0(sc, DBG_INTR, "dcc_event 0x%08x\n", dcc_event);

    if (dcc_event & DRV_STATUS_DCC_DISABLE_ENABLE_PF) {
        /*
         * This is the only place besides the function initialization
         * where the sc->flags can change so it is done without any
         * locks
         */
        if (sc->devinfo.mf_info.mf_config[FUNC1(sc)] & FUNC_MF_CFG_FUNC_DISABLED) {
            FUNC0(sc, DBG_INTR, "mf_cfg function disabled\n");
            sc->flags |= BXE_MF_FUNC_DIS;
            FUNC3(sc);
        } else {
            FUNC0(sc, DBG_INTR, "mf_cfg function enabled\n");
            sc->flags &= ~BXE_MF_FUNC_DIS;
            FUNC4(sc);
        }
        dcc_event &= ~DRV_STATUS_DCC_DISABLE_ENABLE_PF;
    }

    if (dcc_event & DRV_STATUS_DCC_BANDWIDTH_ALLOCATION) {
        FUNC2(sc);
        dcc_event &= ~DRV_STATUS_DCC_BANDWIDTH_ALLOCATION;
    }

    /* Report results to MCP */
    if (dcc_event)
        FUNC5(sc, DRV_MSG_CODE_DCC_FAILURE, 0);
    else
        FUNC5(sc, DRV_MSG_CODE_DCC_OK, 0);
}