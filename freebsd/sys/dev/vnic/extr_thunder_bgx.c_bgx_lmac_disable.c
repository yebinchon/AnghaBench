
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint64_t ;
struct lmac {int * phy_if_dev; int phyaddr; int check_link_mtx; int check_link; } ;
struct bgx {scalar_t__ lmac_type; int dev; struct lmac* lmac; } ;


 int BGX_CMRX_CFG ;
 scalar_t__ BGX_MODE_10G_KR ;
 scalar_t__ BGX_MODE_40G_KR ;
 scalar_t__ BGX_MODE_XFI ;
 scalar_t__ BGX_MODE_XLAUI ;
 scalar_t__ LMAC_PHY_DISCONNECT (int *,int ,size_t) ;
 int bgx_flush_dmac_addrs (struct bgx*,size_t) ;
 int bgx_reg_read (struct bgx*,size_t,int ) ;
 int bgx_reg_write (struct bgx*,size_t,int ,int) ;
 int callout_drain (int *) ;
 int device_printf (int ,char*,size_t) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
bgx_lmac_disable(struct bgx *bgx, uint8_t lmacid)
{
 struct lmac *lmac;
 uint64_t cmrx_cfg;

 lmac = &bgx->lmac[lmacid];


 callout_drain(&lmac->check_link);
 mtx_destroy(&lmac->check_link_mtx);

 cmrx_cfg = bgx_reg_read(bgx, lmacid, BGX_CMRX_CFG);
 cmrx_cfg &= ~(1 << 15);
 bgx_reg_write(bgx, lmacid, BGX_CMRX_CFG, cmrx_cfg);
 bgx_flush_dmac_addrs(bgx, lmacid);

 if ((bgx->lmac_type != BGX_MODE_XFI) &&
     (bgx->lmac_type != BGX_MODE_XLAUI) &&
     (bgx->lmac_type != BGX_MODE_40G_KR) &&
     (bgx->lmac_type != BGX_MODE_10G_KR)) {
  if (lmac->phy_if_dev == ((void*)0)) {
   device_printf(bgx->dev,
       "LMAC%d missing interface to PHY\n", lmacid);
   return;
  }
  if (LMAC_PHY_DISCONNECT(lmac->phy_if_dev, lmac->phyaddr,
      lmacid) != 0) {
   device_printf(bgx->dev,
       "LMAC%d could not disconnect PHY\n", lmacid);
   return;
  }
  lmac->phy_if_dev = ((void*)0);
 }
}
