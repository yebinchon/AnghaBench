
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {void* media_type; } ;
struct TYPE_5__ {int e100_base_fx; } ;
struct e1000_dev_spec_82575 {TYPE_2__ eth_flags; void* sgmii_active; void* module_plugged; } ;
struct TYPE_4__ {struct e1000_dev_spec_82575 _82575; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ dev_spec; } ;
typedef int s32 ;


 int E1000_CTRL_EXT ;


 int E1000_CTRL_EXT_LINK_MODE_MASK ;


 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 void* FALSE ;
 void* TRUE ;
 void* e1000_media_type_copper ;
 void* e1000_media_type_internal_serdes ;
 void* e1000_media_type_unknown ;
 int e1000_set_sfp_media_type_82575 (struct e1000_hw*) ;
 int e1000_sgmii_uses_mdio_82575 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_get_media_type_82575(struct e1000_hw *hw)
{
 struct e1000_dev_spec_82575 *dev_spec = &hw->dev_spec._82575;
 s32 ret_val = E1000_SUCCESS;
 u32 ctrl_ext = 0;
 u32 link_mode = 0;


 dev_spec->sgmii_active = FALSE;
 dev_spec->module_plugged = FALSE;


 ctrl_ext = E1000_READ_REG(hw, E1000_CTRL_EXT);


 link_mode = ctrl_ext & E1000_CTRL_EXT_LINK_MODE_MASK;

 switch (link_mode) {
 case 131:
  hw->phy.media_type = e1000_media_type_internal_serdes;
  break;
 case 130:
  hw->phy.media_type = e1000_media_type_copper;
  break;
 case 128:

  if (e1000_sgmii_uses_mdio_82575(hw)) {
   hw->phy.media_type = e1000_media_type_copper;
   dev_spec->sgmii_active = TRUE;
   break;
  }


 case 129:

  ret_val = e1000_set_sfp_media_type_82575(hw);
  if ((ret_val != E1000_SUCCESS) ||
      (hw->phy.media_type == e1000_media_type_unknown)) {




   hw->phy.media_type = e1000_media_type_internal_serdes;

   if (link_mode == 128) {
    hw->phy.media_type = e1000_media_type_copper;
    dev_spec->sgmii_active = TRUE;
   }

   break;
  }


  if (dev_spec->eth_flags.e100_base_fx)
   break;


  ctrl_ext &= ~E1000_CTRL_EXT_LINK_MODE_MASK;

  if (hw->phy.media_type == e1000_media_type_copper)
   ctrl_ext |= 128;
  else
   ctrl_ext |= 129;

  E1000_WRITE_REG(hw, E1000_CTRL_EXT, ctrl_ext);

  break;
 }

 return ret_val;
}
