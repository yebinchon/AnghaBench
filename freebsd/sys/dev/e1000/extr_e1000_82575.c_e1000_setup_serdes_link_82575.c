
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_10__ {int requested_mode; } ;
struct TYPE_8__ {int (* read ) (struct e1000_hw*,int ,int,int*) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_7__ {scalar_t__ type; int autoneg; } ;
struct TYPE_6__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_5__ fc; TYPE_4__ nvm; TYPE_2__ mac; TYPE_1__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int E1000_CTRL ;
 int E1000_CTRL_EXT ;

 int E1000_CTRL_EXT_LINK_MODE_MASK ;

 int E1000_CTRL_EXT_SDP3_DATA ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SLU ;
 int E1000_CTRL_SPD_1000 ;
 int E1000_CTRL_SWDPIN0 ;
 int E1000_CTRL_SWDPIN1 ;
 int E1000_EEPROM_PCS_AUTONEG_DISABLE_BIT ;
 int E1000_PCS_ANADV ;
 int E1000_PCS_LCTL ;
 int E1000_PCS_LCTL_AN_ENABLE ;
 int E1000_PCS_LCTL_AN_RESTART ;
 int E1000_PCS_LCTL_AN_TIMEOUT ;
 int E1000_PCS_LCTL_FDV_FULL ;
 int E1000_PCS_LCTL_FLV_LINK_UP ;
 int E1000_PCS_LCTL_FORCE_FCTRL ;
 int E1000_PCS_LCTL_FORCE_LINK ;
 int E1000_PCS_LCTL_FSD ;
 int E1000_PCS_LCTL_FSV_1000 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SCTL ;
 int E1000_SCTL_DISABLE_SERDES_LOOPBACK ;
 int E1000_SUCCESS ;
 int E1000_TXCW_ASM_DIR ;
 int E1000_TXCW_PAUSE ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int FALSE ;
 int NVM_COMPAT ;
 int TRUE ;
 scalar_t__ e1000_82575 ;
 scalar_t__ e1000_82576 ;



 int e1000_force_mac_fc_generic (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_internal_serdes ;
 int e1000_sgmii_active_82575 (struct e1000_hw*) ;
 int stub1 (struct e1000_hw*,int ,int,int*) ;

__attribute__((used)) static s32 e1000_setup_serdes_link_82575(struct e1000_hw *hw)
{
 u32 ctrl_ext, ctrl_reg, reg, anadv_reg;
 bool pcs_autoneg;
 s32 ret_val = E1000_SUCCESS;
 u16 data;

 DEBUGFUNC("e1000_setup_serdes_link_82575");

 if ((hw->phy.media_type != e1000_media_type_internal_serdes) &&
     !e1000_sgmii_active_82575(hw))
  return ret_val;







 E1000_WRITE_REG(hw, E1000_SCTL, E1000_SCTL_DISABLE_SERDES_LOOPBACK);


 ctrl_ext = E1000_READ_REG(hw, E1000_CTRL_EXT);
 ctrl_ext &= ~E1000_CTRL_EXT_SDP3_DATA;
 E1000_WRITE_REG(hw, E1000_CTRL_EXT, ctrl_ext);

 ctrl_reg = E1000_READ_REG(hw, E1000_CTRL);
 ctrl_reg |= E1000_CTRL_SLU;


 if (hw->mac.type == e1000_82575 || hw->mac.type == e1000_82576)
  ctrl_reg |= E1000_CTRL_SWDPIN0 | E1000_CTRL_SWDPIN1;

 reg = E1000_READ_REG(hw, E1000_PCS_LCTL);


 pcs_autoneg = hw->mac.autoneg;

 switch (ctrl_ext & E1000_CTRL_EXT_LINK_MODE_MASK) {
 case 131:

  pcs_autoneg = TRUE;

  reg &= ~(E1000_PCS_LCTL_AN_TIMEOUT);
  break;
 case 132:

  pcs_autoneg = FALSE;

 default:
  if (hw->mac.type == e1000_82575 ||
      hw->mac.type == e1000_82576) {
   ret_val = hw->nvm.ops.read(hw, NVM_COMPAT, 1, &data);
   if (ret_val) {
    DEBUGOUT("NVM Read Error\n");
    return ret_val;
   }

   if (data & E1000_EEPROM_PCS_AUTONEG_DISABLE_BIT)
    pcs_autoneg = FALSE;
  }






  ctrl_reg |= E1000_CTRL_SPD_1000 | E1000_CTRL_FRCSPD |
       E1000_CTRL_FD | E1000_CTRL_FRCDPX;


  reg |= E1000_PCS_LCTL_FSV_1000 | E1000_PCS_LCTL_FDV_FULL;
  break;
 }

 E1000_WRITE_REG(hw, E1000_CTRL, ctrl_reg);







 reg &= ~(E1000_PCS_LCTL_AN_ENABLE | E1000_PCS_LCTL_FLV_LINK_UP |
   E1000_PCS_LCTL_FSD | E1000_PCS_LCTL_FORCE_LINK);

 if (pcs_autoneg) {

  reg |= E1000_PCS_LCTL_AN_ENABLE |
         E1000_PCS_LCTL_AN_RESTART;


  reg &= ~E1000_PCS_LCTL_FORCE_FCTRL;


  anadv_reg = E1000_READ_REG(hw, E1000_PCS_ANADV);
  anadv_reg &= ~(E1000_TXCW_ASM_DIR | E1000_TXCW_PAUSE);

  switch (hw->fc.requested_mode) {
  case 130:
  case 129:
   anadv_reg |= E1000_TXCW_ASM_DIR;
   anadv_reg |= E1000_TXCW_PAUSE;
   break;
  case 128:
   anadv_reg |= E1000_TXCW_ASM_DIR;
   break;
  default:
   break;
  }

  E1000_WRITE_REG(hw, E1000_PCS_ANADV, anadv_reg);

  DEBUGOUT1("Configuring Autoneg:PCS_LCTL=0x%08X\n", reg);
 } else {

  reg |= E1000_PCS_LCTL_FSD;


  reg |= E1000_PCS_LCTL_FORCE_FCTRL;

  DEBUGOUT1("Configuring Forced Link:PCS_LCTL=0x%08X\n", reg);
 }

 E1000_WRITE_REG(hw, E1000_PCS_LCTL, reg);

 if (!pcs_autoneg && !e1000_sgmii_active_82575(hw))
  e1000_force_mac_fc_generic(hw);

 return ret_val;
}
