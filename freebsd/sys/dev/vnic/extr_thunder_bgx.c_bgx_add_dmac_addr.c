
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long uint64_t ;
struct bgx {TYPE_1__* lmac; int dev; } ;
struct TYPE_2__ {int dmac; } ;


 int BCAST_ACCEPT ;
 scalar_t__ BGX_CMRX_RX_DMAC_CTL ;
 scalar_t__ BGX_CMR_RX_DMACX_CAM ;
 int CAM_ACCEPT ;
 int MAX_BGX_PER_CN88XX ;
 int MAX_DMAC_PER_LMAC ;
 int MAX_DMAC_PER_LMAC_TNS_BYPASS_MODE ;
 int MCAST_MODE_CAM_FILTER ;
 int bgx_reg_write (struct bgx*,int,scalar_t__,int) ;
 struct bgx** bgx_vnic ;
 int device_printf (int ,char*,int) ;
 int printf (char*,int) ;

void
bgx_add_dmac_addr(uint64_t dmac, int node, int bgx_idx, int lmac)
{
 uint64_t offset;
 struct bgx *bgx;





 bgx_idx += node * MAX_BGX_PER_CN88XX;
 bgx = bgx_vnic[bgx_idx];

 if (bgx == ((void*)0)) {
  printf("BGX%d not yet initialized, ignoring DMAC addition\n",
      bgx_idx);
  return;
 }

 dmac = dmac | (1UL << 48) | ((uint64_t)lmac << 49);
 if (bgx->lmac[lmac].dmac == MAX_DMAC_PER_LMAC) {
  device_printf(bgx->dev,
      "Max DMAC filters for LMAC%d reached, ignoring\n",
      lmac);
  return;
 }

 if (bgx->lmac[lmac].dmac == MAX_DMAC_PER_LMAC_TNS_BYPASS_MODE)
  bgx->lmac[lmac].dmac = 1;

 offset = (bgx->lmac[lmac].dmac * sizeof(uint64_t)) +
     (lmac * MAX_DMAC_PER_LMAC * sizeof(uint64_t));
 bgx_reg_write(bgx, 0, BGX_CMR_RX_DMACX_CAM + offset, dmac);
 bgx->lmac[lmac].dmac++;

 bgx_reg_write(bgx, lmac, BGX_CMRX_RX_DMAC_CTL,
     (CAM_ACCEPT << 3) | (MCAST_MODE_CAM_FILTER << 1) |
     (BCAST_ACCEPT << 0));
}
