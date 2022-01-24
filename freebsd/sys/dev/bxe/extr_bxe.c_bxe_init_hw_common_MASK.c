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
typedef  union cdu_context {int dummy; } cdu_context ;
typedef  int uint8_t ;
typedef  int uint32_t ;
struct ilt_client_info {int /*<<< orphan*/  client_num; scalar_t__ end; scalar_t__ start; } ;
struct ecore_ilt {int /*<<< orphan*/  client_num; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_3__ {int path_has_ovlan; } ;
struct TYPE_4__ {TYPE_1__ mf_info; } ;
struct bxe_softc {int dmae_ready; TYPE_2__ devinfo; int /*<<< orphan*/  qm_cid_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATC_REG_ATC_INIT_DONE ; 
 int /*<<< orphan*/  BLOCK_ATC ; 
 int /*<<< orphan*/  BLOCK_BRB1 ; 
 int /*<<< orphan*/  BLOCK_CCM ; 
 int /*<<< orphan*/  BLOCK_CDU ; 
 int /*<<< orphan*/  BLOCK_CFC ; 
 int /*<<< orphan*/  BLOCK_CSDM ; 
 int /*<<< orphan*/  BLOCK_CSEM ; 
 int /*<<< orphan*/  BLOCK_DMAE ; 
 int /*<<< orphan*/  BLOCK_DORQ ; 
 int /*<<< orphan*/  BLOCK_HC ; 
 int /*<<< orphan*/  BLOCK_IGU ; 
 int /*<<< orphan*/  BLOCK_MISC ; 
 int /*<<< orphan*/  BLOCK_MISC_AEU ; 
 int /*<<< orphan*/  BLOCK_NIG ; 
 int /*<<< orphan*/  BLOCK_PBF ; 
 int /*<<< orphan*/  BLOCK_PGLUE_B ; 
 int /*<<< orphan*/  BLOCK_PRS ; 
 int /*<<< orphan*/  BLOCK_PXP ; 
 int /*<<< orphan*/  BLOCK_PXP2 ; 
 int /*<<< orphan*/  BLOCK_QM ; 
 int /*<<< orphan*/  BLOCK_SRC ; 
 int /*<<< orphan*/  BLOCK_TCM ; 
 int /*<<< orphan*/  BLOCK_TM ; 
 int /*<<< orphan*/  BLOCK_TSDM ; 
 int /*<<< orphan*/  BLOCK_TSEM ; 
 int /*<<< orphan*/  BLOCK_UCM ; 
 int /*<<< orphan*/  BLOCK_UPB ; 
 int /*<<< orphan*/  BLOCK_USDM ; 
 int /*<<< orphan*/  BLOCK_USEM ; 
 int /*<<< orphan*/  BLOCK_XCM ; 
 int /*<<< orphan*/  BLOCK_XPB ; 
 int /*<<< orphan*/  BLOCK_XSDM ; 
 int /*<<< orphan*/  BLOCK_XSEM ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int) ; 
 int BXE_DB_SHIFT ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int BXE_PXP_DRAM_ALIGN ; 
 int* FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int CDU_REG_CDU_GLOBAL_PARAMS ; 
 int /*<<< orphan*/  CFC_REG_AC_INIT_DONE ; 
 int /*<<< orphan*/  CFC_REG_CAM_INIT_DONE ; 
 int CFC_REG_CFC_INT_MASK ; 
 int CFC_REG_DEBUG0 ; 
 int CFC_REG_INIT_REG ; 
 int /*<<< orphan*/  CFC_REG_LL_INIT_DONE ; 
 scalar_t__ FUNC4 (struct bxe_softc*) ; 
 scalar_t__ FUNC5 (struct bxe_softc*) ; 
 scalar_t__ FUNC6 (struct bxe_softc*) ; 
 scalar_t__ FUNC7 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*) ; 
 scalar_t__ FUNC9 (struct bxe_softc*) ; 
 scalar_t__ FUNC10 (struct bxe_softc*) ; 
 scalar_t__ FUNC11 (struct bxe_softc*) ; 
 scalar_t__ FUNC12 (struct bxe_softc*) ; 
 int /*<<< orphan*/  CSEM_REG_PASSIVE_BUFFER ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int DORQ_REG_DORQ_INT_MASK ; 
 int DORQ_REG_DPM_CID_OFST ; 
 int E2_FUNC_MAX ; 
 int GRCBASE_MISC ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_RESET ; 
 int IGU_REG_RESET_MEMORIES ; 
 int /*<<< orphan*/  ILT_CLIENT_TM ; 
 scalar_t__ ILT_NUM_PAGE_ENTRIES ; 
 int /*<<< orphan*/  INITOP_CLEAR ; 
 int /*<<< orphan*/  INITOP_SET ; 
 int FUNC14 (struct bxe_softc*) ; 
 scalar_t__ FUNC15 (struct bxe_softc*) ; 
 int FUNC16 (struct bxe_softc*) ; 
 int MISC_REGISTERS_RESET_REG_1_CLEAR ; 
 int MISC_REGISTERS_RESET_REG_1_SET ; 
 int MISC_REGISTERS_RESET_REG_2_MSTAT0 ; 
 int MISC_REGISTERS_RESET_REG_2_MSTAT1 ; 
 int MISC_REGISTERS_RESET_REG_2_SET ; 
 int NIG_REG_LLH_E1HOV_MODE ; 
 int NIG_REG_LLH_MF_MODE ; 
 int /*<<< orphan*/  NIG_REG_STAT2_BRB_OCTET ; 
 int PBF_REG_HDRS_AFTER_BASIC ; 
 int PBF_REG_HDRS_AFTER_TAG_0 ; 
 int PBF_REG_MUST_HAVE_HDRS ; 
 int PBF_REG_TAG_ETHERTYPE_0 ; 
 int PBF_REG_TAG_LEN_0 ; 
 int PCICFG_OFFSET ; 
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ; 
 int /*<<< orphan*/  PHASE_COMMON ; 
 int PRS_REG_A_PRSU_20 ; 
 int PRS_REG_E1HOV_MODE ; 
 int PRS_REG_HDRS_AFTER_BASIC ; 
 int PRS_REG_HDRS_AFTER_TAG_0 ; 
 int PRS_REG_MUST_HAVE_HDRS ; 
 int PRS_REG_TAG_ETHERTYPE_0 ; 
 int PRS_REG_TAG_LEN_0 ; 
 int PXP2_REG_PGL_TAGS_LIMIT ; 
 int /*<<< orphan*/  PXP2_REG_PXP2_INT_STS_CLR_0 ; 
 int PXP2_REG_RD_CDURD_SWAP_MODE ; 
 int PXP2_REG_RD_DISABLE_INPUTS ; 
 int /*<<< orphan*/  PXP2_REG_RD_INIT_DONE ; 
 int PXP2_REG_RD_QM_SWAP_MODE ; 
 int PXP2_REG_RD_SRC_SWAP_MODE ; 
 int PXP2_REG_RD_TM_SWAP_MODE ; 
 int PXP2_REG_RQ_CDU_ENDIAN_M ; 
 int /*<<< orphan*/  PXP2_REG_RQ_CFG_DONE ; 
 int PXP2_REG_RQ_DBG_ENDIAN_M ; 
 int PXP2_REG_RQ_DISABLE_INPUTS ; 
 int PXP2_REG_RQ_DRAM_ALIGN ; 
 int PXP2_REG_RQ_DRAM_ALIGN_RD ; 
 int PXP2_REG_RQ_DRAM_ALIGN_SEL ; 
 int PXP2_REG_RQ_HC_ENDIAN_M ; 
 int PXP2_REG_RQ_QM_ENDIAN_M ; 
 int PXP2_REG_RQ_SRC_ENDIAN_M ; 
 int PXP2_REG_RQ_TM_ENDIAN_M ; 
 int PXPCS_TL_CONTROL_5 ; 
 int PXPCS_TL_CONTROL_5_ERR_UNSPPORT ; 
 int PXPCS_TL_CONTROL_5_ERR_UNSPPORT1 ; 
 int PXPCS_TL_FUNC345_STAT ; 
 int PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT2 ; 
 int PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT3 ; 
 int PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT4 ; 
 int PXPCS_TL_FUNC678_STAT ; 
 int PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT5 ; 
 int PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT6 ; 
 int PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT7 ; 
 int PXP_REG_PXP_INT_MASK_0 ; 
 int QM_REG_SOFT_RESET ; 
 int FUNC17 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct bxe_softc*,int,int) ; 
 int FUNC19 (struct bxe_softc*) ; 
 int FUNC20 (struct bxe_softc*) ; 
 int SRC_REG_KEYSEARCH_0 ; 
 int SRC_REG_KEYSEARCH_1 ; 
 int SRC_REG_KEYSEARCH_2 ; 
 int SRC_REG_KEYSEARCH_3 ; 
 int SRC_REG_KEYSEARCH_4 ; 
 int SRC_REG_KEYSEARCH_5 ; 
 int SRC_REG_KEYSEARCH_6 ; 
 int SRC_REG_KEYSEARCH_7 ; 
 int SRC_REG_KEYSEARCH_8 ; 
 int SRC_REG_KEYSEARCH_9 ; 
 int SRC_REG_SOFT_RST ; 
 int TSEM_REG_FAST_MEMORY ; 
 int /*<<< orphan*/  TSEM_REG_PASSIVE_BUFFER ; 
 int /*<<< orphan*/  TSEM_REG_PRAM ; 
 int /*<<< orphan*/  USEM_REG_PASSIVE_BUFFER ; 
 int VFC_MEMORIES_RST_REG_CAM_RST ; 
 int VFC_MEMORIES_RST_REG_RAM_RST ; 
 int VFC_REG_MEMORIES_RST ; 
 int XSEM_REG_FAST_MEMORY ; 
 int /*<<< orphan*/  XSEM_REG_PASSIVE_BUFFER ; 
 int /*<<< orphan*/  FUNC21 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC24 (struct bxe_softc*) ; 
 scalar_t__ FUNC25 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC26 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC27 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC28 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC32 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC33 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC34 (struct bxe_softc*,struct ilt_client_info*,struct ilt_client_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC38 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct ilt_client_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC40 (struct bxe_softc*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * wb_data ; 

__attribute__((used)) static int
FUNC41(struct bxe_softc *sc)
{
    uint8_t abs_func_id;
    uint32_t val;

    FUNC0(sc, DBG_LOAD, "starting common init for func %d\n",
          FUNC19(sc));

    /*
     * take the RESET lock to protect undi_unload flow from accessing
     * registers while we are resetting the chip
     */
    FUNC21(sc, HW_LOCK_RESOURCE_RESET);

    FUNC31(sc);

    FUNC18(sc, (GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_SET), 0xffffffff);

    val = 0xfffc;
    if (FUNC7(sc)) {
        val |= MISC_REGISTERS_RESET_REG_2_MSTAT0;
        val |= MISC_REGISTERS_RESET_REG_2_MSTAT1;
    }

    FUNC18(sc, (GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET), val);

    FUNC30(sc, HW_LOCK_RESOURCE_RESET);

    FUNC36(sc, BLOCK_MISC, PHASE_COMMON);
    FUNC0(sc, DBG_LOAD, "after misc block init\n");

    if (!FUNC6(sc)) {
        /*
         * 4-port mode or 2-port mode we need to turn off master-enable for
         * everyone. After that we turn it back on for self. So, we disregard
         * multi-function, and always disable all functions on the given path,
         * this means 0,2,4,6 for path 0 and 1,3,5,7 for path 1
         */
        for (abs_func_id = FUNC20(sc);
             abs_func_id < (E2_FUNC_MAX * 2);
             abs_func_id += 2) {
            if (abs_func_id == FUNC19(sc)) {
                FUNC18(sc, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 1);
                continue;
            }

            FUNC28(sc, abs_func_id);

            /* clear pf enable */
            FUNC27(sc);

            FUNC28(sc, FUNC19(sc));
        }
    }

    FUNC0(sc, DBG_LOAD, "after pf disable\n");

    FUNC36(sc, BLOCK_PXP, PHASE_COMMON);

    if (FUNC4(sc)) {
        /*
         * enable HW interrupt from PXP on USDM overflow
         * bit 16 on INT_MASK_0
         */
        FUNC18(sc, PXP_REG_PXP_INT_MASK_0, 0);
    }

    FUNC36(sc, BLOCK_PXP2, PHASE_COMMON);
    FUNC24(sc);

#ifdef __BIG_ENDIAN
    REG_WR(sc, PXP2_REG_RQ_QM_ENDIAN_M, 1);
    REG_WR(sc, PXP2_REG_RQ_TM_ENDIAN_M, 1);
    REG_WR(sc, PXP2_REG_RQ_SRC_ENDIAN_M, 1);
    REG_WR(sc, PXP2_REG_RQ_CDU_ENDIAN_M, 1);
    REG_WR(sc, PXP2_REG_RQ_DBG_ENDIAN_M, 1);
    /* make sure this value is 0 */
    REG_WR(sc, PXP2_REG_RQ_HC_ENDIAN_M, 0);

    //REG_WR(sc, PXP2_REG_RD_PBF_SWAP_MODE, 1);
    REG_WR(sc, PXP2_REG_RD_QM_SWAP_MODE, 1);
    REG_WR(sc, PXP2_REG_RD_TM_SWAP_MODE, 1);
    REG_WR(sc, PXP2_REG_RD_SRC_SWAP_MODE, 1);
    REG_WR(sc, PXP2_REG_RD_CDURD_SWAP_MODE, 1);
#endif

    FUNC35(sc, INITOP_SET);

    if (FUNC10(sc) && FUNC5(sc)) {
        FUNC18(sc, PXP2_REG_PGL_TAGS_LIMIT, 0x1);
    }

    /* let the HW do it's magic... */
    FUNC13(100000);

    /* finish PXP init */
    val = FUNC17(sc, PXP2_REG_RQ_CFG_DONE);
    if (val != 1) {
        FUNC1(sc, "PXP2 CFG failed PXP2_REG_RQ_CFG_DONE val = 0x%x\n",
            val);
        return (-1);
    }
    val = FUNC17(sc, PXP2_REG_RD_INIT_DONE);
    if (val != 1) {
        FUNC1(sc, "PXP2 RD_INIT failed val = 0x%x\n", val);
        return (-1);
    }

    FUNC0(sc, DBG_LOAD, "after pxp init\n");

    /*
     * Timer bug workaround for E2 only. We need to set the entire ILT to have
     * entries with value "0" and valid bit on. This needs to be done by the
     * first PF that is loaded in a path (i.e. common phase)
     */
    if (!FUNC6(sc)) {
/*
 * In E2 there is a bug in the timers block that can cause function 6 / 7
 * (i.e. vnic3) to start even if it is marked as "scan-off".
 * This occurs when a different function (func2,3) is being marked
 * as "scan-off". Real-life scenario for example: if a driver is being
 * load-unloaded while func6,7 are down. This will cause the timer to access
 * the ilt, translate to a logical address and send a request to read/write.
 * Since the ilt for the function that is down is not valid, this will cause
 * a translation error which is unrecoverable.
 * The Workaround is intended to make sure that when this happens nothing
 * fatal will occur. The workaround:
 *  1.  First PF driver which loads on a path will:
 *      a.  After taking the chip out of reset, by using pretend,
 *          it will write "0" to the following registers of
 *          the other vnics.
 *          REG_WR(pdev, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 0);
 *          REG_WR(pdev, CFC_REG_WEAK_ENABLE_PF,0);
 *          REG_WR(pdev, CFC_REG_STRONG_ENABLE_PF,0);
 *          And for itself it will write '1' to
 *          PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER to enable
 *          dmae-operations (writing to pram for example.)
 *          note: can be done for only function 6,7 but cleaner this
 *            way.
 *      b.  Write zero+valid to the entire ILT.
 *      c.  Init the first_timers_ilt_entry, last_timers_ilt_entry of
 *          VNIC3 (of that port). The range allocated will be the
 *          entire ILT. This is needed to prevent  ILT range error.
 *  2.  Any PF driver load flow:
 *      a.  ILT update with the physical addresses of the allocated
 *          logical pages.
 *      b.  Wait 20msec. - note that this timeout is needed to make
 *          sure there are no requests in one of the PXP internal
 *          queues with "old" ILT addresses.
 *      c.  PF enable in the PGLC.
 *      d.  Clear the was_error of the PF in the PGLC. (could have
 *          occurred while driver was down)
 *      e.  PF enable in the CFC (WEAK + STRONG)
 *      f.  Timers scan enable
 *  3.  PF driver unload flow:
 *      a.  Clear the Timers scan_en.
 *      b.  Polling for scan_on=0 for that PF.
 *      c.  Clear the PF enable bit in the PXP.
 *      d.  Clear the PF enable in the CFC (WEAK + STRONG)
 *      e.  Write zero+valid to all ILT entries (The valid bit must
 *          stay set)
 *      f.  If this is VNIC 3 of a port then also init
 *          first_timers_ilt_entry to zero and last_timers_ilt_entry
 *          to the last enrty in the ILT.
 *
 *      Notes:
 *      Currently the PF error in the PGLC is non recoverable.
 *      In the future the there will be a recovery routine for this error.
 *      Currently attention is masked.
 *      Having an MCP lock on the load/unload process does not guarantee that
 *      there is no Timer disable during Func6/7 enable. This is because the
 *      Timers scan is currently being cleared by the MCP on FLR.
 *      Step 2.d can be done only for PF6/7 and the driver can also check if
 *      there is error before clearing it. But the flow above is simpler and
 *      more general.
 *      All ILT entries are written by zero+valid and not just PF6/7
 *      ILT entries since in the future the ILT entries allocation for
 *      PF-s might be dynamic.
 */
        struct ilt_client_info ilt_cli;
        struct ecore_ilt ilt;

        FUNC39(&ilt_cli, 0, sizeof(struct ilt_client_info));
        FUNC39(&ilt, 0, sizeof(struct ecore_ilt));

        /* initialize dummy TM client */
        ilt_cli.start      = 0;
        ilt_cli.end        = ILT_NUM_PAGE_ENTRIES - 1;
        ilt_cli.client_num = ILT_CLIENT_TM;

        /*
         * Step 1: set zeroes to all ilt page entries with valid bit on
         * Step 2: set the timers first/last ilt entry to point
         * to the entire range to prevent ILT range error for 3rd/4th
         * vnic (this code assumes existence of the vnic)
         *
         * both steps performed by call to ecore_ilt_client_init_op()
         * with dummy TM client
         *
         * we must use pretend since PXP2_REG_RQ_##blk##_FIRST_ILT
         * and his brother are split registers
         */

        FUNC28(sc, (FUNC20(sc) + 6));
        FUNC34(sc, &ilt, &ilt_cli, INITOP_CLEAR);
        FUNC28(sc, FUNC19(sc));

        FUNC18(sc, PXP2_REG_RQ_DRAM_ALIGN, BXE_PXP_DRAM_ALIGN);
        FUNC18(sc, PXP2_REG_RQ_DRAM_ALIGN_RD, BXE_PXP_DRAM_ALIGN);
        FUNC18(sc, PXP2_REG_RQ_DRAM_ALIGN_SEL, 1);
    }

    FUNC18(sc, PXP2_REG_RQ_DISABLE_INPUTS, 0);
    FUNC18(sc, PXP2_REG_RD_DISABLE_INPUTS, 0);

    if (!FUNC6(sc)) {
        int factor = FUNC9(sc) ? 1000 :
                     (FUNC10(sc) ? 400 : 0);

        FUNC36(sc, BLOCK_PGLUE_B, PHASE_COMMON);
        FUNC36(sc, BLOCK_ATC, PHASE_COMMON);

        /* let the HW do it's magic... */
        do {
            FUNC13(200000);
            val = FUNC17(sc, ATC_REG_ATC_INIT_DONE);
        } while (factor-- && (val != 1));

        if (val != 1) {
            FUNC1(sc, "ATC_INIT failed val = 0x%x\n", val);
            return (-1);
        }
    }

    FUNC0(sc, DBG_LOAD, "after pglue and atc init\n");

    FUNC36(sc, BLOCK_DMAE, PHASE_COMMON);

    FUNC26(sc);

    /* clean the DMAE memory */
    sc->dmae_ready = 1;
    FUNC37(sc, TSEM_REG_PRAM, 0, 8, 1);

    FUNC36(sc, BLOCK_TCM, PHASE_COMMON);

    FUNC36(sc, BLOCK_UCM, PHASE_COMMON);

    FUNC36(sc, BLOCK_CCM, PHASE_COMMON);

    FUNC36(sc, BLOCK_XCM, PHASE_COMMON);

    FUNC29(sc, XSEM_REG_PASSIVE_BUFFER, 3);
    FUNC29(sc, CSEM_REG_PASSIVE_BUFFER, 3);
    FUNC29(sc, TSEM_REG_PASSIVE_BUFFER, 3);
    FUNC29(sc, USEM_REG_PASSIVE_BUFFER, 3);

    FUNC36(sc, BLOCK_QM, PHASE_COMMON);

    /* QM queues pointers table */
    FUNC38(sc, sc->qm_cid_count, INITOP_SET);

    /* soft reset pulse */
    FUNC18(sc, QM_REG_SOFT_RESET, 1);
    FUNC18(sc, QM_REG_SOFT_RESET, 0);

    if (FUNC12(sc))
        FUNC36(sc, BLOCK_TM, PHASE_COMMON);

    FUNC36(sc, BLOCK_DORQ, PHASE_COMMON);
    FUNC18(sc, DORQ_REG_DPM_CID_OFST, BXE_DB_SHIFT);
    if (!FUNC11(sc)) {
        /* enable hw interrupt from doorbell Q */
        FUNC18(sc, DORQ_REG_DORQ_INT_MASK, 0);
    }

    FUNC36(sc, BLOCK_BRB1, PHASE_COMMON);

    FUNC36(sc, BLOCK_PRS, PHASE_COMMON);
    FUNC18(sc, PRS_REG_A_PRSU_20, 0xf);

    if (!FUNC4(sc)) {
        FUNC18(sc, PRS_REG_E1HOV_MODE, sc->devinfo.mf_info.path_has_ovlan);
    }

    if (!FUNC6(sc) && !FUNC8(sc)) {
        if (FUNC15(sc)) {
            /*
             * configure that AFEX and VLAN headers must be
             * received in AFEX mode
             */
            FUNC18(sc, PRS_REG_HDRS_AFTER_BASIC, 0xE);
            FUNC18(sc, PRS_REG_MUST_HAVE_HDRS, 0xA);
            FUNC18(sc, PRS_REG_HDRS_AFTER_TAG_0, 0x6);
            FUNC18(sc, PRS_REG_TAG_ETHERTYPE_0, 0x8926);
            FUNC18(sc, PRS_REG_TAG_LEN_0, 0x4);
        } else {
            /*
             * Bit-map indicating which L2 hdrs may appear
             * after the basic Ethernet header
             */
            FUNC18(sc, PRS_REG_HDRS_AFTER_BASIC,
                   sc->devinfo.mf_info.path_has_ovlan ? 7 : 6);
        }
    }

    FUNC36(sc, BLOCK_TSDM, PHASE_COMMON);
    FUNC36(sc, BLOCK_CSDM, PHASE_COMMON);
    FUNC36(sc, BLOCK_USDM, PHASE_COMMON);
    FUNC36(sc, BLOCK_XSDM, PHASE_COMMON);

    if (!FUNC6(sc)) {
        /* reset VFC memories */
        FUNC18(sc, TSEM_REG_FAST_MEMORY + VFC_REG_MEMORIES_RST,
               VFC_MEMORIES_RST_REG_CAM_RST |
               VFC_MEMORIES_RST_REG_RAM_RST);
        FUNC18(sc, XSEM_REG_FAST_MEMORY + VFC_REG_MEMORIES_RST,
               VFC_MEMORIES_RST_REG_CAM_RST |
               VFC_MEMORIES_RST_REG_RAM_RST);

        FUNC13(20000);
    }

    FUNC36(sc, BLOCK_TSEM, PHASE_COMMON);
    FUNC36(sc, BLOCK_USEM, PHASE_COMMON);
    FUNC36(sc, BLOCK_CSEM, PHASE_COMMON);
    FUNC36(sc, BLOCK_XSEM, PHASE_COMMON);

    /* sync semi rtc */
    FUNC18(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_CLEAR,
           0x80000000);
    FUNC18(sc, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_SET,
           0x80000000);

    FUNC36(sc, BLOCK_UPB, PHASE_COMMON);
    FUNC36(sc, BLOCK_XPB, PHASE_COMMON);
    FUNC36(sc, BLOCK_PBF, PHASE_COMMON);

    if (!FUNC6(sc)) {
        if (FUNC15(sc)) {
            /*
             * configure that AFEX and VLAN headers must be
             * sent in AFEX mode
             */
            FUNC18(sc, PBF_REG_HDRS_AFTER_BASIC, 0xE);
            FUNC18(sc, PBF_REG_MUST_HAVE_HDRS, 0xA);
            FUNC18(sc, PBF_REG_HDRS_AFTER_TAG_0, 0x6);
            FUNC18(sc, PBF_REG_TAG_ETHERTYPE_0, 0x8926);
            FUNC18(sc, PBF_REG_TAG_LEN_0, 0x4);
        } else {
            FUNC18(sc, PBF_REG_HDRS_AFTER_BASIC,
                   sc->devinfo.mf_info.path_has_ovlan ? 7 : 6);
        }
    }

    FUNC18(sc, SRC_REG_SOFT_RST, 1);

    FUNC36(sc, BLOCK_SRC, PHASE_COMMON);

    if (FUNC12(sc)) {
        FUNC18(sc, SRC_REG_KEYSEARCH_0, 0x63285672);
        FUNC18(sc, SRC_REG_KEYSEARCH_1, 0x24b8f2cc);
        FUNC18(sc, SRC_REG_KEYSEARCH_2, 0x223aef9b);
        FUNC18(sc, SRC_REG_KEYSEARCH_3, 0x26001e3a);
        FUNC18(sc, SRC_REG_KEYSEARCH_4, 0x7ae91116);
        FUNC18(sc, SRC_REG_KEYSEARCH_5, 0x5ce5230b);
        FUNC18(sc, SRC_REG_KEYSEARCH_6, 0x298d8adf);
        FUNC18(sc, SRC_REG_KEYSEARCH_7, 0x6eb0ff09);
        FUNC18(sc, SRC_REG_KEYSEARCH_8, 0x1830f82f);
        FUNC18(sc, SRC_REG_KEYSEARCH_9, 0x01e46be7);
    }
    FUNC18(sc, SRC_REG_SOFT_RST, 0);

    if (sizeof(union cdu_context) != 1024) {
        /* we currently assume that a context is 1024 bytes */
        FUNC1(sc, "please adjust the size of cdu_context(%ld)\n",
              (long)sizeof(union cdu_context));
    }

    FUNC36(sc, BLOCK_CDU, PHASE_COMMON);
    val = (4 << 24) + (0 << 12) + 1024;
    FUNC18(sc, CDU_REG_CDU_GLOBAL_PARAMS, val);

    FUNC36(sc, BLOCK_CFC, PHASE_COMMON);

    FUNC18(sc, CFC_REG_INIT_REG, 0x7FF);
    /* enable context validation interrupt from CFC */
    FUNC18(sc, CFC_REG_CFC_INT_MASK, 0);

    /* set the thresholds to prevent CFC/CDU race */
    FUNC18(sc, CFC_REG_DEBUG0, 0x20020000);
    FUNC36(sc, BLOCK_HC, PHASE_COMMON);

    if (!FUNC6(sc) && FUNC2(sc)) {
        FUNC18(sc, IGU_REG_RESET_MEMORIES, 0x36);
    }

    FUNC36(sc, BLOCK_IGU, PHASE_COMMON);
    FUNC36(sc, BLOCK_MISC_AEU, PHASE_COMMON);

    /* Reset PCIE errors for debug */
    FUNC18(sc, 0x2814, 0xffffffff);
    FUNC18(sc, 0x3820, 0xffffffff);

    if (!FUNC6(sc)) {
        FUNC18(sc, PCICFG_OFFSET + PXPCS_TL_CONTROL_5,
               (PXPCS_TL_CONTROL_5_ERR_UNSPPORT1 |
                PXPCS_TL_CONTROL_5_ERR_UNSPPORT));
        FUNC18(sc, PCICFG_OFFSET + PXPCS_TL_FUNC345_STAT,
               (PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT4 |
                PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT3 |
                PXPCS_TL_FUNC345_STAT_ERR_UNSPPORT2));
        FUNC18(sc, PCICFG_OFFSET + PXPCS_TL_FUNC678_STAT,
               (PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT7 |
                PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT6 |
                PXPCS_TL_FUNC678_STAT_ERR_UNSPPORT5));
    }

    FUNC36(sc, BLOCK_NIG, PHASE_COMMON);

    if (!FUNC4(sc)) {
        /* in E3 this done in per-port section */
        if (!FUNC7(sc))
            FUNC18(sc, NIG_REG_LLH_MF_MODE, FUNC14(sc));
    }

    if (FUNC5(sc)) {
        /* not applicable for E2 (and above ...) */
        FUNC18(sc, NIG_REG_LLH_E1HOV_MODE, FUNC16(sc));
    }

    if (FUNC11(sc)) {
        FUNC13(200000);
    }

    /* finish CFC init */
    val = FUNC40(sc, CFC_REG_LL_INIT_DONE, 1, 100, 10);
    if (val != 1) {
        FUNC1(sc, "CFC LL_INIT failed val=0x%x\n", val);
        return (-1);
    }
    val = FUNC40(sc, CFC_REG_AC_INIT_DONE, 1, 100, 10);
    if (val != 1) {
        FUNC1(sc, "CFC AC_INIT failed val=0x%x\n", val);
        return (-1);
    }
    val = FUNC40(sc, CFC_REG_CAM_INIT_DONE, 1, 100, 10);
    if (val != 1) {
        FUNC1(sc, "CFC CAM_INIT failed val=0x%x\n", val);
        return (-1);
    }
    FUNC18(sc, CFC_REG_DEBUG0, 0);

    if (FUNC4(sc)) {
        /* read NIG statistic to see if this is our first up since powerup */
        FUNC29(sc, NIG_REG_STAT2_BRB_OCTET, 2);
        val = *FUNC3(sc, wb_data[0]);

        /* do internal memory self test */
        if ((val == 0) && FUNC25(sc)) {
            FUNC1(sc, "internal mem self test failed val=0x%x\n", val);
            return (-1);
        }
    }

    FUNC32(sc);

    /* clear PXP2 attentions */
    FUNC17(sc, PXP2_REG_PXP2_INT_STS_CLR_0);

    FUNC23(sc);

    if (!FUNC11(sc)) {
        FUNC33(sc);
    }

    if (!FUNC2(sc)) {
        if (FUNC6(sc)) {
            FUNC22(sc);
        }
    }

    return (0);
}