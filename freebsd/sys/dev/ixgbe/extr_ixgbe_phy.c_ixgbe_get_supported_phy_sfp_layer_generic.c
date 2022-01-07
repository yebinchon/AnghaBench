
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_3__ {int (* read_i2c_eeprom ) (struct ixgbe_hw*,int ,int*) ;int (* identify_sfp ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {scalar_t__ sfp_type; int type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_PHYSICAL_LAYER_1000BASE_SX ;
 int IXGBE_PHYSICAL_LAYER_1000BASE_T ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_LR ;
 int IXGBE_PHYSICAL_LAYER_10GBASE_SR ;
 int IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA ;
 int IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU ;
 int IXGBE_PHYSICAL_LAYER_UNKNOWN ;
 int IXGBE_SFF_10GBASELR_CAPABLE ;
 int IXGBE_SFF_10GBASESR_CAPABLE ;
 int IXGBE_SFF_10GBE_COMP_CODES ;
 int IXGBE_SFF_1GBASESX_CAPABLE ;
 int IXGBE_SFF_1GBASET_CAPABLE ;
 int IXGBE_SFF_1GBE_COMP_CODES ;
 int IXGBE_SFF_QSFP_10GBE_COMP ;
 scalar_t__ ixgbe_sfp_type_not_present ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ,int*) ;
 int stub3 (struct ixgbe_hw*,int ,int*) ;
 int stub4 (struct ixgbe_hw*,int ,int*) ;

u64 ixgbe_get_supported_phy_sfp_layer_generic(struct ixgbe_hw *hw)
{
 u64 physical_layer = IXGBE_PHYSICAL_LAYER_UNKNOWN;
 u8 comp_codes_10g = 0;
 u8 comp_codes_1g = 0;

 DEBUGFUNC("ixgbe_get_supported_phy_sfp_layer_generic");

 hw->phy.ops.identify_sfp(hw);
 if (hw->phy.sfp_type == ixgbe_sfp_type_not_present)
  return physical_layer;

 switch (hw->phy.type) {
 case 130:
 case 129:
 case 137:
  physical_layer = IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU;
  break;
 case 132:
 case 135:
 case 139:
  physical_layer = IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA;
  break;
 case 134:
 case 133:
 case 131:
 case 128:
  hw->phy.ops.read_i2c_eeprom(hw,
        IXGBE_SFF_1GBE_COMP_CODES, &comp_codes_1g);
  hw->phy.ops.read_i2c_eeprom(hw,
        IXGBE_SFF_10GBE_COMP_CODES, &comp_codes_10g);
  if (comp_codes_10g & IXGBE_SFF_10GBASESR_CAPABLE)
   physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_SR;
  else if (comp_codes_10g & IXGBE_SFF_10GBASELR_CAPABLE)
   physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_LR;
  else if (comp_codes_1g & IXGBE_SFF_1GBASET_CAPABLE)
   physical_layer = IXGBE_PHYSICAL_LAYER_1000BASE_T;
  else if (comp_codes_1g & IXGBE_SFF_1GBASESX_CAPABLE)
   physical_layer = IXGBE_PHYSICAL_LAYER_1000BASE_SX;
  break;
 case 138:
 case 136:
  hw->phy.ops.read_i2c_eeprom(hw,
        IXGBE_SFF_QSFP_10GBE_COMP, &comp_codes_10g);
  if (comp_codes_10g & IXGBE_SFF_10GBASESR_CAPABLE)
   physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_SR;
  else if (comp_codes_10g & IXGBE_SFF_10GBASELR_CAPABLE)
   physical_layer = IXGBE_PHYSICAL_LAYER_10GBASE_LR;
  break;
 default:
  break;
 }

 return physical_layer;
}
