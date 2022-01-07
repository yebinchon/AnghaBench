
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct e1000_mac_info {scalar_t__ type; int serdes_has_link; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_PCS_LSTAT ;
 int E1000_PCS_LSTS_DUPLEX_FULL ;
 int E1000_PCS_LSTS_LINK_OK ;
 int E1000_PCS_LSTS_SPEED_100 ;
 int E1000_PCS_LSTS_SPEED_1000 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 int E1000_STATUS_2P5_SKU ;
 int E1000_STATUS_2P5_SKU_OVER ;
 int E1000_SUCCESS ;
 int FALSE ;
 scalar_t__ FULL_DUPLEX ;
 scalar_t__ HALF_DUPLEX ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_2500 ;
 int TRUE ;
 scalar_t__ e1000_i354 ;

__attribute__((used)) static s32 e1000_get_pcs_speed_and_duplex_82575(struct e1000_hw *hw,
      u16 *speed, u16 *duplex)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 pcs;
 u32 status;

 DEBUGFUNC("e1000_get_pcs_speed_and_duplex_82575");






 pcs = E1000_READ_REG(hw, E1000_PCS_LSTAT);




 if (pcs & E1000_PCS_LSTS_LINK_OK) {
  mac->serdes_has_link = TRUE;


  if (pcs & E1000_PCS_LSTS_SPEED_1000)
   *speed = SPEED_1000;
  else if (pcs & E1000_PCS_LSTS_SPEED_100)
   *speed = SPEED_100;
  else
   *speed = SPEED_10;


  if (pcs & E1000_PCS_LSTS_DUPLEX_FULL)
   *duplex = FULL_DUPLEX;
  else
   *duplex = HALF_DUPLEX;


  if (mac->type == e1000_i354) {
   status = E1000_READ_REG(hw, E1000_STATUS);
   if ((status & E1000_STATUS_2P5_SKU) &&
       !(status & E1000_STATUS_2P5_SKU_OVER)) {
    *speed = SPEED_2500;
    *duplex = FULL_DUPLEX;
    DEBUGOUT("2500 Mbs, ");
    DEBUGOUT("Full Duplex\n");
   }
  }

 } else {
  mac->serdes_has_link = FALSE;
  *speed = 0;
  *duplex = 0;
 }

 return E1000_SUCCESS;
}
