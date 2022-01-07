
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msk_softc {int msk_num_port; int msk_hw_rev; int msk_hw_id; } ;


 int B0_CTST ;
 int B0_POWER_CTRL ;
 int B2_GP_IO ;
 int B2_Y2_CLK_CTRL ;
 int B2_Y2_CLK_GATE ;
 int CHIP_ID_YUKON_EC_U ;
 int CHIP_ID_YUKON_EX ;
 int CHIP_ID_YUKON_FE_P ;
 int CHIP_ID_YUKON_XL ;
 int CHIP_REV_YU_XL_A1 ;
 int CSR_PCI_READ_4 (struct msk_softc*,int ) ;
 int CSR_PCI_WRITE_4 (struct msk_softc*,int ,int) ;
 int CSR_READ_4 (struct msk_softc*,int ) ;
 int CSR_WRITE_1 (struct msk_softc*,int ,int) ;
 int CSR_WRITE_2 (struct msk_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int) ;
 int GLB_GPIO_STAT_RACE_DIS ;
 int GMAC_LINK_CTRL ;
 int GMLC_RST_CLR ;
 int GMLC_RST_SET ;
 int MR_ADDR (int,int ) ;


 int PCI_ASPM_CLKRUN_REQUEST ;
 int PCI_ASPM_GPHY_LINK_DOWN ;
 int PCI_ASPM_INT_FIFO_EMPTY ;
 int PCI_CFG_REG_1 ;
 int PCI_CTL_TIM_VMAIN_AV_MSK ;
 int PCI_FORCE_ASPM_REQUEST ;
 int PCI_OUR_REG_1 ;
 int PCI_OUR_REG_4 ;
 int PCI_OUR_REG_5 ;
 int PCI_Y2_PHY1_COMA ;
 int PCI_Y2_PHY1_POWD ;
 int PCI_Y2_PHY2_COMA ;
 int PCI_Y2_PHY2_POWD ;
 int PC_VAUX_ENA ;
 int PC_VAUX_OFF ;
 int PC_VAUX_ON ;
 int PC_VCC_ENA ;
 int PC_VCC_OFF ;
 int PC_VCC_ON ;
 int Y2_CLK_DIV_DIS ;
 int Y2_CLK_GAT_LNK1_DIS ;
 int Y2_CLK_GAT_LNK2_DIS ;
 int Y2_COR_CLK_LNK1_DIS ;
 int Y2_COR_CLK_LNK2_DIS ;
 int Y2_HW_WOL_ON ;
 int Y2_PCI_CLK_LNK1_DIS ;
 int Y2_PCI_CLK_LNK2_DIS ;

__attribute__((used)) static void
msk_phy_power(struct msk_softc *sc, int mode)
{
 uint32_t our, val;
 int i;

 switch (mode) {
 case 128:

  CSR_WRITE_1(sc, B0_POWER_CTRL,
      PC_VAUX_ENA | PC_VCC_ENA | PC_VAUX_OFF | PC_VCC_ON);

  CSR_WRITE_4(sc, B2_Y2_CLK_CTRL, Y2_CLK_DIV_DIS);

  val = 0;
  if (sc->msk_hw_id == CHIP_ID_YUKON_XL &&
      sc->msk_hw_rev > CHIP_REV_YU_XL_A1) {

   val = Y2_PCI_CLK_LNK1_DIS | Y2_COR_CLK_LNK1_DIS |
         Y2_CLK_GAT_LNK1_DIS | Y2_PCI_CLK_LNK2_DIS |
         Y2_COR_CLK_LNK2_DIS | Y2_CLK_GAT_LNK2_DIS;
  }



  CSR_WRITE_1(sc, B2_Y2_CLK_GATE, val);

  our = CSR_PCI_READ_4(sc, PCI_OUR_REG_1);
  our &= ~(PCI_Y2_PHY1_POWD | PCI_Y2_PHY2_POWD);
  if (sc->msk_hw_id == CHIP_ID_YUKON_XL) {
   if (sc->msk_hw_rev > CHIP_REV_YU_XL_A1) {

    our |= PCI_Y2_PHY1_COMA;
    if (sc->msk_num_port > 1)
     our |= PCI_Y2_PHY2_COMA;
   }
  }
  if (sc->msk_hw_id == CHIP_ID_YUKON_EC_U ||
      sc->msk_hw_id == CHIP_ID_YUKON_EX ||
      sc->msk_hw_id >= CHIP_ID_YUKON_FE_P) {
   val = CSR_PCI_READ_4(sc, PCI_OUR_REG_4);
   val &= (PCI_FORCE_ASPM_REQUEST |
       PCI_ASPM_GPHY_LINK_DOWN | PCI_ASPM_INT_FIFO_EMPTY |
       PCI_ASPM_CLKRUN_REQUEST);

   CSR_PCI_WRITE_4(sc, PCI_OUR_REG_4, val);
   val = CSR_PCI_READ_4(sc, PCI_OUR_REG_5);
   val &= PCI_CTL_TIM_VMAIN_AV_MSK;
   CSR_PCI_WRITE_4(sc, PCI_OUR_REG_5, val);
   CSR_PCI_WRITE_4(sc, PCI_CFG_REG_1, 0);
   CSR_WRITE_2(sc, B0_CTST, Y2_HW_WOL_ON);




   val = CSR_READ_4(sc, B2_GP_IO);
   val |= GLB_GPIO_STAT_RACE_DIS;
   CSR_WRITE_4(sc, B2_GP_IO, val);
   CSR_READ_4(sc, B2_GP_IO);
  }

  CSR_PCI_WRITE_4(sc, PCI_OUR_REG_1, our);

  for (i = 0; i < sc->msk_num_port; i++) {
   CSR_WRITE_2(sc, MR_ADDR(i, GMAC_LINK_CTRL),
       GMLC_RST_SET);
   CSR_WRITE_2(sc, MR_ADDR(i, GMAC_LINK_CTRL),
       GMLC_RST_CLR);
  }
  break;
 case 129:
  val = CSR_PCI_READ_4(sc, PCI_OUR_REG_1);
  val |= PCI_Y2_PHY1_POWD | PCI_Y2_PHY2_POWD;
  if (sc->msk_hw_id == CHIP_ID_YUKON_XL &&
      sc->msk_hw_rev > CHIP_REV_YU_XL_A1) {
   val &= ~PCI_Y2_PHY1_COMA;
   if (sc->msk_num_port > 1)
    val &= ~PCI_Y2_PHY2_COMA;
  }
  CSR_PCI_WRITE_4(sc, PCI_OUR_REG_1, val);

  val = Y2_PCI_CLK_LNK1_DIS | Y2_COR_CLK_LNK1_DIS |
        Y2_CLK_GAT_LNK1_DIS | Y2_PCI_CLK_LNK2_DIS |
        Y2_COR_CLK_LNK2_DIS | Y2_CLK_GAT_LNK2_DIS;
  if (sc->msk_hw_id == CHIP_ID_YUKON_XL &&
      sc->msk_hw_rev > CHIP_REV_YU_XL_A1) {

   val = 0;
  }




  CSR_WRITE_1(sc, B2_Y2_CLK_GATE, val);
  CSR_WRITE_1(sc, B0_POWER_CTRL,
      PC_VAUX_ENA | PC_VCC_ENA | PC_VAUX_ON | PC_VCC_OFF);
  break;
 default:
  break;
 }
}
