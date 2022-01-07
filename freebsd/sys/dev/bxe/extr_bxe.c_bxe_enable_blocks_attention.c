
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ BRB1_REG_BRB1_INT_MASK ;
 scalar_t__ CCM_REG_CCM_INT_MASK ;
 scalar_t__ CDU_REG_CDU_INT_MASK ;
 scalar_t__ CFC_REG_CFC_INT_MASK ;
 int CHIP_IS_E1x (struct bxe_softc*) ;
 scalar_t__ CSDM_REG_CSDM_INT_MASK_0 ;
 scalar_t__ CSDM_REG_CSDM_INT_MASK_1 ;
 scalar_t__ DMAE_REG_DMAE_INT_MASK ;
 scalar_t__ DORQ_REG_DORQ_INT_MASK ;
 scalar_t__ GRCBASE_UPB ;
 scalar_t__ PBF_REG_PBF_INT_MASK ;
 scalar_t__ PB_REG_PB_INT_MASK ;
 int PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_AFT ;
 int PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_OF ;
 int PXP2_PXP2_INT_MASK_0_REG_PGL_PCIE_ATTN ;
 int PXP2_PXP2_INT_MASK_0_REG_PGL_READ_BLOCKED ;
 int PXP2_PXP2_INT_MASK_0_REG_PGL_WRITE_BLOCKED ;
 scalar_t__ PXP2_REG_PXP2_INT_MASK_0 ;
 scalar_t__ PXP_REG_PXP_INT_MASK_0 ;
 scalar_t__ PXP_REG_PXP_INT_MASK_1 ;
 scalar_t__ QM_REG_QM_INT_MASK ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 scalar_t__ TCM_REG_TCM_INT_MASK ;
 scalar_t__ TM_REG_TM_INT_MASK ;
 scalar_t__ TSDM_REG_TSDM_INT_MASK_0 ;
 scalar_t__ TSDM_REG_TSDM_INT_MASK_1 ;
 scalar_t__ TSEM_REG_TSEM_INT_MASK_1 ;
 scalar_t__ UCM_REG_UCM_INT_MASK ;
 scalar_t__ USDM_REG_USDM_INT_MASK_0 ;
 scalar_t__ USDM_REG_USDM_INT_MASK_1 ;
 scalar_t__ XCM_REG_XCM_INT_MASK ;
 scalar_t__ XSDM_REG_XSDM_INT_MASK_0 ;
 scalar_t__ XSDM_REG_XSDM_INT_MASK_1 ;

__attribute__((used)) static void
bxe_enable_blocks_attention(struct bxe_softc *sc)
{
    uint32_t val;

    REG_WR(sc, PXP_REG_PXP_INT_MASK_0, 0);
    if (!CHIP_IS_E1x(sc)) {
        REG_WR(sc, PXP_REG_PXP_INT_MASK_1, 0x40);
    } else {
        REG_WR(sc, PXP_REG_PXP_INT_MASK_1, 0);
    }
    REG_WR(sc, DORQ_REG_DORQ_INT_MASK, 0);
    REG_WR(sc, CFC_REG_CFC_INT_MASK, 0);






    REG_WR(sc, BRB1_REG_BRB1_INT_MASK, 0xFC00);
    REG_WR(sc, QM_REG_QM_INT_MASK, 0);
    REG_WR(sc, TM_REG_TM_INT_MASK, 0);
    REG_WR(sc, XSDM_REG_XSDM_INT_MASK_0, 0);
    REG_WR(sc, XSDM_REG_XSDM_INT_MASK_1, 0);
    REG_WR(sc, XCM_REG_XCM_INT_MASK, 0);


    REG_WR(sc, USDM_REG_USDM_INT_MASK_0, 0);
    REG_WR(sc, USDM_REG_USDM_INT_MASK_1, 0);
    REG_WR(sc, UCM_REG_UCM_INT_MASK, 0);


    REG_WR(sc, GRCBASE_UPB + PB_REG_PB_INT_MASK, 0);
    REG_WR(sc, CSDM_REG_CSDM_INT_MASK_0, 0);
    REG_WR(sc, CSDM_REG_CSDM_INT_MASK_1, 0);
    REG_WR(sc, CCM_REG_CCM_INT_MASK, 0);



    val = (PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_AFT |
           PXP2_PXP2_INT_MASK_0_REG_PGL_CPL_OF |
           PXP2_PXP2_INT_MASK_0_REG_PGL_PCIE_ATTN);
    if (!CHIP_IS_E1x(sc)) {
        val |= (PXP2_PXP2_INT_MASK_0_REG_PGL_READ_BLOCKED |
                PXP2_PXP2_INT_MASK_0_REG_PGL_WRITE_BLOCKED);
    }
    REG_WR(sc, PXP2_REG_PXP2_INT_MASK_0, val);

    REG_WR(sc, TSDM_REG_TSDM_INT_MASK_0, 0);
    REG_WR(sc, TSDM_REG_TSDM_INT_MASK_1, 0);
    REG_WR(sc, TCM_REG_TCM_INT_MASK, 0);


    if (!CHIP_IS_E1x(sc)) {

        REG_WR(sc, TSEM_REG_TSEM_INT_MASK_1, 0x07ff);
    }

    REG_WR(sc, CDU_REG_CDU_INT_MASK, 0);
    REG_WR(sc, DMAE_REG_DMAE_INT_MASK, 0);

    REG_WR(sc, PBF_REG_PBF_INT_MASK, 0x18);
}
