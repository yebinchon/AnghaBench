
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct lmac {int last_duplex; int last_speed; int lmacid; scalar_t__ link_up; struct bgx* bgx; } ;
struct bgx {int dummy; } ;


 int BGX_CMRX_CFG ;
 int BGX_GMP_GMI_PRTX_CFG ;
 int BGX_GMP_GMI_TXX_BURST ;
 int BGX_GMP_GMI_TXX_SLOT ;
 int BGX_GMP_PCS_MISCX_CTL ;
 int CMR_EN ;
 int GMI_PORT_CFG_DUPLEX ;
 int GMI_PORT_CFG_SLOT_TIME ;
 int GMI_PORT_CFG_SPEED ;
 int GMI_PORT_CFG_SPEED_MSB ;
 int PCS_MISC_CTL_GMX_ENO ;
 int PCS_MISC_CTL_SAMP_PT_MASK ;
 int bgx_reg_read (struct bgx*,int ,int ) ;
 int bgx_reg_write (struct bgx*,int ,int ,int) ;

__attribute__((used)) static void
bgx_sgmii_change_link_state(struct lmac *lmac)
{
 struct bgx *bgx = lmac->bgx;
 uint64_t cmr_cfg;
 uint64_t port_cfg = 0;
 uint64_t misc_ctl = 0;

 cmr_cfg = bgx_reg_read(bgx, lmac->lmacid, BGX_CMRX_CFG);
 cmr_cfg &= ~CMR_EN;
 bgx_reg_write(bgx, lmac->lmacid, BGX_CMRX_CFG, cmr_cfg);

 port_cfg = bgx_reg_read(bgx, lmac->lmacid, BGX_GMP_GMI_PRTX_CFG);
 misc_ctl = bgx_reg_read(bgx, lmac->lmacid, BGX_GMP_PCS_MISCX_CTL);

 if (lmac->link_up) {
  misc_ctl &= ~PCS_MISC_CTL_GMX_ENO;
  port_cfg &= ~GMI_PORT_CFG_DUPLEX;
  port_cfg |= (lmac->last_duplex << 2);
 } else {
  misc_ctl |= PCS_MISC_CTL_GMX_ENO;
 }

 switch (lmac->last_speed) {
 case 10:
  port_cfg &= ~GMI_PORT_CFG_SPEED;
  port_cfg |= GMI_PORT_CFG_SPEED_MSB;
  port_cfg &= ~GMI_PORT_CFG_SLOT_TIME;
  misc_ctl &= ~PCS_MISC_CTL_SAMP_PT_MASK;
  misc_ctl |= 50;
  bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_TXX_SLOT, 64);
  bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_TXX_BURST, 0);
  break;
 case 100:
  port_cfg &= ~GMI_PORT_CFG_SPEED;
  port_cfg &= ~GMI_PORT_CFG_SPEED_MSB;
  port_cfg &= ~GMI_PORT_CFG_SLOT_TIME;
  misc_ctl &= ~PCS_MISC_CTL_SAMP_PT_MASK;
  misc_ctl |= 5;
  bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_TXX_SLOT, 64);
  bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_TXX_BURST, 0);
  break;
 case 1000:
  port_cfg |= GMI_PORT_CFG_SPEED;
  port_cfg &= ~GMI_PORT_CFG_SPEED_MSB;
  port_cfg |= GMI_PORT_CFG_SLOT_TIME;
  misc_ctl &= ~PCS_MISC_CTL_SAMP_PT_MASK;
  misc_ctl |= 1;
  bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_TXX_SLOT, 512);
  if (lmac->last_duplex)
   bgx_reg_write(bgx, lmac->lmacid,
          BGX_GMP_GMI_TXX_BURST, 0);
  else
   bgx_reg_write(bgx, lmac->lmacid,
          BGX_GMP_GMI_TXX_BURST, 8192);
  break;
 default:
  break;
 }
 bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_PCS_MISCX_CTL, misc_ctl);
 bgx_reg_write(bgx, lmac->lmacid, BGX_GMP_GMI_PRTX_CFG, port_cfg);

 port_cfg = bgx_reg_read(bgx, lmac->lmacid, BGX_GMP_GMI_PRTX_CFG);


 cmr_cfg |= CMR_EN;
 bgx_reg_write(bgx, lmac->lmacid, BGX_CMRX_CFG, cmr_cfg);
}
