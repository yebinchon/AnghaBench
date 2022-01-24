#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_10__ {int periodic_flags; } ;
struct TYPE_9__ {scalar_t__ pmf; } ;
struct TYPE_7__ {int /*<<< orphan*/ * mf_config; } ;
struct TYPE_8__ {TYPE_1__ mf_info; } ;
struct bxe_softc {int /*<<< orphan*/  sp_err_timeout_task; TYPE_4__ link_vars; TYPE_3__ port; TYPE_2__ devinfo; } ;
struct TYPE_12__ {int /*<<< orphan*/  drv_status; } ;
struct TYPE_11__ {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,...) ; 
 int /*<<< orphan*/  BXE_ERR_MCP_ASSERT ; 
 int /*<<< orphan*/  BXE_ERR_MC_ASSERT ; 
 int BXE_GRC_RSV ; 
 int BXE_GRC_TIMEOUT ; 
 int BXE_MCP_ASSERT ; 
 int BXE_MC_ASSERT_BITS ; 
 int FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bxe_softc*) ; 
 int DRV_STATUS_DCC_EVENT_MASK ; 
 int DRV_STATUS_DRV_INFO_REQ ; 
 int DRV_STATUS_EEE_NEGOTIATION_RESULTS ; 
 int DRV_STATUS_PMF ; 
 int DRV_STATUS_SET_MF_BW ; 
 int ELINK_PERIODIC_FLAGS_LINK_EVENT ; 
 int EVEREST_GEN_ATTN_IN_USE_MASK ; 
 int EVEREST_LATCHED_ATTN_IN_USE_MASK ; 
 scalar_t__ FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ MISC_REG_AEU_CLR_LATCH_SIGNAL ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_10 ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_11 ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_12 ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_7 ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_8 ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_9 ; 
 int /*<<< orphan*/  MISC_REG_GRC_RSV_ATTN ; 
 int /*<<< orphan*/  MISC_REG_GRC_TIMEOUT_ATTN ; 
 int FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,scalar_t__,int) ; 
 size_t FUNC8 (struct bxe_softc*) ; 
 int FUNC9 (struct bxe_softc*) ; 
 size_t FUNC10 (struct bxe_softc*) ; 
 size_t FUNC11 (struct bxe_softc*) ; 
 int FUNC12 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC24 (struct bxe_softc*) ; 
 TYPE_6__* func_mb ; 
 TYPE_5__* func_mf_config ; 
 int hz ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC26(struct bxe_softc *sc,
                         uint32_t         attn)
{
    int func = FUNC9(sc);
    uint32_t val;

    if (attn & EVEREST_GEN_ATTN_IN_USE_MASK) {

        if (attn & FUNC1(sc)) {

            FUNC7(sc, MISC_REG_AEU_GENERAL_ATTN_12 + func*4, 0);
            FUNC22(sc);
            sc->devinfo.mf_info.mf_config[FUNC11(sc)] =
                FUNC5(sc, func_mf_config[FUNC8(sc)].config);
            val = FUNC12(sc, func_mb[FUNC10(sc)].drv_status);

            if (val & DRV_STATUS_DCC_EVENT_MASK)
                FUNC14(sc, (val & DRV_STATUS_DCC_EVENT_MASK));

            if (val & DRV_STATUS_SET_MF_BW)
                FUNC24(sc);

            if (val & DRV_STATUS_DRV_INFO_REQ)
                FUNC15(sc);

            if ((sc->port.pmf == 0) && (val & DRV_STATUS_PMF))
                FUNC21(sc);

            if (val & DRV_STATUS_EEE_NEGOTIATION_RESULTS)
                FUNC16(sc);

            if (sc->link_vars.periodic_flags &
                ELINK_PERIODIC_FLAGS_LINK_EVENT) {
                /* sync with link */
		FUNC13(sc);
                sc->link_vars.periodic_flags &=
                    ~ELINK_PERIODIC_FLAGS_LINK_EVENT;
		FUNC23(sc);
                if (FUNC4(sc))
                    ; // XXX bxe_link_sync_notify(sc);
                FUNC18(sc);
            }

            /*
             * Always call it here: bxe_link_report() will
             * prevent the link indication duplication.
             */
            FUNC19(sc);

        } else if (attn & BXE_MC_ASSERT_BITS) {

            FUNC0(sc, "MC assert!\n");
            FUNC20(sc);
            FUNC7(sc, MISC_REG_AEU_GENERAL_ATTN_10, 0);
            FUNC7(sc, MISC_REG_AEU_GENERAL_ATTN_9, 0);
            FUNC7(sc, MISC_REG_AEU_GENERAL_ATTN_8, 0);
            FUNC7(sc, MISC_REG_AEU_GENERAL_ATTN_7, 0);
            FUNC17(sc);
            FUNC2(sc, BXE_ERR_MC_ASSERT);
            FUNC25(taskqueue_thread,
                &sc->sp_err_timeout_task, hz/10);
	
        } else if (attn & BXE_MCP_ASSERT) {

            FUNC0(sc, "MCP assert!\n");
            FUNC7(sc, MISC_REG_AEU_GENERAL_ATTN_11, 0);
            FUNC2(sc, BXE_ERR_MCP_ASSERT);
            FUNC25(taskqueue_thread,
                &sc->sp_err_timeout_task, hz/10);
            FUNC17(sc);  /*avoid repetive assert alert */


        } else {
            FUNC0(sc, "Unknown HW assert! (attn 0x%08x)\n", attn);
        }
    }

    if (attn & EVEREST_LATCHED_ATTN_IN_USE_MASK) {
        FUNC0(sc, "LATCHED attention 0x%08x (masked)\n", attn);
        if (attn & BXE_GRC_TIMEOUT) {
            val = FUNC3(sc) ? 0 : FUNC6(sc, MISC_REG_GRC_TIMEOUT_ATTN);
            FUNC0(sc, "GRC time-out 0x%08x\n", val);
        }
        if (attn & BXE_GRC_RSV) {
            val = FUNC3(sc) ? 0 : FUNC6(sc, MISC_REG_GRC_RSV_ATTN);
            FUNC0(sc, "GRC reserved 0x%08x\n", val);
        }
        FUNC7(sc, MISC_REG_AEU_CLR_LATCH_SIGNAL, 0x7ff);
    }
}