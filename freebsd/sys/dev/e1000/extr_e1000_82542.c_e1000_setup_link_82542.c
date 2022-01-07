
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* setup_physical_interface ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {TYPE_1__ ops; scalar_t__ report_tx_early; } ;
struct TYPE_4__ {int pause_time; int current_mode; int requested_mode; } ;
struct e1000_hw {TYPE_2__ fc; struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int ) ;
 int E1000_FCAH ;
 int E1000_FCAL ;
 int E1000_FCT ;
 int E1000_FCTTV ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int FLOW_CONTROL_ADDRESS_HIGH ;
 int FLOW_CONTROL_ADDRESS_LOW ;
 int FLOW_CONTROL_TYPE ;
 int e1000_fc_rx_pause ;
 int e1000_fc_tx_pause ;
 scalar_t__ e1000_set_default_fc_generic (struct e1000_hw*) ;
 scalar_t__ e1000_set_fc_watermarks_generic (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_setup_link_82542(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val;

 DEBUGFUNC("e1000_setup_link_82542");

 ret_val = e1000_set_default_fc_generic(hw);
 if (ret_val)
  goto out;

 hw->fc.requested_mode &= ~e1000_fc_tx_pause;

 if (mac->report_tx_early)
  hw->fc.requested_mode &= ~e1000_fc_rx_pause;





 hw->fc.current_mode = hw->fc.requested_mode;

 DEBUGOUT1("After fix-ups FlowControl is now = %x\n",
    hw->fc.current_mode);


 ret_val = mac->ops.setup_physical_interface(hw);
 if (ret_val)
  goto out;







 DEBUGOUT("Initializing Flow Control address, type and timer regs\n");

 E1000_WRITE_REG(hw, E1000_FCAL, FLOW_CONTROL_ADDRESS_LOW);
 E1000_WRITE_REG(hw, E1000_FCAH, FLOW_CONTROL_ADDRESS_HIGH);
 E1000_WRITE_REG(hw, E1000_FCT, FLOW_CONTROL_TYPE);

 E1000_WRITE_REG(hw, E1000_FCTTV, hw->fc.pause_time);

 ret_val = e1000_set_fc_watermarks_generic(hw);

out:
 return ret_val;
}
