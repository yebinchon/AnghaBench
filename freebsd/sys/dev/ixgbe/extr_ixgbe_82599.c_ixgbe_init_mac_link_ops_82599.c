
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* get_media_type ) (struct ixgbe_hw*) ;void* setup_link; int set_rate_select_speed; void* setup_mac_link; int * flap_tx_laser; int * enable_tx_laser; int * disable_tx_laser; } ;
struct ixgbe_mac_info {TYPE_2__ ops; } ;
struct TYPE_3__ {scalar_t__ smart_speed; scalar_t__ multispeed_fiber; } ;
struct ixgbe_hw {TYPE_1__ phy; struct ixgbe_mac_info mac; } ;


 int DEBUGFUNC (char*) ;
 int * ixgbe_disable_tx_laser_multispeed_fiber ;
 int * ixgbe_enable_tx_laser_multispeed_fiber ;
 int * ixgbe_flap_tx_laser_multispeed_fiber ;
 scalar_t__ ixgbe_get_media_type (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_media_type_backplane ;
 scalar_t__ ixgbe_media_type_fiber ;
 scalar_t__ ixgbe_media_type_fiber_fixed ;
 int ixgbe_mng_enabled (struct ixgbe_hw*) ;
 int ixgbe_set_hard_rate_select_speed ;
 int ixgbe_set_soft_rate_select_speed ;
 void* ixgbe_setup_mac_link_82599 ;
 void* ixgbe_setup_mac_link_multispeed_fiber ;
 void* ixgbe_setup_mac_link_smartspeed ;
 scalar_t__ ixgbe_smart_speed_auto ;
 scalar_t__ ixgbe_smart_speed_on ;
 int ixgbe_verify_lesm_fw_enabled_82599 (struct ixgbe_hw*) ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;

void ixgbe_init_mac_link_ops_82599(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;

 DEBUGFUNC("ixgbe_init_mac_link_ops_82599");





 if ((mac->ops.get_media_type(hw) == ixgbe_media_type_fiber) &&
     !ixgbe_mng_enabled(hw)) {
  mac->ops.disable_tx_laser =
           ixgbe_disable_tx_laser_multispeed_fiber;
  mac->ops.enable_tx_laser =
     ixgbe_enable_tx_laser_multispeed_fiber;
  mac->ops.flap_tx_laser = ixgbe_flap_tx_laser_multispeed_fiber;

 } else {
  mac->ops.disable_tx_laser = ((void*)0);
  mac->ops.enable_tx_laser = ((void*)0);
  mac->ops.flap_tx_laser = ((void*)0);
 }

 if (hw->phy.multispeed_fiber) {

  mac->ops.setup_link = ixgbe_setup_mac_link_multispeed_fiber;
  mac->ops.setup_mac_link = ixgbe_setup_mac_link_82599;
  mac->ops.set_rate_select_speed =
            ixgbe_set_hard_rate_select_speed;
  if (ixgbe_get_media_type(hw) == ixgbe_media_type_fiber_fixed)
   mac->ops.set_rate_select_speed =
            ixgbe_set_soft_rate_select_speed;
 } else {
  if ((ixgbe_get_media_type(hw) == ixgbe_media_type_backplane) &&
       (hw->phy.smart_speed == ixgbe_smart_speed_auto ||
        hw->phy.smart_speed == ixgbe_smart_speed_on) &&
        !ixgbe_verify_lesm_fw_enabled_82599(hw)) {
   mac->ops.setup_link = ixgbe_setup_mac_link_smartspeed;
  } else {
   mac->ops.setup_link = ixgbe_setup_mac_link_82599;
  }
 }
}
