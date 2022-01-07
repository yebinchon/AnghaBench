
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgx {int bgx_id; void* qlm_mode; int dev; } ;
typedef int device_t ;


 int BGX_CMRX_CFG ;





 int BGX_SPUX_BR_PMD_CRTL ;
 void* QLM_MODE_10G_KR_4X1 ;
 void* QLM_MODE_40G_KR4_1X4 ;
 void* QLM_MODE_RXAUI_2X2 ;
 void* QLM_MODE_SGMII ;
 void* QLM_MODE_XAUI_1X4 ;
 void* QLM_MODE_XFI_4X1 ;
 void* QLM_MODE_XLAUI_1X4 ;
 int SPU_PMD_CRTL_TRAIN_EN ;
 int bgx_reg_read (struct bgx*,int ,int ) ;
 int bootverbose ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static void
bgx_get_qlm_mode(struct bgx *bgx)
{
 device_t dev = bgx->dev;;
 int lmac_type;
 int train_en;




 lmac_type = bgx_reg_read(bgx, 0, BGX_CMRX_CFG);
 lmac_type = (lmac_type >> 8) & 0x07;

 train_en = bgx_reg_read(bgx, 0, BGX_SPUX_BR_PMD_CRTL) &
     SPU_PMD_CRTL_TRAIN_EN;

 switch (lmac_type) {
 case 131:
  bgx->qlm_mode = QLM_MODE_SGMII;
  if (bootverbose) {
   device_printf(dev, "BGX%d QLM mode: SGMII\n",
       bgx->bgx_id);
  }
  break;
 case 130:
  bgx->qlm_mode = QLM_MODE_XAUI_1X4;
  if (bootverbose) {
   device_printf(dev, "BGX%d QLM mode: XAUI\n",
       bgx->bgx_id);
  }
  break;
 case 132:
  bgx->qlm_mode = QLM_MODE_RXAUI_2X2;
  if (bootverbose) {
   device_printf(dev, "BGX%d QLM mode: RXAUI\n",
       bgx->bgx_id);
  }
  break;
 case 129:
  if (!train_en) {
   bgx->qlm_mode = QLM_MODE_XFI_4X1;
   if (bootverbose) {
    device_printf(dev, "BGX%d QLM mode: XFI\n",
        bgx->bgx_id);
   }
  } else {
   bgx->qlm_mode = QLM_MODE_10G_KR_4X1;
   if (bootverbose) {
    device_printf(dev, "BGX%d QLM mode: 10G_KR\n",
        bgx->bgx_id);
   }
  }
  break;
 case 128:
  if (!train_en) {
   bgx->qlm_mode = QLM_MODE_XLAUI_1X4;
   if (bootverbose) {
    device_printf(dev, "BGX%d QLM mode: XLAUI\n",
        bgx->bgx_id);
   }
  } else {
   bgx->qlm_mode = QLM_MODE_40G_KR4_1X4;
   if (bootverbose) {
    device_printf(dev, "BGX%d QLM mode: 40G_KR4\n",
        bgx->bgx_id);
   }
  }
  break;
 default:
  bgx->qlm_mode = QLM_MODE_SGMII;
  if (bootverbose) {
   device_printf(dev, "BGX%d QLM default mode: SGMII\n",
       bgx->bgx_id);
  }
 }
}
