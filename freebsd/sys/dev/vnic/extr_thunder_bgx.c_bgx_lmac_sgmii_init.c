
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bgx {int dev; } ;


 int BGX_CMRX_CFG ;
 int BGX_GMP_GMI_RXX_JABBER ;
 int BGX_GMP_GMI_TXX_APPEND ;
 int BGX_GMP_GMI_TXX_SGMII_CTL ;
 int BGX_GMP_GMI_TXX_THRESH ;
 int BGX_GMP_PCS_MRX_CTL ;
 int BGX_GMP_PCS_MRX_STATUS ;
 int CMR_EN ;
 int ENXIO ;
 int FALSE ;
 int MAX_FRAME_SIZE ;
 int PCS_MRX_CTL_AN_EN ;
 int PCS_MRX_CTL_PWR_DN ;
 int PCS_MRX_CTL_RESET ;
 int PCS_MRX_CTL_RST_AN ;
 int PCS_MRX_STATUS_AN_CPT ;
 int TRUE ;
 scalar_t__ bgx_poll_reg (struct bgx*,int,int ,int,int ) ;
 int bgx_reg_modify (struct bgx*,int,int ,int) ;
 int bgx_reg_read (struct bgx*,int,int ) ;
 int bgx_reg_write (struct bgx*,int,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bgx_lmac_sgmii_init(struct bgx *bgx, int lmacid)
{
 uint64_t cfg;

 bgx_reg_modify(bgx, lmacid, BGX_GMP_GMI_TXX_THRESH, 0x30);

 bgx_reg_modify(bgx, lmacid, BGX_GMP_GMI_RXX_JABBER, MAX_FRAME_SIZE);


 cfg = bgx_reg_read(bgx, lmacid, BGX_GMP_GMI_TXX_APPEND);
 if (cfg & 1)
  bgx_reg_write(bgx, lmacid, BGX_GMP_GMI_TXX_SGMII_CTL, 0);


 bgx_reg_modify(bgx, lmacid, BGX_CMRX_CFG, CMR_EN);


 bgx_reg_modify(bgx, lmacid, BGX_GMP_PCS_MRX_CTL, PCS_MRX_CTL_RESET);
 if (bgx_poll_reg(bgx, lmacid, BGX_GMP_PCS_MRX_CTL,
     PCS_MRX_CTL_RESET, TRUE) != 0) {
  device_printf(bgx->dev, "BGX PCS reset not completed\n");
  return (ENXIO);
 }


 cfg = bgx_reg_read(bgx, lmacid, BGX_GMP_PCS_MRX_CTL);
 cfg &= ~PCS_MRX_CTL_PWR_DN;
 cfg |= (PCS_MRX_CTL_RST_AN | PCS_MRX_CTL_AN_EN);
 bgx_reg_write(bgx, lmacid, BGX_GMP_PCS_MRX_CTL, cfg);

 if (bgx_poll_reg(bgx, lmacid, BGX_GMP_PCS_MRX_STATUS,
     PCS_MRX_STATUS_AN_CPT, FALSE) != 0) {
  device_printf(bgx->dev, "BGX AN_CPT not completed\n");
  return (ENXIO);
 }

 return (0);
}
