
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
struct TYPE_9__ {int (* write_reg ) (struct ixgbe_hw*,int ,int ,int) ;int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_10__ {int media_type; TYPE_4__ ops; } ;
struct TYPE_7__ {scalar_t__ (* prot_autoc_write ) (struct ixgbe_hw*,int,int) ;scalar_t__ (* prot_autoc_read ) (struct ixgbe_hw*,int*,int*) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ ops; } ;
struct TYPE_6__ {int requested_mode; scalar_t__ strict_ieee; } ;
struct ixgbe_hw {TYPE_5__ phy; TYPE_3__ mac; TYPE_1__ fc; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int ERROR_REPORT1 (int ,char*) ;
 int FALSE ;
 int IXGBE_AUTOC_AN_RESTART ;
 int IXGBE_AUTOC_ASM_PAUSE ;
 int IXGBE_AUTOC_SYM_PAUSE ;
 int IXGBE_ERROR_ARGUMENT ;
 int IXGBE_ERROR_UNSUPPORTED ;
 scalar_t__ IXGBE_ERR_CONFIG ;
 scalar_t__ IXGBE_ERR_INVALID_LINK_SETTINGS ;
 int IXGBE_MDIO_AUTO_NEG_ADVT ;
 int IXGBE_MDIO_AUTO_NEG_DEV_TYPE ;
 int IXGBE_PCS1GANA ;
 int IXGBE_PCS1GANA_ASM_PAUSE ;
 int IXGBE_PCS1GANA_SYM_PAUSE ;
 int IXGBE_PCS1GLCTL ;
 int IXGBE_PCS1GLCTL_AN_1G_TIMEOUT_EN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_TAF_ASM_PAUSE ;
 int IXGBE_TAF_SYM_PAUSE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_device_supports_autoneg_fc (struct ixgbe_hw*) ;
 int ixgbe_fc_default ;




 scalar_t__ ixgbe_mac_X540 ;





 scalar_t__ stub1 (struct ixgbe_hw*,int*,int*) ;
 int stub2 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int,int) ;
 int stub4 (struct ixgbe_hw*,int ,int ,int) ;

s32 ixgbe_setup_fc_generic(struct ixgbe_hw *hw)
{
 s32 ret_val = IXGBE_SUCCESS;
 u32 reg = 0, reg_bp = 0;
 u16 reg_cu = 0;
 bool locked = FALSE;

 DEBUGFUNC("ixgbe_setup_fc_generic");


 if (hw->fc.strict_ieee && hw->fc.requested_mode == 134) {
  ERROR_REPORT1(IXGBE_ERROR_UNSUPPORTED,
      "ixgbe_fc_rx_pause not valid in strict IEEE mode\n");
  ret_val = IXGBE_ERR_INVALID_LINK_SETTINGS;
  goto out;
 }





 if (hw->fc.requested_mode == ixgbe_fc_default)
  hw->fc.requested_mode = 136;






 switch (hw->phy.media_type) {
 case 132:

  ret_val = hw->mac.ops.prot_autoc_read(hw, &locked, &reg_bp);
  if (ret_val != IXGBE_SUCCESS)
   goto out;



 case 129:
 case 128:
 case 130:
  reg = IXGBE_READ_REG(hw, IXGBE_PCS1GANA);

  break;
 case 131:
  hw->phy.ops.read_reg(hw, IXGBE_MDIO_AUTO_NEG_ADVT,
         IXGBE_MDIO_AUTO_NEG_DEV_TYPE, &reg_cu);
  break;
 default:
  break;
 }
 switch (hw->fc.requested_mode) {
 case 135:

  reg &= ~(IXGBE_PCS1GANA_SYM_PAUSE | IXGBE_PCS1GANA_ASM_PAUSE);
  if (hw->phy.media_type == 132)
   reg_bp &= ~(IXGBE_AUTOC_SYM_PAUSE |
        IXGBE_AUTOC_ASM_PAUSE);
  else if (hw->phy.media_type == 131)
   reg_cu &= ~(IXGBE_TAF_SYM_PAUSE | IXGBE_TAF_ASM_PAUSE);
  break;
 case 133:




  reg |= IXGBE_PCS1GANA_ASM_PAUSE;
  reg &= ~IXGBE_PCS1GANA_SYM_PAUSE;
  if (hw->phy.media_type == 132) {
   reg_bp |= IXGBE_AUTOC_ASM_PAUSE;
   reg_bp &= ~IXGBE_AUTOC_SYM_PAUSE;
  } else if (hw->phy.media_type == 131) {
   reg_cu |= IXGBE_TAF_ASM_PAUSE;
   reg_cu &= ~IXGBE_TAF_SYM_PAUSE;
  }
  break;
 case 134:
 case 136:

  reg |= IXGBE_PCS1GANA_SYM_PAUSE | IXGBE_PCS1GANA_ASM_PAUSE;
  if (hw->phy.media_type == 132)
   reg_bp |= IXGBE_AUTOC_SYM_PAUSE |
      IXGBE_AUTOC_ASM_PAUSE;
  else if (hw->phy.media_type == 131)
   reg_cu |= IXGBE_TAF_SYM_PAUSE | IXGBE_TAF_ASM_PAUSE;
  break;
 default:
  ERROR_REPORT1(IXGBE_ERROR_ARGUMENT,
        "Flow control param set incorrectly\n");
  ret_val = IXGBE_ERR_CONFIG;
  goto out;
  break;
 }

 if (hw->mac.type < ixgbe_mac_X540) {




  IXGBE_WRITE_REG(hw, IXGBE_PCS1GANA, reg);
  reg = IXGBE_READ_REG(hw, IXGBE_PCS1GLCTL);


  if (hw->fc.strict_ieee)
   reg &= ~IXGBE_PCS1GLCTL_AN_1G_TIMEOUT_EN;

  IXGBE_WRITE_REG(hw, IXGBE_PCS1GLCTL, reg);
  DEBUGOUT1("Set up FC; PCS1GLCTL = 0x%08X\n", reg);
 }






 if (hw->phy.media_type == 132) {
  reg_bp |= IXGBE_AUTOC_AN_RESTART;
  ret_val = hw->mac.ops.prot_autoc_write(hw, reg_bp, locked);
  if (ret_val)
   goto out;
 } else if ((hw->phy.media_type == 131) &&
      (ixgbe_device_supports_autoneg_fc(hw))) {
  hw->phy.ops.write_reg(hw, IXGBE_MDIO_AUTO_NEG_ADVT,
          IXGBE_MDIO_AUTO_NEG_DEV_TYPE, reg_cu);
 }

 DEBUGOUT1("Set up FC; PCS1GLCTL = 0x%08X\n", reg);
out:
 return ret_val;
}
