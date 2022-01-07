
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_9__ {scalar_t__ (* read_i2c_eeprom ) (struct ixgbe_hw*,int ,scalar_t__*) ;} ;
struct TYPE_10__ {int sfp_type; scalar_t__ type; scalar_t__ id; TYPE_4__ ops; scalar_t__ multispeed_fiber; scalar_t__ sfp_setup_needed; } ;
struct TYPE_7__ {scalar_t__ (* get_media_type ) (struct ixgbe_hw*) ;int (* set_lan_id ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ ops; } ;
struct TYPE_6__ {scalar_t__ lan_id; } ;
struct ixgbe_hw {scalar_t__ allow_unsupported_sfp; TYPE_5__ phy; TYPE_3__ mac; TYPE_1__ bus; } ;
typedef scalar_t__ s32 ;
typedef enum ixgbe_sfp_type { ____Placeholder_ixgbe_sfp_type } ixgbe_sfp_type ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int EWARN (struct ixgbe_hw*,char*) ;
 scalar_t__ FALSE ;
 int IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP ;
 scalar_t__ IXGBE_ERR_PHY_ADDR_INVALID ;
 scalar_t__ IXGBE_ERR_SFP_NOT_PRESENT ;
 scalar_t__ IXGBE_ERR_SFP_NOT_SUPPORTED ;
 scalar_t__ IXGBE_SFF_10GBASELR_CAPABLE ;
 scalar_t__ IXGBE_SFF_10GBASESR_CAPABLE ;
 int IXGBE_SFF_10GBE_COMP_CODES ;
 scalar_t__ IXGBE_SFF_1GBASELX_CAPABLE ;
 scalar_t__ IXGBE_SFF_1GBASESX_CAPABLE ;
 scalar_t__ IXGBE_SFF_1GBASET_CAPABLE ;
 int IXGBE_SFF_1GBE_COMP_CODES ;
 int IXGBE_SFF_CABLE_SPEC_COMP ;
 int IXGBE_SFF_CABLE_TECHNOLOGY ;
 scalar_t__ IXGBE_SFF_DA_ACTIVE_CABLE ;
 scalar_t__ IXGBE_SFF_DA_PASSIVE_CABLE ;
 scalar_t__ IXGBE_SFF_DA_SPEC_ACTIVE_LIMITING ;
 int IXGBE_SFF_IDENTIFIER ;
 scalar_t__ IXGBE_SFF_IDENTIFIER_SFP ;

