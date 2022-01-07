
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int media_type; int autoneg_advertised; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int FALSE ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_UNKNOWN ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_check_link (struct ixgbe_hw*,int*,int*,int) ;
 int ixgbe_flap_tx_laser (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_get_link_capabilities (struct ixgbe_hw*,int*,int*) ;



 int ixgbe_set_rate_select_speed (struct ixgbe_hw*,int) ;
 scalar_t__ ixgbe_setup_mac_link (struct ixgbe_hw*,int,int) ;
 int msec_delay (int) ;

s32 ixgbe_setup_mac_link_multispeed_fiber(struct ixgbe_hw *hw,
       ixgbe_link_speed speed,
       bool autoneg_wait_to_complete)
{
 ixgbe_link_speed link_speed = IXGBE_LINK_SPEED_UNKNOWN;
 ixgbe_link_speed highest_link_speed = IXGBE_LINK_SPEED_UNKNOWN;
 s32 status = IXGBE_SUCCESS;
 u32 speedcnt = 0;
 u32 i = 0;
 bool autoneg, link_up = FALSE;

 DEBUGFUNC("ixgbe_setup_mac_link_multispeed_fiber");


 status = ixgbe_get_link_capabilities(hw, &link_speed, &autoneg);
 if (status != IXGBE_SUCCESS)
  return status;

 speed &= link_speed;




 if (speed & IXGBE_LINK_SPEED_10GB_FULL) {
  speedcnt++;
  highest_link_speed = IXGBE_LINK_SPEED_10GB_FULL;


  switch (hw->phy.media_type) {
  case 129:
  case 130:
   ixgbe_set_rate_select_speed(hw,
          IXGBE_LINK_SPEED_10GB_FULL);
   break;
  case 128:

   break;
  default:
   DEBUGOUT("Unexpected media type.\n");
   break;
  }


  msec_delay(40);

  status = ixgbe_setup_mac_link(hw,
           IXGBE_LINK_SPEED_10GB_FULL,
           autoneg_wait_to_complete);
  if (status != IXGBE_SUCCESS)
   return status;


  ixgbe_flap_tx_laser(hw);





  for (i = 0; i < 5; i++) {

   msec_delay(100);


   status = ixgbe_check_link(hw, &link_speed,
        &link_up, FALSE);
   if (status != IXGBE_SUCCESS)
    return status;

   if (link_up)
    goto out;
  }
 }

 if (speed & IXGBE_LINK_SPEED_1GB_FULL) {
  speedcnt++;
  if (highest_link_speed == IXGBE_LINK_SPEED_UNKNOWN)
   highest_link_speed = IXGBE_LINK_SPEED_1GB_FULL;


  switch (hw->phy.media_type) {
  case 129:
  case 130:
   ixgbe_set_rate_select_speed(hw,
          IXGBE_LINK_SPEED_1GB_FULL);
   break;
  case 128:

   break;
  default:
   DEBUGOUT("Unexpected media type.\n");
   break;
  }


  msec_delay(40);

  status = ixgbe_setup_mac_link(hw,
           IXGBE_LINK_SPEED_1GB_FULL,
           autoneg_wait_to_complete);
  if (status != IXGBE_SUCCESS)
   return status;


  ixgbe_flap_tx_laser(hw);


  msec_delay(100);


  status = ixgbe_check_link(hw, &link_speed, &link_up, FALSE);
  if (status != IXGBE_SUCCESS)
   return status;

  if (link_up)
   goto out;
 }





 if (speedcnt > 1)
  status = ixgbe_setup_mac_link_multispeed_fiber(hw,
            highest_link_speed,
            autoneg_wait_to_complete);

out:

 hw->phy.autoneg_advertised = 0;

 if (speed & IXGBE_LINK_SPEED_10GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_10GB_FULL;

 if (speed & IXGBE_LINK_SPEED_1GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_1GB_FULL;

 return status;
}
