
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int autoneg_advertised; void* smart_speed_active; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 void* FALSE ;
 int IXGBE_AUTOC ;
 int IXGBE_AUTOC_KR_SUPP ;
 int IXGBE_AUTOC_KX4_KX_SUPP_MASK ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_UNKNOWN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SMARTSPEED_MAX_RETRIES ;
 scalar_t__ IXGBE_SUCCESS ;
 void* TRUE ;
 scalar_t__ ixgbe_check_link (struct ixgbe_hw*,int*,int*,void*) ;
 scalar_t__ ixgbe_setup_mac_link_82599 (struct ixgbe_hw*,int,int) ;
 int msec_delay (int) ;

s32 ixgbe_setup_mac_link_smartspeed(struct ixgbe_hw *hw,
        ixgbe_link_speed speed,
        bool autoneg_wait_to_complete)
{
 s32 status = IXGBE_SUCCESS;
 ixgbe_link_speed link_speed = IXGBE_LINK_SPEED_UNKNOWN;
 s32 i, j;
 bool link_up = FALSE;
 u32 autoc_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC);

 DEBUGFUNC("ixgbe_setup_mac_link_smartspeed");


 hw->phy.autoneg_advertised = 0;

 if (speed & IXGBE_LINK_SPEED_10GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_10GB_FULL;

 if (speed & IXGBE_LINK_SPEED_1GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_1GB_FULL;

 if (speed & IXGBE_LINK_SPEED_100_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_100_FULL;
 hw->phy.smart_speed_active = FALSE;
 for (j = 0; j < IXGBE_SMARTSPEED_MAX_RETRIES; j++) {
  status = ixgbe_setup_mac_link_82599(hw, speed,
          autoneg_wait_to_complete);
  if (status != IXGBE_SUCCESS)
   goto out;







  for (i = 0; i < 5; i++) {
   msec_delay(100);


   status = ixgbe_check_link(hw, &link_speed, &link_up,
        FALSE);
   if (status != IXGBE_SUCCESS)
    goto out;

   if (link_up)
    goto out;
  }
 }





 if (((autoc_reg & IXGBE_AUTOC_KR_SUPP) == 0) ||
     ((autoc_reg & IXGBE_AUTOC_KX4_KX_SUPP_MASK) == 0))
  goto out;


 hw->phy.smart_speed_active = TRUE;
 status = ixgbe_setup_mac_link_82599(hw, speed,
         autoneg_wait_to_complete);
 if (status != IXGBE_SUCCESS)
  goto out;







 for (i = 0; i < 6; i++) {
  msec_delay(100);


  status = ixgbe_check_link(hw, &link_speed, &link_up, FALSE);
  if (status != IXGBE_SUCCESS)
   goto out;

  if (link_up)
   goto out;
 }


 hw->phy.smart_speed_active = FALSE;
 status = ixgbe_setup_mac_link_82599(hw, speed,
         autoneg_wait_to_complete);

out:
 if (link_up && (link_speed == IXGBE_LINK_SPEED_1GB_FULL))
  DEBUGOUT("Smartspeed has downgraded the link speed "
  "from the maximum advertised\n");
 return status;
}
