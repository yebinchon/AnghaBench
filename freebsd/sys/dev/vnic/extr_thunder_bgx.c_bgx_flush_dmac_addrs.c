
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct bgx {TYPE_1__* lmac; } ;
struct TYPE_2__ {int dmac; } ;


 scalar_t__ BGX_CMR_RX_DMACX_CAM ;
 int MAX_DMAC_PER_LMAC ;
 int bgx_reg_write (struct bgx*,int ,scalar_t__,int ) ;

__attribute__((used)) static void
bgx_flush_dmac_addrs(struct bgx *bgx, int lmac)
{
 uint64_t offset;

 while (bgx->lmac[lmac].dmac > 0) {
  offset = ((bgx->lmac[lmac].dmac - 1) * sizeof(uint64_t)) +
      (lmac * MAX_DMAC_PER_LMAC * sizeof(uint64_t));
  bgx_reg_write(bgx, 0, BGX_CMR_RX_DMACX_CAM + offset, 0);
  bgx->lmac[lmac].dmac--;
 }
}
