
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {scalar_t__ lan_id; } ;
struct TYPE_7__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_6__ {int ctrl_word_3; } ;
struct ixgbe_hw {TYPE_1__ bus; TYPE_4__ phy; TYPE_2__ eeprom; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_AUTO_NEG_LP_1000BASE_CAP ;
 int IXGBE_AUTO_NEG_LP_STATUS ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_UNKNOWN ;
 int IXGBE_MDIO_AUTO_NEG_DEV_TYPE ;
 scalar_t__ IXGBE_SUCCESS ;
 int NVM_INIT_CTRL_3_D10GMP_PORT0 ;
 int NVM_INIT_CTRL_3_D10GMP_PORT1 ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int*) ;

s32 ixgbe_get_lcd_t_x550em(struct ixgbe_hw *hw, ixgbe_link_speed *lcd_speed)
{
 u16 an_lp_status;
 s32 status;
 u16 word = hw->eeprom.ctrl_word_3;

 *lcd_speed = IXGBE_LINK_SPEED_UNKNOWN;

 status = hw->phy.ops.read_reg(hw, IXGBE_AUTO_NEG_LP_STATUS,
          IXGBE_MDIO_AUTO_NEG_DEV_TYPE,
          &an_lp_status);

 if (status != IXGBE_SUCCESS)
  return status;


 if (an_lp_status & IXGBE_AUTO_NEG_LP_1000BASE_CAP) {
  *lcd_speed = IXGBE_LINK_SPEED_1GB_FULL;
  return status;
 }


 if ((hw->bus.lan_id && (word & NVM_INIT_CTRL_3_D10GMP_PORT1)) ||
     (word & NVM_INIT_CTRL_3_D10GMP_PORT0))
  return status;


 *lcd_speed = IXGBE_LINK_SPEED_10GB_FULL;
 return status;
}
