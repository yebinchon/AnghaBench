
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
struct lmac {int lmacid; struct bgx* bgx; } ;
struct bgx {int lmac_type; int dev; scalar_t__ use_training; } ;


 int BGX_MODE_10G_KR ;
 int BGX_MODE_40G_KR ;
 int BGX_MODE_XFI ;
 int BGX_MODE_XLAUI ;
 int BGX_SMUX_CTL ;
 int BGX_SMUX_RX_CTL ;
 int BGX_SPUX_BR_PMD_CRTL ;
 int BGX_SPUX_BR_STATUS1 ;
 int BGX_SPUX_BX_STATUS ;
 int BGX_SPUX_CONTROL1 ;
 int BGX_SPUX_INT ;
 int BGX_SPUX_MISC_CONTROL ;
 int BGX_SPUX_STATUS1 ;
 int BGX_SPUX_STATUS2 ;
 int ENXIO ;
 int FALSE ;
 int SMU_CTL_RX_IDLE ;
 int SMU_CTL_TX_IDLE ;
 int SMU_RX_CTL_STATUS ;
 int SPU_BR_STATUS_BLK_LOCK ;
 int SPU_BX_STATUS_RX_ALIGN ;
 int SPU_CTL_RESET ;
 unsigned long SPU_MISC_CTL_RX_DIS ;
 int SPU_STATUS1_RCV_LNK ;
 int SPU_STATUS2_RCVFLT ;
 int TRUE ;
 scalar_t__ bgx_poll_reg (struct bgx*,int,int ,int,int ) ;
 int bgx_reg_modify (struct bgx*,int,int ,int) ;
 int bgx_reg_read (struct bgx*,int,int ) ;
 int bgx_reg_write (struct bgx*,int,int ,unsigned long) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bgx_xaui_check_link(struct lmac *lmac)
{
 struct bgx *bgx = lmac->bgx;
 int lmacid = lmac->lmacid;
 int lmac_type = bgx->lmac_type;
 uint64_t cfg;

 bgx_reg_modify(bgx, lmacid, BGX_SPUX_MISC_CONTROL, SPU_MISC_CTL_RX_DIS);
 if (bgx->use_training) {
  cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_INT);
  if ((cfg & (1UL << 13)) == 0) {
   cfg = (1UL << 13) | (1UL << 14);
   bgx_reg_write(bgx, lmacid, BGX_SPUX_INT, cfg);
   cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_BR_PMD_CRTL);
   cfg |= (1UL << 0);
   bgx_reg_write(bgx, lmacid, BGX_SPUX_BR_PMD_CRTL, cfg);
   return (ENXIO);
  }
 }


 if (bgx_poll_reg(bgx, lmacid, BGX_SPUX_CONTROL1,
     SPU_CTL_RESET, TRUE) != 0) {
  device_printf(bgx->dev, "BGX SPU reset not completed\n");
  return (ENXIO);
 }

 if ((lmac_type == BGX_MODE_10G_KR) || (lmac_type == BGX_MODE_XFI) ||
     (lmac_type == BGX_MODE_40G_KR) || (lmac_type == BGX_MODE_XLAUI)) {
  if (bgx_poll_reg(bgx, lmacid, BGX_SPUX_BR_STATUS1,
      SPU_BR_STATUS_BLK_LOCK, FALSE)) {
   device_printf(bgx->dev,
       "SPU_BR_STATUS_BLK_LOCK not completed\n");
   return (ENXIO);
  }
 } else {
  if (bgx_poll_reg(bgx, lmacid, BGX_SPUX_BX_STATUS,
      SPU_BX_STATUS_RX_ALIGN, FALSE) != 0) {
   device_printf(bgx->dev,
       "SPU_BX_STATUS_RX_ALIGN not completed\n");
   return (ENXIO);
  }
 }


 bgx_reg_modify(bgx, lmacid, BGX_SPUX_STATUS2, SPU_STATUS2_RCVFLT);
 if (bgx_reg_read(bgx, lmacid, BGX_SPUX_STATUS2) & SPU_STATUS2_RCVFLT) {
  device_printf(bgx->dev, "Receive fault, retry training\n");
  if (bgx->use_training) {
   cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_INT);
   if ((cfg & (1UL << 13)) == 0) {
    cfg = (1UL << 13) | (1UL << 14);
    bgx_reg_write(bgx, lmacid, BGX_SPUX_INT, cfg);
    cfg = bgx_reg_read(bgx, lmacid,
        BGX_SPUX_BR_PMD_CRTL);
    cfg |= (1UL << 0);
    bgx_reg_write(bgx, lmacid,
        BGX_SPUX_BR_PMD_CRTL, cfg);
    return (ENXIO);
   }
  }
  return (ENXIO);
 }


 if (bgx_poll_reg(bgx, lmacid, BGX_SMUX_RX_CTL,
     SMU_RX_CTL_STATUS, TRUE) != 0) {
  device_printf(bgx->dev, "SMU RX link not okay\n");
  return (ENXIO);
 }


 if (bgx_poll_reg(bgx, lmacid, BGX_SMUX_CTL,
     SMU_CTL_RX_IDLE, FALSE) != 0) {
  device_printf(bgx->dev, "SMU RX not idle\n");
  return (ENXIO);
 }


 if (bgx_poll_reg(bgx, lmacid, BGX_SMUX_CTL,
     SMU_CTL_TX_IDLE, FALSE) != 0) {
  device_printf(bgx->dev, "SMU TX not idle\n");
  return (ENXIO);
 }

 if ((bgx_reg_read(bgx, lmacid, BGX_SPUX_STATUS2) &
     SPU_STATUS2_RCVFLT) != 0) {
  device_printf(bgx->dev, "Receive fault\n");
  return (ENXIO);
 }


 bgx_reg_modify(bgx, lmacid, BGX_SPUX_STATUS1, SPU_STATUS1_RCV_LNK);
 if (bgx_poll_reg(bgx, lmacid, BGX_SPUX_STATUS1,
     SPU_STATUS1_RCV_LNK, FALSE) != 0) {
  device_printf(bgx->dev, "SPU receive link down\n");
  return (ENXIO);
 }

 cfg = bgx_reg_read(bgx, lmacid, BGX_SPUX_MISC_CONTROL);
 cfg &= ~SPU_MISC_CTL_RX_DIS;
 bgx_reg_write(bgx, lmacid, BGX_SPUX_MISC_CONTROL, cfg);
 return (0);
}
