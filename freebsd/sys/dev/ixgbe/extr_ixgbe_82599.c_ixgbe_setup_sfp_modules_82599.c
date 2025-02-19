
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_9__ {scalar_t__ (* read ) (struct ixgbe_hw*,int,int*) ;} ;
struct TYPE_12__ {int semaphore_delay; TYPE_3__ ops; } ;
struct TYPE_10__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;scalar_t__ (* prot_autoc_write ) (struct ixgbe_hw*,int,int ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_11__ {int orig_autoc; TYPE_4__ ops; } ;
struct TYPE_7__ {int * reset; } ;
struct TYPE_8__ {scalar_t__ sfp_type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_6__ eeprom; TYPE_5__ mac; TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int ERROR_REPORT2 (int ,char*,int) ;
 int FALSE ;
 int IXGBE_AUTOC_LMS_10G_SERIAL ;
 int IXGBE_CORECTL ;
 int IXGBE_ERROR_INVALID_STATE ;
 scalar_t__ IXGBE_ERR_PHY ;
 scalar_t__ IXGBE_ERR_SFP_SETUP_NOT_COMPLETE ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_MAC_CSR_SM ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_get_sfp_init_sequence_offsets (struct ixgbe_hw*,int*,int*) ;
 int ixgbe_init_mac_link_ops_82599 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_sfp_type_unknown ;
 int msec_delay (int ) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int,int*) ;
 int stub4 (struct ixgbe_hw*,int ) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int,int ) ;
 int stub6 (struct ixgbe_hw*,int ) ;

s32 ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw)
{
 s32 ret_val = IXGBE_SUCCESS;
 u16 list_offset, data_offset, data_value;

 DEBUGFUNC("ixgbe_setup_sfp_modules_82599");

 if (hw->phy.sfp_type != ixgbe_sfp_type_unknown) {
  ixgbe_init_mac_link_ops_82599(hw);

  hw->phy.ops.reset = ((void*)0);

  ret_val = ixgbe_get_sfp_init_sequence_offsets(hw, &list_offset,
             &data_offset);
  if (ret_val != IXGBE_SUCCESS)
   goto setup_sfp_out;


  ret_val = hw->mac.ops.acquire_swfw_sync(hw,
       IXGBE_GSSR_MAC_CSR_SM);
  if (ret_val != IXGBE_SUCCESS) {
   ret_val = IXGBE_ERR_SWFW_SYNC;
   goto setup_sfp_out;
  }

  if (hw->eeprom.ops.read(hw, ++data_offset, &data_value))
   goto setup_sfp_err;
  while (data_value != 0xffff) {
   IXGBE_WRITE_REG(hw, IXGBE_CORECTL, data_value);
   IXGBE_WRITE_FLUSH(hw);
   if (hw->eeprom.ops.read(hw, ++data_offset, &data_value))
    goto setup_sfp_err;
  }


  hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);



  msec_delay(hw->eeprom.semaphore_delay);


  ret_val = hw->mac.ops.prot_autoc_write(hw,
   hw->mac.orig_autoc | IXGBE_AUTOC_LMS_10G_SERIAL,
   FALSE);

  if (ret_val) {
   DEBUGOUT("sfp module setup not complete\n");
   ret_val = IXGBE_ERR_SFP_SETUP_NOT_COMPLETE;
   goto setup_sfp_out;
  }

 }

setup_sfp_out:
 return ret_val;

setup_sfp_err:

 hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_MAC_CSR_SM);

 msec_delay(hw->eeprom.semaphore_delay);
 ERROR_REPORT2(IXGBE_ERROR_INVALID_STATE,
        "eeprom read at offset %d failed", data_offset);
 return IXGBE_ERR_PHY;
}
