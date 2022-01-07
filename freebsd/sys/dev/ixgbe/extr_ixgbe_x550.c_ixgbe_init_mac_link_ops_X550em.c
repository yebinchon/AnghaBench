
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_media_type ) (struct ixgbe_hw*) ;void* setup_link; int check_link; int setup_mac_link; int set_rate_select_speed; int * flap_tx_laser; int * enable_tx_laser; int * disable_tx_laser; } ;
struct ixgbe_mac_info {TYPE_1__ ops; int type; } ;
struct ixgbe_hw {int device_id; struct ixgbe_mac_info mac; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_DEV_ID_X550EM_A_1G_T ;
 int IXGBE_DEV_ID_X550EM_A_1G_T_L ;
 int IXGBE_DEV_ID_X550EM_A_SFP ;
 int IXGBE_DEV_ID_X550EM_A_SFP_N ;
 int IXGBE_DEV_ID_X550EM_A_SGMII ;
 int IXGBE_DEV_ID_X550EM_A_SGMII_L ;
 int IXGBE_DEV_ID_X550EM_X_1G_T ;
 int ixgbe_check_link_t_X550em ;
 int ixgbe_check_mac_link_generic ;
 int ixgbe_mac_X550EM_a ;



 int ixgbe_set_soft_rate_select_speed ;
 void* ixgbe_setup_mac_link_multispeed_fiber ;
 int ixgbe_setup_mac_link_sfp_x550a ;
 int ixgbe_setup_mac_link_sfp_x550em ;
 void* ixgbe_setup_mac_link_t_X550em ;
 void* ixgbe_setup_sgmii ;
 void* ixgbe_setup_sgmii_fw ;
 int stub1 (struct ixgbe_hw*) ;

void ixgbe_init_mac_link_ops_X550em(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;

 DEBUGFUNC("ixgbe_init_mac_link_ops_X550em");

 switch (hw->mac.ops.get_media_type(hw)) {
 case 128:



  mac->ops.disable_tx_laser = ((void*)0);
  mac->ops.enable_tx_laser = ((void*)0);
  mac->ops.flap_tx_laser = ((void*)0);
  mac->ops.setup_link = ixgbe_setup_mac_link_multispeed_fiber;
  mac->ops.set_rate_select_speed =
     ixgbe_set_soft_rate_select_speed;

  if ((hw->device_id == IXGBE_DEV_ID_X550EM_A_SFP_N) ||
      (hw->device_id == IXGBE_DEV_ID_X550EM_A_SFP))
   mac->ops.setup_mac_link =
      ixgbe_setup_mac_link_sfp_x550a;
  else
   mac->ops.setup_mac_link =
      ixgbe_setup_mac_link_sfp_x550em;
  break;
 case 129:
  if (hw->device_id == IXGBE_DEV_ID_X550EM_X_1G_T)
   break;
  if (hw->mac.type == ixgbe_mac_X550EM_a) {
   if (hw->device_id == IXGBE_DEV_ID_X550EM_A_1G_T ||
       hw->device_id == IXGBE_DEV_ID_X550EM_A_1G_T_L) {
    mac->ops.setup_link = ixgbe_setup_sgmii_fw;
    mac->ops.check_link =
         ixgbe_check_mac_link_generic;
   } else {
    mac->ops.setup_link =
        ixgbe_setup_mac_link_t_X550em;
   }
  } else {
   mac->ops.setup_link = ixgbe_setup_mac_link_t_X550em;
   mac->ops.check_link = ixgbe_check_link_t_X550em;
  }
  break;
 case 130:
  if (hw->device_id == IXGBE_DEV_ID_X550EM_A_SGMII ||
      hw->device_id == IXGBE_DEV_ID_X550EM_A_SGMII_L)
   mac->ops.setup_link = ixgbe_setup_sgmii;
  break;
 default:
  break;
 }
}
