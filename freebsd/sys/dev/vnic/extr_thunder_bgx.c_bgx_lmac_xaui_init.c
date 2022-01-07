
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bgx {scalar_t__ lmac_type; scalar_t__ use_training; int dev; } ;


 int BGX_CMRX_CFG ;
 scalar_t__ BGX_MODE_10G_KR ;
 scalar_t__ BGX_MODE_40G_KR ;
 scalar_t__ BGX_MODE_RXAUI ;
 int BGX_SMUX_RX_INT ;
 int BGX_SMUX_RX_JABBER ;
 int BGX_SMUX_TX_APPEND ;
 int BGX_SMUX_TX_CTL ;
 int BGX_SMUX_TX_INT ;
 int BGX_SMUX_TX_THRESH ;
 int BGX_SPUX_AN_ADV ;
 int BGX_SPUX_AN_CONTROL ;
 int BGX_SPUX_BR_PMD_CRTL ;
 int BGX_SPUX_BR_PMD_LD_CUP ;
 int BGX_SPUX_BR_PMD_LD_REP ;
 int BGX_SPUX_BR_PMD_LP_CUP ;
 int BGX_SPUX_CONTROL1 ;
 int BGX_SPUX_FEC_CONTROL ;
 int BGX_SPUX_INT ;
 int BGX_SPUX_MISC_CONTROL ;
 int BGX_SPU_DBG_CONTROL ;
 int CMR_EN ;
 int ENXIO ;
 int MAX_FRAME_SIZE ;
 int SMU_TX_APPEND_FCS_D ;
 int SMU_TX_CTL_DIC_EN ;
 int SMU_TX_CTL_UNI_EN ;
 int SPU_AN_CTL_AN_EN ;
 int SPU_AN_CTL_XNP_EN ;
 int SPU_CTL_LOW_POWER ;
 int SPU_CTL_RESET ;
 int SPU_DBG_CTL_AN_ARB_LINK_CHK_EN ;
 int SPU_FEC_CTL_FEC_EN ;
 int SPU_MISC_CTL_INTLV_RDISP ;
 int SPU_MISC_CTL_RX_DIS ;
 int SPU_PMD_CRTL_TRAIN_EN ;
 int TRUE ;
 scalar_t__ bgx_poll_reg (struct bgx*,int,int ,int,int ) ;
 int bgx_reg_modify (struct bgx*,int,int ,int) ;
 int bgx_reg_read (struct bgx*,int,int ) ;
 int bgx_reg_write (struct bgx*,int,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bgx_lmac_xaui_init(struct bgx *bgx, int lmacid, int lmac_type)
{
 uint64_t cfg;


 bgx_reg_modify(bgx, lmacid, BGX_SPUX_CONTROL1, SPU_CTL_RESET);
 if (bgx_poll_reg(bgx, lmacid, BGX_SPUX_CONTROL1,
     SPU_CTL_RESET, TRUE) != 0) {
  device_printf(bgx->dev, "BGX SPU reset not completed\n");
  return (ENXIO);
 }


 cfg = bgx_reg_read(bgx, lmacid, BGX_CMRX_CFG);
 cfg &= ~CMR_EN;
 bgx_reg_write(bgx, lmacid, BGX_CMRX_CFG, cfg);

 bgx_reg_modify(bgx, lmacid, BGX_SPUX_CONTROL1, SPU_CTL_LOW_POWER);

 if (bgx->lmac_type != BGX_MODE_RXAUI) {
  bgx_reg_modify(bgx, lmacid,
      BGX_SPUX_MISC_CONTROL, SPU_MISC_CTL_RX_DIS);
 } else {
  bgx_reg_modify(bgx, lmacid, BGX_SPUX_MISC_CONTROL,
      SPU_MISC_CTL_RX_DIS | SPU_MISC_CTL_INTLV_RDISP);
 }


 cfg = bgx_reg_read(bgx, lmacid, BGX_SMUX_RX_INT);
 bgx_reg_write(bgx, lmacid, BGX_SMUX_RX_INT, cfg);
 cfg = bgx_reg_read(bgx, lmacid, BGX_SMUX_TX_INT);
 bgx_reg_write(bgx, lmacid, BGX_SMUX_TX_INT, cfg);
 cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_INT);
 bgx_reg_write(bgx, lmacid, BGX_SPUX_INT, cfg);

 if (bgx->use_training) {
  bgx_reg_write(bgx, lmacid, BGX_SPUX_BR_PMD_LP_CUP, 0x00);
  bgx_reg_write(bgx, lmacid, BGX_SPUX_BR_PMD_LD_CUP, 0x00);
  bgx_reg_write(bgx, lmacid, BGX_SPUX_BR_PMD_LD_REP, 0x00);

  bgx_reg_modify(bgx, lmacid, BGX_SPUX_BR_PMD_CRTL,
      SPU_PMD_CRTL_TRAIN_EN);
 }


 bgx_reg_modify(bgx, lmacid, BGX_SMUX_TX_APPEND, SMU_TX_APPEND_FCS_D);


 cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_FEC_CONTROL);
 cfg &= ~SPU_FEC_CTL_FEC_EN;
 bgx_reg_write(bgx, lmacid, BGX_SPUX_FEC_CONTROL, cfg);


 cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_AN_CONTROL);
 cfg = cfg & ~(SPU_AN_CTL_AN_EN | SPU_AN_CTL_XNP_EN);
 bgx_reg_write(bgx, lmacid, BGX_SPUX_AN_CONTROL, cfg);

 cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_AN_ADV);
 if (bgx->lmac_type == BGX_MODE_10G_KR)
  cfg |= (1 << 23);
 else if (bgx->lmac_type == BGX_MODE_40G_KR)
  cfg |= (1 << 24);
 else
  cfg &= ~((1 << 23) | (1 << 24));
 cfg = cfg & (~((1UL << 25) | (1UL << 22) | (1UL << 12)));
 bgx_reg_write(bgx, lmacid, BGX_SPUX_AN_ADV, cfg);

 cfg = bgx_reg_read(bgx, 0, BGX_SPU_DBG_CONTROL);
 cfg &= ~SPU_DBG_CTL_AN_ARB_LINK_CHK_EN;
 bgx_reg_write(bgx, 0, BGX_SPU_DBG_CONTROL, cfg);


 bgx_reg_modify(bgx, lmacid, BGX_CMRX_CFG, CMR_EN);

 cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_CONTROL1);
 cfg &= ~SPU_CTL_LOW_POWER;
 bgx_reg_write(bgx, lmacid, BGX_SPUX_CONTROL1, cfg);

 cfg = bgx_reg_read(bgx, lmacid, BGX_SMUX_TX_CTL);
 cfg &= ~SMU_TX_CTL_UNI_EN;
 cfg |= SMU_TX_CTL_DIC_EN;
 bgx_reg_write(bgx, lmacid, BGX_SMUX_TX_CTL, cfg);


 bgx_reg_modify(bgx, lmacid, BGX_SMUX_TX_THRESH, (0x100 - 1));

 bgx_reg_modify(bgx, lmacid, BGX_SMUX_RX_JABBER, MAX_FRAME_SIZE);

 return (0);
}
