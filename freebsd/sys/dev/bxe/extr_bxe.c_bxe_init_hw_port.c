
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int mf_mode; scalar_t__ path_has_ovlan; } ;
struct TYPE_4__ {TYPE_1__ mf_info; } ;
struct bxe_softc {int mtu; TYPE_2__ devinfo; int qm_cid_count; } ;


 int AEU_INPUTS_ATTN_BITS_SPIO5 ;
 int BLOCK_ATC ;
 int BLOCK_BRB1 ;
 int BLOCK_CCM ;
 int BLOCK_CDU ;
 int BLOCK_CFC ;
 int BLOCK_CSDM ;
 int BLOCK_CSEM ;
 int BLOCK_DMAE ;
 int BLOCK_DORQ ;
 int BLOCK_HC ;
 int BLOCK_IGU ;
 int BLOCK_MISC ;
 int BLOCK_MISC_AEU ;
 int BLOCK_NIG ;
 int BLOCK_PBF ;
 int BLOCK_PGLUE_B ;
 int BLOCK_PRS ;
 int BLOCK_PXP ;
 int BLOCK_PXP2 ;
 int BLOCK_QM ;
 int BLOCK_SRC ;
 int BLOCK_TCM ;
 int BLOCK_TM ;
 int BLOCK_TSDM ;
 int BLOCK_TSEM ;
 int BLOCK_UCM ;
 int BLOCK_UPB ;
 int BLOCK_USDM ;
 int BLOCK_USEM ;
 int BLOCK_XCM ;
 int BLOCK_XPB ;
 int BLOCK_XSDM ;
 int BLOCK_XSEM ;
 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int BRB1_REG_MAC_GUARANTIED_0 ;
 int BRB1_REG_MAC_GUARANTIED_1 ;
 int BRB1_REG_PAUSE_HIGH_THRESHOLD_0 ;
 int BRB1_REG_PAUSE_LOW_THRESHOLD_0 ;
 scalar_t__ BXE_ONE_PORT (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E1H (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E1x (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_E3B0 (struct bxe_softc*) ;
 scalar_t__ CHIP_IS_MODE_4_PORT (struct bxe_softc*) ;
 scalar_t__ CNIC_SUPPORT (struct bxe_softc*) ;
 int DBG_LOAD ;
 int DELAY (int) ;
 int HC_REG_LEADING_EDGE_0 ;
 int HC_REG_TRAILING_EDGE_0 ;
 int INITOP_SET ;
 int IS_MF (struct bxe_softc*) ;
 scalar_t__ IS_MF_AFEX (struct bxe_softc*) ;
 scalar_t__ IS_MF_SD (struct bxe_softc*) ;
 int MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0 ;
 int MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 ;
 int MISC_REG_AEU_MASK_ATTN_FUNC_0 ;
 int MISC_REG_SPIO_EVENT_EN ;
 int MISC_SPIO_SPIO5 ;



 int NIG_REG_LLFC_ENABLE_0 ;
 int NIG_REG_LLFC_OUT_EN_0 ;
 int NIG_REG_LLH0_BRB1_DRV_MASK_MF ;
 int NIG_REG_LLH0_CLS_TYPE ;
 int NIG_REG_LLH1_CLS_TYPE ;
 int NIG_REG_LLH1_MF_MODE ;
 int NIG_REG_LLH_MF_MODE ;
 int NIG_REG_MASK_INTERRUPT_PORT0 ;
 int NIG_REG_P0_HDRS_AFTER_BASIC ;
 int NIG_REG_P1_HDRS_AFTER_BASIC ;
 int NIG_REG_PAUSE_ENABLE_0 ;
 int NIG_REG_XGXS_SERDES0_MODE_SEL ;
 int PBF_REG_INIT_P0 ;
 int PBF_REG_P0_ARB_THRSH ;
 int PBF_REG_P0_INIT_CRD ;
 int PBF_REG_P0_PAUSE_ENABLE ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ;
 int PHASE_PORT0 ;
 int PHASE_PORT1 ;
 int PRS_REG_HDRS_AFTER_BASIC_PORT_0 ;
 int PRS_REG_HDRS_AFTER_BASIC_PORT_1 ;
 int PRS_REG_HDRS_AFTER_TAG_0_PORT_0 ;
 int PRS_REG_HDRS_AFTER_TAG_0_PORT_1 ;
 int PRS_REG_MUST_HAVE_HDRS_PORT_0 ;
 int PRS_REG_MUST_HAVE_HDRS_PORT_1 ;
 int REG_RD (struct bxe_softc*,int) ;
 int REG_WR (struct bxe_softc*,int,int) ;
 int SC_PORT (struct bxe_softc*) ;
 int TM_REG_LIN0_MAX_ACTIVE_CID ;
 int TM_REG_LIN0_SCAN_TIME ;
 int ecore_init_block (struct bxe_softc*,int ,int) ;
 int ecore_qm_init_cid_count (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static int
bxe_init_hw_port(struct bxe_softc *sc)
{
    int port = SC_PORT(sc);
    int init_phase = port ? PHASE_PORT1 : PHASE_PORT0;
    uint32_t low, high;
    uint32_t val;

    BLOGD(sc, DBG_LOAD, "starting port init for port %d\n", port);

    REG_WR(sc, NIG_REG_MASK_INTERRUPT_PORT0 + port*4, 0);

    ecore_init_block(sc, BLOCK_MISC, init_phase);
    ecore_init_block(sc, BLOCK_PXP, init_phase);
    ecore_init_block(sc, BLOCK_PXP2, init_phase);







    if (!CHIP_IS_E1x(sc)) {
        REG_WR(sc, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 1);
    }

    ecore_init_block(sc, BLOCK_ATC, init_phase);
    ecore_init_block(sc, BLOCK_DMAE, init_phase);
    ecore_init_block(sc, BLOCK_PGLUE_B, init_phase);
    ecore_init_block(sc, BLOCK_QM, init_phase);

    ecore_init_block(sc, BLOCK_TCM, init_phase);
    ecore_init_block(sc, BLOCK_UCM, init_phase);
    ecore_init_block(sc, BLOCK_CCM, init_phase);
    ecore_init_block(sc, BLOCK_XCM, init_phase);


    ecore_qm_init_cid_count(sc, sc->qm_cid_count, INITOP_SET);

    if (CNIC_SUPPORT(sc)) {
        ecore_init_block(sc, BLOCK_TM, init_phase);
        REG_WR(sc, TM_REG_LIN0_SCAN_TIME + port*4, 20);
        REG_WR(sc, TM_REG_LIN0_MAX_ACTIVE_CID + port*4, 31);
    }

    ecore_init_block(sc, BLOCK_DORQ, init_phase);

    ecore_init_block(sc, BLOCK_BRB1, init_phase);

    if (CHIP_IS_E1(sc) || CHIP_IS_E1H(sc)) {
        if (IS_MF(sc)) {
            low = (BXE_ONE_PORT(sc) ? 160 : 246);
        } else if (sc->mtu > 4096) {
            if (BXE_ONE_PORT(sc)) {
                low = 160;
            } else {
                val = sc->mtu;

                low = (96 + (val / 64) + ((val % 64) ? 1 : 0));
            }
        } else {
            low = (BXE_ONE_PORT(sc) ? 80 : 160);
        }
        high = (low + 56);
        REG_WR(sc, BRB1_REG_PAUSE_LOW_THRESHOLD_0 + port*4, low);
        REG_WR(sc, BRB1_REG_PAUSE_HIGH_THRESHOLD_0 + port*4, high);
    }

    if (CHIP_IS_MODE_4_PORT(sc)) {
        REG_WR(sc, SC_PORT(sc) ?
               BRB1_REG_MAC_GUARANTIED_1 :
               BRB1_REG_MAC_GUARANTIED_0, 40);
    }

    ecore_init_block(sc, BLOCK_PRS, init_phase);
    if (CHIP_IS_E3B0(sc)) {
        if (IS_MF_AFEX(sc)) {

            REG_WR(sc, SC_PORT(sc) ?
                   PRS_REG_HDRS_AFTER_BASIC_PORT_1 :
                   PRS_REG_HDRS_AFTER_BASIC_PORT_0, 0xE);
            REG_WR(sc, SC_PORT(sc) ?
                   PRS_REG_HDRS_AFTER_TAG_0_PORT_1 :
                   PRS_REG_HDRS_AFTER_TAG_0_PORT_0, 0x6);
            REG_WR(sc, SC_PORT(sc) ?
                   PRS_REG_MUST_HAVE_HDRS_PORT_1 :
                   PRS_REG_MUST_HAVE_HDRS_PORT_0, 0xA);
        } else {




            REG_WR(sc, SC_PORT(sc) ?
                   PRS_REG_HDRS_AFTER_BASIC_PORT_1 :
                   PRS_REG_HDRS_AFTER_BASIC_PORT_0,
                   (sc->devinfo.mf_info.path_has_ovlan ? 7 : 6));
        }
    }

    ecore_init_block(sc, BLOCK_TSDM, init_phase);
    ecore_init_block(sc, BLOCK_CSDM, init_phase);
    ecore_init_block(sc, BLOCK_USDM, init_phase);
    ecore_init_block(sc, BLOCK_XSDM, init_phase);

    ecore_init_block(sc, BLOCK_TSEM, init_phase);
    ecore_init_block(sc, BLOCK_USEM, init_phase);
    ecore_init_block(sc, BLOCK_CSEM, init_phase);
    ecore_init_block(sc, BLOCK_XSEM, init_phase);

    ecore_init_block(sc, BLOCK_UPB, init_phase);
    ecore_init_block(sc, BLOCK_XPB, init_phase);

    ecore_init_block(sc, BLOCK_PBF, init_phase);

    if (CHIP_IS_E1x(sc)) {

        REG_WR(sc, PBF_REG_P0_PAUSE_ENABLE + port*4, 0);


        REG_WR(sc, PBF_REG_P0_ARB_THRSH + port*4, (9040/16));

        REG_WR(sc, PBF_REG_P0_INIT_CRD + port*4, (9040/16) + 553 - 22);


        REG_WR(sc, PBF_REG_INIT_P0 + port*4, 1);
        DELAY(50);
        REG_WR(sc, PBF_REG_INIT_P0 + port*4, 0);
    }

    if (CNIC_SUPPORT(sc)) {
        ecore_init_block(sc, BLOCK_SRC, init_phase);
    }

    ecore_init_block(sc, BLOCK_CDU, init_phase);
    ecore_init_block(sc, BLOCK_CFC, init_phase);

    if (CHIP_IS_E1(sc)) {
        REG_WR(sc, HC_REG_LEADING_EDGE_0 + port*8, 0);
        REG_WR(sc, HC_REG_TRAILING_EDGE_0 + port*8, 0);
    }
    ecore_init_block(sc, BLOCK_HC, init_phase);

    ecore_init_block(sc, BLOCK_IGU, init_phase);

    ecore_init_block(sc, BLOCK_MISC_AEU, init_phase);




    val = IS_MF(sc) ? 0xF7 : 0x7;

    val |= CHIP_IS_E1(sc) ? 0 : 0x10;
    REG_WR(sc, MISC_REG_AEU_MASK_ATTN_FUNC_0 + port*4, val);

    ecore_init_block(sc, BLOCK_NIG, init_phase);

    if (!CHIP_IS_E1x(sc)) {



        if (IS_MF_AFEX(sc)) {
            REG_WR(sc, SC_PORT(sc) ?
                   NIG_REG_P1_HDRS_AFTER_BASIC :
                   NIG_REG_P0_HDRS_AFTER_BASIC, 0xE);
        } else {
            REG_WR(sc, SC_PORT(sc) ?
                   NIG_REG_P1_HDRS_AFTER_BASIC :
                   NIG_REG_P0_HDRS_AFTER_BASIC,
                   IS_MF_SD(sc) ? 7 : 6);
        }

        if (CHIP_IS_E3(sc)) {
            REG_WR(sc, SC_PORT(sc) ?
                   NIG_REG_LLH1_MF_MODE :
                   NIG_REG_LLH_MF_MODE, IS_MF(sc));
        }
    }
    if (!CHIP_IS_E3(sc)) {
        REG_WR(sc, NIG_REG_XGXS_SERDES0_MODE_SEL + port*4, 1);
    }

    if (!CHIP_IS_E1(sc)) {

        REG_WR(sc, NIG_REG_LLH0_BRB1_DRV_MASK_MF + port*4,
               (IS_MF_SD(sc) ? 0x1 : 0x2));

        if (!CHIP_IS_E1x(sc)) {
            val = 0;
            switch (sc->devinfo.mf_info.mf_mode) {
            case 129:
                val = 1;
                break;
            case 128:
            case 130:
                val = 2;
                break;
            }

            REG_WR(sc, (SC_PORT(sc) ? NIG_REG_LLH1_CLS_TYPE :
                        NIG_REG_LLH0_CLS_TYPE), val);
        }
        REG_WR(sc, NIG_REG_LLFC_ENABLE_0 + port*4, 0);
        REG_WR(sc, NIG_REG_LLFC_OUT_EN_0 + port*4, 0);
        REG_WR(sc, NIG_REG_PAUSE_ENABLE_0 + port*4, 1);
    }


    val = REG_RD(sc, MISC_REG_SPIO_EVENT_EN);
    if (val & MISC_SPIO_SPIO5) {
        uint32_t reg_addr = (port ? MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 :
                                    MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0);
        val = REG_RD(sc, reg_addr);
        val |= AEU_INPUTS_ATTN_BITS_SPIO5;
        REG_WR(sc, reg_addr, val);
    }

    return (0);
}
