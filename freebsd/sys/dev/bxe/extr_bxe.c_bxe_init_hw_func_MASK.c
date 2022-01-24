#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct ecore_ilt {TYPE_4__* lines; TYPE_2__* clients; } ;
struct TYPE_6__ {scalar_t__ int_block; } ;
struct bxe_softc {scalar_t__ interrupt_mode; int dmae_ready; int igu_sb_cnt; int igu_base_sb; int igu_dsb_id; int /*<<< orphan*/  link_params; TYPE_1__ devinfo; TYPE_5__* context; struct ecore_ilt* ilt; } ;
struct TYPE_8__ {int /*<<< orphan*/  paddr; } ;
struct TYPE_10__ {int /*<<< orphan*/  size; TYPE_3__ vcxt_dma; int /*<<< orphan*/  vcxt; } ;
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  page_mapping; int /*<<< orphan*/  page; } ;
struct TYPE_7__ {int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTENTION_ID ; 
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 scalar_t__ BAR_TSTRORM_INTMEM ; 
 scalar_t__ BAR_USTRORM_INTMEM ; 
 scalar_t__ BAR_XSTRORM_INTMEM ; 
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
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int BXE_MAX_NUM_OF_VFS ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int CFC_REG_WEAK_ENABLE_PF ; 
 scalar_t__ FUNC3 (struct bxe_softc*) ; 
 scalar_t__ FUNC4 (struct bxe_softc*) ; 
 scalar_t__ FUNC5 (struct bxe_softc*) ; 
 scalar_t__ FUNC6 (struct bxe_softc*) ; 
 int CSEM_REG_VFPF_ERR_NUM ; 
 int /*<<< orphan*/  CSTORM_ID ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int E1HVN_MAX ; 
 int HC_CONFIG_0_REG_MSI_ATTN_EN_0 ; 
 int HC_REG_CONFIG_0 ; 
 int HC_REG_CONFIG_1 ; 
 int HC_REG_HC_PRTY_STS_CLR ; 
 int HC_REG_LEADING_EDGE_0 ; 
 int HC_REG_MAIN_MEMORY ; 
 int HC_REG_MAIN_MEMORY_SIZE ; 
 int HC_REG_TRAILING_EDGE_0 ; 
 int IGU_BC_BASE_DSB_PROD ; 
 int IGU_BC_DSB_NUM_SEGS ; 
 int IGU_BC_NDSB_NUM_SEGS ; 
 int /*<<< orphan*/  IGU_INT_NOP ; 
 int IGU_NORM_BASE_DSB_PROD ; 
 int IGU_NORM_DSB_NUM_SEGS ; 
 int IGU_NORM_NDSB_NUM_SEGS ; 
 int IGU_PF_CONF_FUNC_EN ; 
 int IGU_PF_CONF_SINGLE_ISR_EN ; 
 int IGU_REG_LEADING_EDGE_LATCH ; 
 int IGU_REG_PBA_STATUS_LSB ; 
 int IGU_REG_PBA_STATUS_MSB ; 
 int IGU_REG_PF_CONFIGURATION ; 
 int IGU_REG_PROD_CONS_MEMORY ; 
 int IGU_REG_SB_INT_BEFORE_MASK_LSB ; 
 int IGU_REG_SB_INT_BEFORE_MASK_MSB ; 
 int IGU_REG_SB_MASK_LSB ; 
 int IGU_REG_SB_MASK_MSB ; 
 int IGU_REG_TRAILING_EDGE_LATCH ; 
 size_t ILT_CLIENT_CDU ; 
 int /*<<< orphan*/  INITOP_SET ; 
 scalar_t__ INTR_MODE_MSIX ; 
 scalar_t__ INT_BLOCK_HC ; 
 scalar_t__ FUNC9 (struct bxe_softc*) ; 
 int FUNC10 (struct bxe_softc*) ; 
 int MISC_REG_AEU_GENERAL_ATTN_12 ; 
 int NIG_REG_LLH0_FUNC_EN ; 
 int NIG_REG_LLH0_FUNC_VLAN_ID ; 
 int FUNC11 (struct bxe_softc*) ; 
 int PBF_REG_DISABLE_PF ; 
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ; 
 int PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR ; 
 int PHASE_PF0 ; 
 int PRS_REG_NIC_MODE ; 
 int QM_REG_PF_EN ; 
 int FUNC12 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bxe_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct bxe_softc*,scalar_t__,int) ; 
 int FUNC15 (struct bxe_softc*) ; 
 int FUNC16 (struct bxe_softc*) ; 
 int FUNC17 (struct bxe_softc*) ; 
 int TSEM_REG_VFPF_ERR_NUM ; 
 int /*<<< orphan*/  TSTORM_ID ; 
 scalar_t__ FUNC18 (int) ; 
 int USEM_REG_VFPF_ERR_NUM ; 
 int /*<<< orphan*/  USTORM_ID ; 
 scalar_t__ FUNC19 (int) ; 
 int XSEM_REG_VFPF_ERR_NUM ; 
 int /*<<< orphan*/  XSTORM_ID ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct bxe_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct bxe_softc*) ; 
 int FUNC24 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC25 (struct bxe_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC26 (struct bxe_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC27 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wb_data ; 

__attribute__((used)) static int
FUNC30(struct bxe_softc *sc)
{
    int port = FUNC16(sc);
    int func = FUNC15(sc);
    int init_phase = PHASE_PF0 + func;
    struct ecore_ilt *ilt = sc->ilt;
    uint16_t cdu_ilt_start;
    uint32_t addr, val;
    uint32_t main_mem_base, main_mem_size, main_mem_prty_clr;
    int i, main_mem_width, rc;

    FUNC0(sc, DBG_LOAD, "starting func init for func %d\n", func);

    /* FLR cleanup */
    if (!FUNC5(sc)) {
        rc = FUNC24(sc);
        if (rc) {
            FUNC1(sc, "FLR cleanup failed!\n");
            // XXX bxe_fw_dump(sc);
            // XXX bxe_idle_chk(sc);
            return (rc);
        }
    }

    /* set MSI reconfigure capability */
    if (sc->devinfo.int_block == INT_BLOCK_HC) {
        addr = (port ? HC_REG_CONFIG_1 : HC_REG_CONFIG_0);
        val = FUNC12(sc, addr);
        val |= HC_CONFIG_0_REG_MSI_ATTN_EN_0;
        FUNC13(sc, addr, val);
    }

    FUNC28(sc, BLOCK_PXP, init_phase);
    FUNC28(sc, BLOCK_PXP2, init_phase);

    ilt = sc->ilt;
    cdu_ilt_start = ilt->clients[ILT_CLIENT_CDU].start;

    for (i = 0; i < FUNC10(sc); i++) {
        ilt->lines[cdu_ilt_start + i].page = sc->context[i].vcxt;
        ilt->lines[cdu_ilt_start + i].page_mapping =
            sc->context[i].vcxt_dma.paddr;
        ilt->lines[cdu_ilt_start + i].size = sc->context[i].size;
    }
    FUNC27(sc, INITOP_SET);

    /* Set NIC mode */
    FUNC13(sc, PRS_REG_NIC_MODE, 1);
    FUNC0(sc, DBG_LOAD, "NIC MODE configured\n");

    if (!FUNC5(sc)) {
        uint32_t pf_conf = IGU_PF_CONF_FUNC_EN;

        /* Turn on a single ISR mode in IGU if driver is going to use
         * INT#x or MSI
         */
        if (sc->interrupt_mode != INTR_MODE_MSIX) {
            pf_conf |= IGU_PF_CONF_SINGLE_ISR_EN;
        }

        /*
         * Timers workaround bug: function init part.
         * Need to wait 20msec after initializing ILT,
         * needed to make sure there are no requests in
         * one of the PXP internal queues with "old" ILT addresses
         */
        FUNC8(20000);

        /*
         * Master enable - Due to WB DMAE writes performed before this
         * register is re-initialized as part of the regular function
         * init
         */
        FUNC13(sc, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 1);
        /* Enable the function in IGU */
        FUNC13(sc, IGU_REG_PF_CONFIGURATION, pf_conf);
    }

    sc->dmae_ready = 1;

    FUNC28(sc, BLOCK_PGLUE_B, init_phase);

    if (!FUNC5(sc))
        FUNC13(sc, PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR, func);

    FUNC28(sc, BLOCK_ATC, init_phase);
    FUNC28(sc, BLOCK_DMAE, init_phase);
    FUNC28(sc, BLOCK_NIG, init_phase);
    FUNC28(sc, BLOCK_SRC, init_phase);
    FUNC28(sc, BLOCK_MISC, init_phase);
    FUNC28(sc, BLOCK_TCM, init_phase);
    FUNC28(sc, BLOCK_UCM, init_phase);
    FUNC28(sc, BLOCK_CCM, init_phase);
    FUNC28(sc, BLOCK_XCM, init_phase);
    FUNC28(sc, BLOCK_TSEM, init_phase);
    FUNC28(sc, BLOCK_USEM, init_phase);
    FUNC28(sc, BLOCK_CSEM, init_phase);
    FUNC28(sc, BLOCK_XSEM, init_phase);

    if (!FUNC5(sc))
        FUNC13(sc, QM_REG_PF_EN, 1);

    if (!FUNC5(sc)) {
        FUNC13(sc, TSEM_REG_VFPF_ERR_NUM, BXE_MAX_NUM_OF_VFS + func);
        FUNC13(sc, USEM_REG_VFPF_ERR_NUM, BXE_MAX_NUM_OF_VFS + func);
        FUNC13(sc, CSEM_REG_VFPF_ERR_NUM, BXE_MAX_NUM_OF_VFS + func);
        FUNC13(sc, XSEM_REG_VFPF_ERR_NUM, BXE_MAX_NUM_OF_VFS + func);
    }
    FUNC28(sc, BLOCK_QM, init_phase);

    FUNC28(sc, BLOCK_TM, init_phase);
    FUNC28(sc, BLOCK_DORQ, init_phase);

    FUNC23(sc);

    FUNC28(sc, BLOCK_BRB1, init_phase);
    FUNC28(sc, BLOCK_PRS, init_phase);
    FUNC28(sc, BLOCK_TSDM, init_phase);
    FUNC28(sc, BLOCK_CSDM, init_phase);
    FUNC28(sc, BLOCK_USDM, init_phase);
    FUNC28(sc, BLOCK_XSDM, init_phase);
    FUNC28(sc, BLOCK_UPB, init_phase);
    FUNC28(sc, BLOCK_XPB, init_phase);
    FUNC28(sc, BLOCK_PBF, init_phase);
    if (!FUNC5(sc))
        FUNC13(sc, PBF_REG_DISABLE_PF, 0);

    FUNC28(sc, BLOCK_CDU, init_phase);

    FUNC28(sc, BLOCK_CFC, init_phase);

    if (!FUNC5(sc))
        FUNC13(sc, CFC_REG_WEAK_ENABLE_PF, 1);

    if (FUNC9(sc)) {
        FUNC13(sc, NIG_REG_LLH0_FUNC_EN + port*8, 1);
        FUNC13(sc, NIG_REG_LLH0_FUNC_VLAN_ID + port*8, FUNC11(sc));
    }

    FUNC28(sc, BLOCK_MISC_AEU, init_phase);

    /* HC init per function */
    if (sc->devinfo.int_block == INT_BLOCK_HC) {
        if (FUNC4(sc)) {
            FUNC13(sc, MISC_REG_AEU_GENERAL_ATTN_12 + func*4, 0);

            FUNC13(sc, HC_REG_LEADING_EDGE_0 + port*8, 0);
            FUNC13(sc, HC_REG_TRAILING_EDGE_0 + port*8, 0);
        }
        FUNC28(sc, BLOCK_HC, init_phase);

    } else {
        int num_segs, sb_idx, prod_offset;

        FUNC13(sc, MISC_REG_AEU_GENERAL_ATTN_12 + func*4, 0);

        if (!FUNC5(sc)) {
            FUNC13(sc, IGU_REG_LEADING_EDGE_LATCH, 0);
            FUNC13(sc, IGU_REG_TRAILING_EDGE_LATCH, 0);
        }

        FUNC28(sc, BLOCK_IGU, init_phase);

        if (!FUNC5(sc)) {
            int dsb_idx = 0;
            /**
             * Producer memory:
             * E2 mode: address 0-135 match to the mapping memory;
             * 136 - PF0 default prod; 137 - PF1 default prod;
             * 138 - PF2 default prod; 139 - PF3 default prod;
             * 140 - PF0 attn prod;    141 - PF1 attn prod;
             * 142 - PF2 attn prod;    143 - PF3 attn prod;
             * 144-147 reserved.
             *
             * E1.5 mode - In backward compatible mode;
             * for non default SB; each even line in the memory
             * holds the U producer and each odd line hold
             * the C producer. The first 128 producers are for
             * NDSB (PF0 - 0-31; PF1 - 32-63 and so on). The last 20
             * producers are for the DSB for each PF.
             * Each PF has five segments: (the order inside each
             * segment is PF0; PF1; PF2; PF3) - 128-131 U prods;
             * 132-135 C prods; 136-139 X prods; 140-143 T prods;
             * 144-147 attn prods;
             */
            /* non-default-status-blocks */
            num_segs = FUNC3(sc) ?
                IGU_BC_NDSB_NUM_SEGS : IGU_NORM_NDSB_NUM_SEGS;
            for (sb_idx = 0; sb_idx < sc->igu_sb_cnt; sb_idx++) {
                prod_offset = (sc->igu_base_sb + sb_idx) *
                    num_segs;

                for (i = 0; i < num_segs; i++) {
                    addr = IGU_REG_PROD_CONS_MEMORY +
                            (prod_offset + i) * 4;
                    FUNC13(sc, addr, 0);
                }
                /* send consumer update with value 0 */
                FUNC21(sc, sc->igu_base_sb + sb_idx,
                           USTORM_ID, 0, IGU_INT_NOP, 1);
                FUNC22(sc, sc->igu_base_sb + sb_idx);
            }

            /* default-status-blocks */
            num_segs = FUNC3(sc) ?
                IGU_BC_DSB_NUM_SEGS : IGU_NORM_DSB_NUM_SEGS;

            if (FUNC6(sc))
                dsb_idx = FUNC15(sc);
            else
                dsb_idx = FUNC17(sc);

            prod_offset = (FUNC3(sc) ?
                       IGU_BC_BASE_DSB_PROD + dsb_idx :
                       IGU_NORM_BASE_DSB_PROD + dsb_idx);

            /*
             * igu prods come in chunks of E1HVN_MAX (4) -
             * does not matters what is the current chip mode
             */
            for (i = 0; i < (num_segs * E1HVN_MAX);
                 i += E1HVN_MAX) {
                addr = IGU_REG_PROD_CONS_MEMORY +
                            (prod_offset + i)*4;
                FUNC13(sc, addr, 0);
            }
            /* send consumer update with 0 */
            if (FUNC3(sc)) {
                FUNC21(sc, sc->igu_dsb_id,
                           USTORM_ID, 0, IGU_INT_NOP, 1);
                FUNC21(sc, sc->igu_dsb_id,
                           CSTORM_ID, 0, IGU_INT_NOP, 1);
                FUNC21(sc, sc->igu_dsb_id,
                           XSTORM_ID, 0, IGU_INT_NOP, 1);
                FUNC21(sc, sc->igu_dsb_id,
                           TSTORM_ID, 0, IGU_INT_NOP, 1);
                FUNC21(sc, sc->igu_dsb_id,
                           ATTENTION_ID, 0, IGU_INT_NOP, 1);
            } else {
                FUNC21(sc, sc->igu_dsb_id,
                           USTORM_ID, 0, IGU_INT_NOP, 1);
                FUNC21(sc, sc->igu_dsb_id,
                           ATTENTION_ID, 0, IGU_INT_NOP, 1);
            }
            FUNC22(sc, sc->igu_dsb_id);

            /* !!! these should become driver const once
               rf-tool supports split-68 const */
            FUNC13(sc, IGU_REG_SB_INT_BEFORE_MASK_LSB, 0);
            FUNC13(sc, IGU_REG_SB_INT_BEFORE_MASK_MSB, 0);
            FUNC13(sc, IGU_REG_SB_MASK_LSB, 0);
            FUNC13(sc, IGU_REG_SB_MASK_MSB, 0);
            FUNC13(sc, IGU_REG_PBA_STATUS_LSB, 0);
            FUNC13(sc, IGU_REG_PBA_STATUS_MSB, 0);
        }
    }

    /* Reset PCIE errors for debug */
    FUNC13(sc, 0x2114, 0xffffffff);
    FUNC13(sc, 0x2120, 0xffffffff);

    if (FUNC5(sc)) {
        main_mem_size = HC_REG_MAIN_MEMORY_SIZE / 2; /*dwords*/
        main_mem_base = HC_REG_MAIN_MEMORY +
                FUNC16(sc) * (main_mem_size * 4);
        main_mem_prty_clr = HC_REG_HC_PRTY_STS_CLR;
        main_mem_width = 8;

        val = FUNC12(sc, main_mem_prty_clr);
        if (val) {
            FUNC0(sc, DBG_LOAD,
                  "Parity errors in HC block during function init (0x%x)!\n",
                  val);
        }

        /* Clear "false" parity errors in MSI-X table */
        for (i = main_mem_base;
             i < main_mem_base + main_mem_size * 4;
             i += main_mem_width) {
            FUNC25(sc, i, main_mem_width / 4);
            FUNC26(sc, FUNC2(sc, wb_data),
                           i, main_mem_width / 4);
        }
        /* Clear HC parity attention */
        FUNC12(sc, main_mem_prty_clr);
    }

#if 1
    /* Enable STORMs SP logging */
    FUNC14(sc, BAR_USTRORM_INTMEM +
           FUNC19(FUNC15(sc)), 1);
    FUNC14(sc, BAR_TSTRORM_INTMEM +
           FUNC18(FUNC15(sc)), 1);
    FUNC14(sc, BAR_CSTRORM_INTMEM +
           FUNC7(FUNC15(sc)), 1);
    FUNC14(sc, BAR_XSTRORM_INTMEM +
           FUNC20(FUNC15(sc)), 1);
#endif

    FUNC29(&sc->link_params);

    return (0);
}