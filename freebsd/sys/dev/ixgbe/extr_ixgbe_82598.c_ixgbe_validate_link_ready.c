
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_2__ phy; } ;
typedef int s32 ;


 int DEBUGOUT (char*) ;
 scalar_t__ IXGBE_DEV_ID_82598AT2 ;
 int IXGBE_ERR_LINK_SETUP ;
 int IXGBE_MDIO_AUTO_NEG_DEV_TYPE ;
 int IXGBE_MDIO_AUTO_NEG_STATUS ;
 int IXGBE_MII_AUTONEG_COMPLETE ;
 int IXGBE_MII_AUTONEG_LINK_UP ;
 int IXGBE_SUCCESS ;
 scalar_t__ IXGBE_VALIDATE_LINK_READY_TIMEOUT ;
 int msec_delay (int) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int*) ;

__attribute__((used)) static s32 ixgbe_validate_link_ready(struct ixgbe_hw *hw)
{
 u32 timeout;
 u16 an_reg;

 if (hw->device_id != IXGBE_DEV_ID_82598AT2)
  return IXGBE_SUCCESS;

 for (timeout = 0;
      timeout < IXGBE_VALIDATE_LINK_READY_TIMEOUT; timeout++) {
  hw->phy.ops.read_reg(hw, IXGBE_MDIO_AUTO_NEG_STATUS,
         IXGBE_MDIO_AUTO_NEG_DEV_TYPE, &an_reg);

  if ((an_reg & IXGBE_MII_AUTONEG_COMPLETE) &&
      (an_reg & IXGBE_MII_AUTONEG_LINK_UP))
   break;

  msec_delay(100);
 }

 if (timeout == IXGBE_VALIDATE_LINK_READY_TIMEOUT) {
  DEBUGOUT("Link was indicated but link is down\n");
  return IXGBE_ERR_LINK_SETUP;
 }

 return IXGBE_SUCCESS;
}
