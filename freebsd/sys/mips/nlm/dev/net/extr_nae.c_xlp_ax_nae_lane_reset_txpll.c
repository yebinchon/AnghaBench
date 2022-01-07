
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int DELAY (int) ;
 int NAE_REG (int,int ,int) ;
 int PHY ;
 int PHYMODE_SGMII ;
 int PHY_LANE_0_CTRL ;
 int PHY_LANE_CTRL_ADDR_POS ;
 int PHY_LANE_CTRL_BPC_XAUI ;
 int PHY_LANE_CTRL_CMD_PENDING ;
 int PHY_LANE_CTRL_CMD_READ ;
 int PHY_LANE_CTRL_CMD_START ;
 int PHY_LANE_CTRL_CMD_WRITE ;
 int PHY_LANE_CTRL_PHYMODE_POS ;
 int PHY_LANE_CTRL_PWRDOWN ;
 int PHY_LANE_CTRL_RST ;
 int PHY_LANE_STAT_PCR ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
xlp_ax_nae_lane_reset_txpll(uint64_t nae_base, int block, int lane_ctrl,
    int mode)
{
 uint32_t val = 0, saved_data;
 int rext_sel = 0;

 val = PHY_LANE_CTRL_RST |
     PHY_LANE_CTRL_PWRDOWN |
     (mode << PHY_LANE_CTRL_PHYMODE_POS);


 if (mode != PHYMODE_SGMII)
  val |= PHY_LANE_CTRL_BPC_XAUI;

 nlm_write_nae_reg(nae_base, NAE_REG(block, PHY, lane_ctrl), val);

 if (lane_ctrl != 4) {
  rext_sel = (1 << 23);
  if (mode != PHYMODE_SGMII)
   rext_sel |= PHY_LANE_CTRL_BPC_XAUI;

  val = nlm_read_nae_reg(nae_base,
      NAE_REG(block, PHY, lane_ctrl));
  val &= ~PHY_LANE_CTRL_RST;
  val |= rext_sel;


  nlm_write_nae_reg(nae_base,
      NAE_REG(block, PHY, lane_ctrl), val);

  DELAY(20000);

  val |= PHY_LANE_CTRL_RST;
  nlm_write_nae_reg(nae_base,
      NAE_REG(block, PHY, lane_ctrl), val);

  val = 0;
 }


 saved_data = nlm_read_nae_reg(nae_base,
     NAE_REG(block, PHY, lane_ctrl)) & 0xFFC00000;

 nlm_write_nae_reg(nae_base,
     NAE_REG(block, PHY, lane_ctrl),
     (0x66 << PHY_LANE_CTRL_ADDR_POS)
     | PHY_LANE_CTRL_CMD_READ
     | PHY_LANE_CTRL_CMD_START
     | PHY_LANE_CTRL_RST
     | rext_sel
     | val );

 while (((val = nlm_read_nae_reg(nae_base,
     NAE_REG(block, PHY, lane_ctrl))) &
     PHY_LANE_CTRL_CMD_PENDING));

 val &= 0xFF;

 val &= ~(1 << 4);
 nlm_write_nae_reg(nae_base,
     NAE_REG(block, PHY, lane_ctrl),
     (0x66 << PHY_LANE_CTRL_ADDR_POS)
     | PHY_LANE_CTRL_CMD_WRITE
     | PHY_LANE_CTRL_CMD_START
     | (0x0 << 19)
     | rext_sel
     | saved_data
     | val );


 nlm_write_nae_reg(nae_base,
     NAE_REG(block, PHY, lane_ctrl),
     (0x66 << PHY_LANE_CTRL_ADDR_POS)
     | PHY_LANE_CTRL_CMD_WRITE
     | PHY_LANE_CTRL_CMD_START
     | (0x0 << 19)
     | rext_sel
     | saved_data
     | val );

 while (!((val = nlm_read_nae_reg(nae_base,
     NAE_REG(block, PHY, (lane_ctrl - PHY_LANE_0_CTRL)))) &
     PHY_LANE_STAT_PCR));


 val = nlm_read_nae_reg(nae_base, NAE_REG(block, PHY, lane_ctrl));
 val &= ~((1 << 29) | (0x7ffff));
 nlm_write_nae_reg(nae_base, NAE_REG(block, PHY, lane_ctrl),
     (rext_sel | val));
}