 int IXGBE_SFF_VENDOR_OUI_BYTE0 ;
 scalar_t__ IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT ;
 int IXGBE_SFF_VENDOR_OUI_BYTE1 ;
 scalar_t__ IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT ;
 int IXGBE_SFF_VENDOR_OUI_BYTE2 ;
 scalar_t__ IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT ;



 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ TRUE ;
 int ixgbe_get_device_caps (struct ixgbe_hw*,int*) ;
 scalar_t__ ixgbe_mac_82598EB ;
 scalar_t__ ixgbe_media_type_fiber ;
 scalar_t__ ixgbe_phy_nl ;
 scalar_t__ ixgbe_phy_sfp_active_unknown ;
 scalar_t__ ixgbe_phy_sfp_avago ;
 scalar_t__ ixgbe_phy_sfp_ftl ;
 scalar_t__ ixgbe_phy_sfp_ftl_active ;
 scalar_t__ ixgbe_phy_sfp_intel ;
 scalar_t__ ixgbe_phy_sfp_passive_tyco ;
 scalar_t__ ixgbe_phy_sfp_passive_unknown ;
 scalar_t__ ixgbe_phy_sfp_unknown ;
 void* ixgbe_phy_sfp_unsupported ;
 scalar_t__ ixgbe_phy_unknown ;
 scalar_t__ ixgbe_sfp_type_1g_cu_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_cu_core1 ;
 scalar_t__ ixgbe_sfp_type_1g_lx_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_lx_core1 ;
 scalar_t__ ixgbe_sfp_type_1g_sx_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_sx_core1 ;
 int ixgbe_sfp_type_da_act_lmt_core0 ;
 int ixgbe_sfp_type_da_act_lmt_core1 ;
 int ixgbe_sfp_type_da_cu ;
 int ixgbe_sfp_type_da_cu_core0 ;
 int ixgbe_sfp_type_da_cu_core1 ;
 int ixgbe_sfp_type_lr ;
 void* ixgbe_sfp_type_not_present ;
 int ixgbe_sfp_type_sr ;
 int ixgbe_sfp_type_srlr_core0 ;
 int ixgbe_sfp_type_srlr_core1 ;
 void* ixgbe_sfp_type_unknown ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub10 (struct ixgbe_hw*,int ,scalar_t__*) ;
 int stub2 (struct ixgbe_hw*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ stub6 (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ stub7 (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ stub8 (struct ixgbe_hw*,int ,scalar_t__*) ;
 scalar_t__ stub9 (struct ixgbe_hw*,int ,scalar_t__*) ;

s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
{
 s32 status = IXGBE_ERR_PHY_ADDR_INVALID;
 u32 vendor_oui = 0;
 enum ixgbe_sfp_type stored_sfp_type = hw->phy.sfp_type;
 u8 identifier = 0;
 u8 comp_codes_1g = 0;
 u8 comp_codes_10g = 0;
 u8 oui_bytes[3] = {0, 0, 0};
 u8 cable_tech = 0;
 u8 cable_spec = 0;
 u16 enforce_sfp = 0;

 DEBUGFUNC("ixgbe_identify_sfp_module_generic");

 if (hw->mac.ops.get_media_type(hw) != ixgbe_media_type_fiber) {
  hw->phy.sfp_type = ixgbe_sfp_type_not_present;
  status = IXGBE_ERR_SFP_NOT_PRESENT;
  goto out;
 }


 hw->mac.ops.set_lan_id(hw);

 status = hw->phy.ops.read_i2c_eeprom(hw,
          IXGBE_SFF_IDENTIFIER,
          &identifier);

 if (status != IXGBE_SUCCESS)
  goto err_read_i2c_eeprom;

 if (identifier != IXGBE_SFF_IDENTIFIER_SFP) {
  hw->phy.type = ixgbe_phy_sfp_unsupported;
  status = IXGBE_ERR_SFP_NOT_SUPPORTED;
 } else {
  status = hw->phy.ops.read_i2c_eeprom(hw,
           IXGBE_SFF_1GBE_COMP_CODES,
           &comp_codes_1g);

  if (status != IXGBE_SUCCESS)
   goto err_read_i2c_eeprom;

  status = hw->phy.ops.read_i2c_eeprom(hw,
           IXGBE_SFF_10GBE_COMP_CODES,
           &comp_codes_10g);

  if (status != IXGBE_SUCCESS)
   goto err_read_i2c_eeprom;
  status = hw->phy.ops.read_i2c_eeprom(hw,
           IXGBE_SFF_CABLE_TECHNOLOGY,
           &cable_tech);

  if (status != IXGBE_SUCCESS)
   goto err_read_i2c_eeprom;
  if (hw->mac.type == ixgbe_mac_82598EB) {
   if (cable_tech & IXGBE_SFF_DA_PASSIVE_CABLE)
    hw->phy.sfp_type = ixgbe_sfp_type_da_cu;
   else if (comp_codes_10g & IXGBE_SFF_10GBASESR_CAPABLE)
    hw->phy.sfp_type = ixgbe_sfp_type_sr;
   else if (comp_codes_10g & IXGBE_SFF_10GBASELR_CAPABLE)
    hw->phy.sfp_type = ixgbe_sfp_type_lr;
   else
    hw->phy.sfp_type = ixgbe_sfp_type_unknown;
  } else {
   if (cable_tech & IXGBE_SFF_DA_PASSIVE_CABLE) {
    if (hw->bus.lan_id == 0)
     hw->phy.sfp_type =
           ixgbe_sfp_type_da_cu_core0;
    else
     hw->phy.sfp_type =
           ixgbe_sfp_type_da_cu_core1;
   } else if (cable_tech & IXGBE_SFF_DA_ACTIVE_CABLE) {
    hw->phy.ops.read_i2c_eeprom(
      hw, IXGBE_SFF_CABLE_SPEC_COMP,
      &cable_spec);
    if (cable_spec &
        IXGBE_SFF_DA_SPEC_ACTIVE_LIMITING) {
     if (hw->bus.lan_id == 0)
      hw->phy.sfp_type =
      ixgbe_sfp_type_da_act_lmt_core0;
     else
      hw->phy.sfp_type =
      ixgbe_sfp_type_da_act_lmt_core1;
    } else {
     hw->phy.sfp_type =
       ixgbe_sfp_type_unknown;
    }
   } else if (comp_codes_10g &
       (IXGBE_SFF_10GBASESR_CAPABLE |
        IXGBE_SFF_10GBASELR_CAPABLE)) {
    if (hw->bus.lan_id == 0)
     hw->phy.sfp_type =
            ixgbe_sfp_type_srlr_core0;
    else
     hw->phy.sfp_type =
            ixgbe_sfp_type_srlr_core1;
   } else if (comp_codes_1g & IXGBE_SFF_1GBASET_CAPABLE) {
    if (hw->bus.lan_id == 0)
     hw->phy.sfp_type =
      ixgbe_sfp_type_1g_cu_core0;
    else
     hw->phy.sfp_type =
      ixgbe_sfp_type_1g_cu_core1;
   } else if (comp_codes_1g & IXGBE_SFF_1GBASESX_CAPABLE) {
    if (hw->bus.lan_id == 0)
     hw->phy.sfp_type =
      ixgbe_sfp_type_1g_sx_core0;
    else
     hw->phy.sfp_type =
      ixgbe_sfp_type_1g_sx_core1;
   } else if (comp_codes_1g & IXGBE_SFF_1GBASELX_CAPABLE) {
    if (hw->bus.lan_id == 0)
     hw->phy.sfp_type =
      ixgbe_sfp_type_1g_lx_core0;
    else
     hw->phy.sfp_type =
      ixgbe_sfp_type_1g_lx_core1;
   } else {
    hw->phy.sfp_type = ixgbe_sfp_type_unknown;
   }
  }

  if (hw->phy.sfp_type != stored_sfp_type)
   hw->phy.sfp_setup_needed = TRUE;


  hw->phy.multispeed_fiber = FALSE;
  if (((comp_codes_1g & IXGBE_SFF_1GBASESX_CAPABLE) &&
     (comp_codes_10g & IXGBE_SFF_10GBASESR_CAPABLE)) ||
     ((comp_codes_1g & IXGBE_SFF_1GBASELX_CAPABLE) &&
     (comp_codes_10g & IXGBE_SFF_10GBASELR_CAPABLE)))
   hw->phy.multispeed_fiber = TRUE;


  if (hw->phy.type != ixgbe_phy_nl) {
   hw->phy.id = identifier;
   status = hw->phy.ops.read_i2c_eeprom(hw,
          IXGBE_SFF_VENDOR_OUI_BYTE0,
          &oui_bytes[0]);

   if (status != IXGBE_SUCCESS)
    goto err_read_i2c_eeprom;

   status = hw->phy.ops.read_i2c_eeprom(hw,
          IXGBE_SFF_VENDOR_OUI_BYTE1,
          &oui_bytes[1]);

   if (status != IXGBE_SUCCESS)
    goto err_read_i2c_eeprom;

   status = hw->phy.ops.read_i2c_eeprom(hw,
          IXGBE_SFF_VENDOR_OUI_BYTE2,
          &oui_bytes[2]);

   if (status != IXGBE_SUCCESS)
    goto err_read_i2c_eeprom;

   vendor_oui =
     ((oui_bytes[0] << IXGBE_SFF_VENDOR_OUI_BYTE0_SHIFT) |
      (oui_bytes[1] << IXGBE_SFF_VENDOR_OUI_BYTE1_SHIFT) |
      (oui_bytes[2] << IXGBE_SFF_VENDOR_OUI_BYTE2_SHIFT));

   switch (vendor_oui) {
   case 128:
    if (cable_tech & IXGBE_SFF_DA_PASSIVE_CABLE)
     hw->phy.type =
          ixgbe_phy_sfp_passive_tyco;
    break;
   case 130:
    if (cable_tech & IXGBE_SFF_DA_ACTIVE_CABLE)
     hw->phy.type = ixgbe_phy_sfp_ftl_active;
    else
     hw->phy.type = ixgbe_phy_sfp_ftl;
    break;
   case 131:
    hw->phy.type = ixgbe_phy_sfp_avago;
    break;
   case 129:
    hw->phy.type = ixgbe_phy_sfp_intel;
    break;
   default:
    hw->phy.type = ixgbe_phy_sfp_unknown;
    break;
   }
  }


  if (cable_tech & (IXGBE_SFF_DA_PASSIVE_CABLE |
   IXGBE_SFF_DA_ACTIVE_CABLE)) {
   if (cable_tech & IXGBE_SFF_DA_PASSIVE_CABLE)
    hw->phy.type = ixgbe_phy_sfp_passive_unknown;
   else if (cable_tech & IXGBE_SFF_DA_ACTIVE_CABLE)
    hw->phy.type = ixgbe_phy_sfp_active_unknown;
   status = IXGBE_SUCCESS;
   goto out;
  }


  if (comp_codes_10g == 0 &&
      !(hw->phy.sfp_type == ixgbe_sfp_type_1g_cu_core1 ||
        hw->phy.sfp_type == ixgbe_sfp_type_1g_cu_core0 ||
        hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
        hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core1 ||
        hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
        hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1)) {
   hw->phy.type = ixgbe_phy_sfp_unsupported;
   status = IXGBE_ERR_SFP_NOT_SUPPORTED;
   goto out;
  }


  if (hw->mac.type == ixgbe_mac_82598EB) {
   status = IXGBE_SUCCESS;
   goto out;
  }

  ixgbe_get_device_caps(hw, &enforce_sfp);
  if (!(enforce_sfp & IXGBE_DEVICE_CAPS_ALLOW_ANY_SFP) &&
      !(hw->phy.sfp_type == ixgbe_sfp_type_1g_cu_core0 ||
        hw->phy.sfp_type == ixgbe_sfp_type_1g_cu_core1 ||
        hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
        hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core1 ||
        hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
        hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1)) {

   if (hw->phy.type == ixgbe_phy_sfp_intel) {
    status = IXGBE_SUCCESS;
   } else {
    if (hw->allow_unsupported_sfp == TRUE) {
     EWARN(hw, "WARNING: Intel (R) Network Connections are quality tested using Intel (R) Ethernet Optics. Using untested modules is not supported and may cause unstable operation or damage to the module or the adapter. Intel Corporation is not responsible for any harm caused by using untested modules.\n");
     status = IXGBE_SUCCESS;
    } else {
     DEBUGOUT("SFP+ module not supported\n");
     hw->phy.type =
      ixgbe_phy_sfp_unsupported;
     status = IXGBE_ERR_SFP_NOT_SUPPORTED;
    }
   }
  } else {
   status = IXGBE_SUCCESS;
  }
 }

out:
 return status;

err_read_i2c_eeprom:
 hw->phy.sfp_type = ixgbe_sfp_type_not_present;
 if (hw->phy.type != ixgbe_phy_nl) {
  hw->phy.id = 0;
  hw->phy.type = ixgbe_phy_unknown;
 }
 return IXGBE_ERR_SFP_NOT_PRESENT;
}
