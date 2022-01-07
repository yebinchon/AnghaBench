
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bgx {int qlm_mode; int lmac_count; int lane_to_sds; int use_training; int lmac_type; } ;


 int BGX_CMR_RX_LMACS ;
 int BGX_MODE_10G_KR ;
 int BGX_MODE_40G_KR ;
 int BGX_MODE_RXAUI ;
 int BGX_MODE_SGMII ;
 int BGX_MODE_XAUI ;
 int BGX_MODE_XFI ;
 int BGX_MODE_XLAUI ;







 int bgx_reg_read (struct bgx*,int ,int ) ;

__attribute__((used)) static void
bgx_set_num_ports(struct bgx *bgx)
{
 uint64_t lmac_count;

 switch (bgx->qlm_mode) {
 case 131:
  bgx->lmac_count = 4;
  bgx->lmac_type = BGX_MODE_SGMII;
  bgx->lane_to_sds = 0;
  break;
 case 130:
  bgx->lmac_count = 1;
  bgx->lmac_type = BGX_MODE_XAUI;
  bgx->lane_to_sds = 0xE4;
   break;
 case 132:
  bgx->lmac_count = 2;
  bgx->lmac_type = BGX_MODE_RXAUI;
  bgx->lane_to_sds = 0xE4;
   break;
 case 129:
  bgx->lmac_count = 4;
  bgx->lmac_type = BGX_MODE_XFI;
  bgx->lane_to_sds = 0;
  break;
 case 128:
  bgx->lmac_count = 1;
  bgx->lmac_type = BGX_MODE_XLAUI;
  bgx->lane_to_sds = 0xE4;
  break;
 case 134:
  bgx->lmac_count = 4;
  bgx->lmac_type = BGX_MODE_10G_KR;
  bgx->lane_to_sds = 0;
  bgx->use_training = 1;
  break;
 case 133:
  bgx->lmac_count = 1;
  bgx->lmac_type = BGX_MODE_40G_KR;
  bgx->lane_to_sds = 0xE4;
  bgx->use_training = 1;
  break;
 default:
  bgx->lmac_count = 0;
  break;
 }






 lmac_count = bgx_reg_read(bgx, 0, BGX_CMR_RX_LMACS) & 0x7;
 if (lmac_count != 4)
  bgx->lmac_count = lmac_count;
}
