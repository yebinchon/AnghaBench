
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int LANE_CFG ;
 int LANE_CFG_CPLX_0_1 ;
 int LANE_CFG_CPLX_2_3 ;
 int LANE_RX_CLK ;
 int LANE_TX_CLK ;
 int LM_XAUI ;
 int NAE_REG (int,int ,int) ;
 int PHY ;
 int PHYMODE_XAUI ;
 int PHY_LANE_0_CTRL ;
 int PHY_LANE_3_CTRL ;
 int XAUI_LANE_FAULT ;
 int nlm_is_xlp8xx_ax () ;
 void* nlm_read_nae_reg (int ,int) ;
 int nlm_write_nae_reg (int ,int,int) ;
 int xlp_ax_nae_lane_reset_txpll (int ,int,int,int ) ;
 int xlp_nae_lane_reset_txpll (int ,int,int,int ) ;

void
nlm_xaui_pcs_init(uint64_t nae_base, int xaui_cplx_mask)
{
 int block, lane_ctrl, reg;
 int cplx_lane_enable;
 int lane_enable = 0;
 uint32_t regval;

 cplx_lane_enable = LM_XAUI |
     (LM_XAUI << 4) |
     (LM_XAUI << 8) |
     (LM_XAUI << 12);

 if (xaui_cplx_mask == 0)
  return;


 block = 7;

 if (xaui_cplx_mask & 0x3) {
  lane_enable = nlm_read_nae_reg(nae_base,
      NAE_REG(block, LANE_CFG, LANE_CFG_CPLX_0_1));
  if (xaui_cplx_mask & 0x1) {
   lane_enable &= ~(0xFFFF);
   lane_enable |= cplx_lane_enable;
  }
  if (xaui_cplx_mask & 0x2) {
   lane_enable &= ~(0xFFFF<<16);
   lane_enable |= (cplx_lane_enable << 16);
  }
  nlm_write_nae_reg(nae_base,
      NAE_REG(block, LANE_CFG, LANE_CFG_CPLX_0_1),
      lane_enable);
 }
 lane_enable = 0;
 if (xaui_cplx_mask & 0xc) {
  lane_enable = nlm_read_nae_reg(nae_base,
      NAE_REG(block, LANE_CFG, LANE_CFG_CPLX_2_3));
  if (xaui_cplx_mask & 0x4) {
   lane_enable &= ~(0xFFFF);
   lane_enable |= cplx_lane_enable;
  }
  if (xaui_cplx_mask & 0x8) {
   lane_enable &= ~(0xFFFF<<16);
   lane_enable |= (cplx_lane_enable << 16);
  }
  nlm_write_nae_reg(nae_base,
      NAE_REG(block, LANE_CFG, LANE_CFG_CPLX_2_3),
      lane_enable);
 }


 for (block = 0; block < 4; block++) {
  if ((xaui_cplx_mask & (1 << block)) == 0)
   continue;

  for (lane_ctrl = PHY_LANE_0_CTRL;
      lane_ctrl <= PHY_LANE_3_CTRL; lane_ctrl++) {
   if (!nlm_is_xlp8xx_ax())
    xlp_nae_lane_reset_txpll(nae_base,
        block, lane_ctrl, PHYMODE_XAUI);
   else
    xlp_ax_nae_lane_reset_txpll(nae_base, block,
        lane_ctrl, PHYMODE_XAUI);
  }
 }


 for (block = 0; block < 4; block++) {
  if ((xaui_cplx_mask & (1 << block)) == 0)
   continue;

  for (lane_ctrl = PHY_LANE_0_CTRL;
      lane_ctrl <= PHY_LANE_3_CTRL; lane_ctrl++) {

   reg = NAE_REG(block, PHY, lane_ctrl - 4);

   do {
    regval = nlm_read_nae_reg(nae_base, reg);
   } while ((regval & LANE_TX_CLK) == 0);


   do {
    regval = nlm_read_nae_reg(nae_base, reg);
   } while ((regval & LANE_RX_CLK) == 0);


   do {
    regval = nlm_read_nae_reg(nae_base, reg);
   } while ((regval & XAUI_LANE_FAULT) != 0);
  }
 }
}
