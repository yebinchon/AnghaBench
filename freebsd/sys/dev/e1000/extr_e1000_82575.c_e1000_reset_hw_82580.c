
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int (* release_swfw_sync ) (struct e1000_hw*,int ) ;scalar_t__ (* acquire_swfw_sync ) (struct e1000_hw*,int ) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ ops; } ;
struct TYPE_5__ {int global_device_reset; } ;
struct TYPE_6__ {TYPE_1__ _82575; } ;
struct e1000_hw {int device_id; TYPE_4__ mac; TYPE_2__ dev_spec; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_DEV_RST ;
 int E1000_CTRL_RST ;

 int E1000_ICR ;
 int E1000_IMC ;
 int E1000_RCTL ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 int E1000_STAT_DEV_RST_SET ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_SW_SYNCH_MB ;
 int E1000_TCTL ;
 int E1000_TCTL_PSP ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 void* FALSE ;
 scalar_t__ e1000_82580 ;
 scalar_t__ e1000_check_alt_mac_addr_generic (struct e1000_hw*) ;
 scalar_t__ e1000_disable_pcie_master_generic (struct e1000_hw*) ;
 scalar_t__ e1000_get_auto_rd_done_generic (struct e1000_hw*) ;
 scalar_t__ e1000_reset_mdicnfg_82580 (struct e1000_hw*) ;
 int msec_delay (int) ;
 scalar_t__ stub1 (struct e1000_hw*,int ) ;
 int stub2 (struct e1000_hw*,int ) ;

__attribute__((used)) static s32 e1000_reset_hw_82580(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;

 u16 swmbsw_mask = E1000_SW_SYNCH_MB;
 u32 ctrl;
 bool global_device_reset = hw->dev_spec._82575.global_device_reset;

 DEBUGFUNC("e1000_reset_hw_82580");

 hw->dev_spec._82575.global_device_reset = FALSE;


 if (hw->mac.type == e1000_82580)
  global_device_reset = FALSE;


 ctrl = E1000_READ_REG(hw, E1000_CTRL);





 ret_val = e1000_disable_pcie_master_generic(hw);
 if (ret_val)
  DEBUGOUT("PCI-E Master disable polling has failed.\n");

 DEBUGOUT("Masking off all interrupts\n");
 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);
 E1000_WRITE_REG(hw, E1000_RCTL, 0);
 E1000_WRITE_REG(hw, E1000_TCTL, E1000_TCTL_PSP);
 E1000_WRITE_FLUSH(hw);

 msec_delay(10);


 if (global_device_reset && hw->mac.ops.acquire_swfw_sync(hw,
     swmbsw_mask))
   global_device_reset = FALSE;

 if (global_device_reset && !(E1000_READ_REG(hw, E1000_STATUS) &
     E1000_STAT_DEV_RST_SET))
  ctrl |= E1000_CTRL_DEV_RST;
 else
  ctrl |= E1000_CTRL_RST;

 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);

 switch (hw->device_id) {
 case 128:
  break;
 default:
  E1000_WRITE_FLUSH(hw);
  break;
 }


 msec_delay(5);

 ret_val = e1000_get_auto_rd_done_generic(hw);
 if (ret_val) {





  DEBUGOUT("Auto Read Done did not complete\n");
 }


 E1000_WRITE_REG(hw, E1000_STATUS, E1000_STAT_DEV_RST_SET);


 E1000_WRITE_REG(hw, E1000_IMC, 0xffffffff);
 E1000_READ_REG(hw, E1000_ICR);

 ret_val = e1000_reset_mdicnfg_82580(hw);
 if (ret_val)
  DEBUGOUT("Could not reset MDICNFG based on EEPROM\n");


 ret_val = e1000_check_alt_mac_addr_generic(hw);


 if (global_device_reset)
  hw->mac.ops.release_swfw_sync(hw, swmbsw_mask);

 return ret_val;
}
