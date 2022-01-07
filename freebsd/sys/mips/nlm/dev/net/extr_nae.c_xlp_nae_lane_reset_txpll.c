
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_REG (int,int ,int) ;
 int PHY ;
 int PHYMODE_SGMII ;
 int PHY_LANE_CTRL_BPC_XAUI ;
 int PHY_LANE_CTRL_PHYMODE_POS ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
xlp_nae_lane_reset_txpll(uint64_t nae_base, int block, int lane_ctrl,
    int mode)
{
 uint32_t val = 0;
 int rext_sel = 0;

 if (lane_ctrl != 4)
  rext_sel = (1 << 23);

 val = nlm_read_nae_reg(nae_base,
     NAE_REG(block, PHY, lane_ctrl));


 if (mode != PHYMODE_SGMII)
  val |= PHY_LANE_CTRL_BPC_XAUI;
 val |= 0x100000;
 val |= (mode << PHY_LANE_CTRL_PHYMODE_POS);
 val &= ~(0x20000);
 nlm_write_nae_reg(nae_base,
     NAE_REG(block, PHY, lane_ctrl), val);

 val = nlm_read_nae_reg(nae_base,
     NAE_REG(block, PHY, lane_ctrl));
 val |= 0x40000000;
 nlm_write_nae_reg(nae_base,
     NAE_REG(block, PHY, lane_ctrl), val);


 val = nlm_read_nae_reg(nae_base,
     NAE_REG(block, PHY, lane_ctrl));
 val &= ~( (1 << 29) | (0x7ffff));
 nlm_write_nae_reg(nae_base,
     NAE_REG(block, PHY, lane_ctrl), rext_sel | val);
}
