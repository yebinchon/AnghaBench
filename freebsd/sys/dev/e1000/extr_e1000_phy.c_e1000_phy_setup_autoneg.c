
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct e1000_phy_info {int autoneg_advertised; int autoneg_mask; TYPE_2__ ops; } ;
struct TYPE_3__ {int current_mode; } ;
struct e1000_hw {TYPE_1__ fc; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int ADVERTISE_1000_FULL ;
 int ADVERTISE_1000_HALF ;
 int ADVERTISE_100_FULL ;
 int ADVERTISE_100_HALF ;
 int ADVERTISE_10_FULL ;
 int ADVERTISE_10_HALF ;
 int CR_1000T_FD_CAPS ;
 int CR_1000T_HD_CAPS ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 scalar_t__ E1000_ERR_CONFIG ;
 int NWAY_AR_100TX_FD_CAPS ;
 int NWAY_AR_100TX_HD_CAPS ;
 int NWAY_AR_10T_FD_CAPS ;
 int NWAY_AR_10T_HD_CAPS ;
 int NWAY_AR_ASM_DIR ;
 int NWAY_AR_PAUSE ;
 int PHY_1000T_CTRL ;
 int PHY_AUTONEG_ADV ;




 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int) ;

s32 e1000_phy_setup_autoneg(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 mii_autoneg_adv_reg;
 u16 mii_1000t_ctrl_reg = 0;

 DEBUGFUNC("e1000_phy_setup_autoneg");

 phy->autoneg_advertised &= phy->autoneg_mask;


 ret_val = phy->ops.read_reg(hw, PHY_AUTONEG_ADV, &mii_autoneg_adv_reg);
 if (ret_val)
  return ret_val;

 if (phy->autoneg_mask & ADVERTISE_1000_FULL) {

  ret_val = phy->ops.read_reg(hw, PHY_1000T_CTRL,
         &mii_1000t_ctrl_reg);
  if (ret_val)
   return ret_val;
 }
 mii_autoneg_adv_reg &= ~(NWAY_AR_100TX_FD_CAPS |
     NWAY_AR_100TX_HD_CAPS |
     NWAY_AR_10T_FD_CAPS |
     NWAY_AR_10T_HD_CAPS);
 mii_1000t_ctrl_reg &= ~(CR_1000T_HD_CAPS | CR_1000T_FD_CAPS);

 DEBUGOUT1("autoneg_advertised %x\n", phy->autoneg_advertised);


 if (phy->autoneg_advertised & ADVERTISE_10_HALF) {
  DEBUGOUT("Advertise 10mb Half duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_10T_HD_CAPS;
 }


 if (phy->autoneg_advertised & ADVERTISE_10_FULL) {
  DEBUGOUT("Advertise 10mb Full duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_10T_FD_CAPS;
 }


 if (phy->autoneg_advertised & ADVERTISE_100_HALF) {
  DEBUGOUT("Advertise 100mb Half duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_100TX_HD_CAPS;
 }


 if (phy->autoneg_advertised & ADVERTISE_100_FULL) {
  DEBUGOUT("Advertise 100mb Full duplex\n");
  mii_autoneg_adv_reg |= NWAY_AR_100TX_FD_CAPS;
 }


 if (phy->autoneg_advertised & ADVERTISE_1000_HALF)
  DEBUGOUT("Advertise 1000mb Half duplex request denied!\n");


 if (phy->autoneg_advertised & ADVERTISE_1000_FULL) {
  DEBUGOUT("Advertise 1000mb Full duplex\n");
  mii_1000t_ctrl_reg |= CR_1000T_FD_CAPS;
 }
 switch (hw->fc.current_mode) {
 case 130:



  mii_autoneg_adv_reg &= ~(NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
  break;
 case 129:
  mii_autoneg_adv_reg |= (NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
  break;
 case 128:



  mii_autoneg_adv_reg |= NWAY_AR_ASM_DIR;
  mii_autoneg_adv_reg &= ~NWAY_AR_PAUSE;
  break;
 case 131:



  mii_autoneg_adv_reg |= (NWAY_AR_ASM_DIR | NWAY_AR_PAUSE);
  break;
 default:
  DEBUGOUT("Flow control param set incorrectly\n");
  return -E1000_ERR_CONFIG;
 }

 ret_val = phy->ops.write_reg(hw, PHY_AUTONEG_ADV, mii_autoneg_adv_reg);
 if (ret_val)
  return ret_val;

 DEBUGOUT1("Auto-Neg Advertising %x\n", mii_autoneg_adv_reg);

 if (phy->autoneg_mask & ADVERTISE_1000_FULL)
  ret_val = phy->ops.write_reg(hw, PHY_1000T_CTRL,
          mii_1000t_ctrl_reg);

 return ret_val;
}
