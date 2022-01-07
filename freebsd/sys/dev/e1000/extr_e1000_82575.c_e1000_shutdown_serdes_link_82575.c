
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_SDP3_DATA ;
 int E1000_PCS_CFG0 ;
 int E1000_PCS_CFG_PCS_EN ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int e1000_enable_mng_pass_thru (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_internal_serdes ;
 int e1000_sgmii_active_82575 (struct e1000_hw*) ;
 int msec_delay (int) ;

void e1000_shutdown_serdes_link_82575(struct e1000_hw *hw)
{
 u32 reg;

 DEBUGFUNC("e1000_shutdown_serdes_link_82575");

 if ((hw->phy.media_type != e1000_media_type_internal_serdes) &&
     !e1000_sgmii_active_82575(hw))
  return;

 if (!e1000_enable_mng_pass_thru(hw)) {

  reg = E1000_READ_REG(hw, E1000_PCS_CFG0);
  reg &= ~E1000_PCS_CFG_PCS_EN;
  E1000_WRITE_REG(hw, E1000_PCS_CFG0, reg);


  reg = E1000_READ_REG(hw, E1000_CTRL_EXT);
  reg |= E1000_CTRL_EXT_SDP3_DATA;
  E1000_WRITE_REG(hw, E1000_CTRL_EXT, reg);


  E1000_WRITE_FLUSH(hw);
  msec_delay(1);
 }

 return;
}
