
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;


 int FALSE ;
 int IXGBE_FACTPS_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_FACTPS_MNGCG ;
 int IXGBE_FWSM_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_FWSM_FW_MODE_PT ;
 int IXGBE_FWSM_MODE_MASK ;
 int IXGBE_MANC ;
 int IXGBE_MANC_RCV_TCO_EN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int TRUE ;
 scalar_t__ ixgbe_mac_X540 ;

bool ixgbe_mng_enabled(struct ixgbe_hw *hw)
{
 u32 fwsm, manc, factps;

 fwsm = IXGBE_READ_REG(hw, IXGBE_FWSM_BY_MAC(hw));
 if ((fwsm & IXGBE_FWSM_MODE_MASK) != IXGBE_FWSM_FW_MODE_PT)
  return FALSE;

 manc = IXGBE_READ_REG(hw, IXGBE_MANC);
 if (!(manc & IXGBE_MANC_RCV_TCO_EN))
  return FALSE;

 if (hw->mac.type <= ixgbe_mac_X540) {
  factps = IXGBE_READ_REG(hw, IXGBE_FACTPS_BY_MAC(hw));
  if (factps & IXGBE_FACTPS_MNGCG)
   return FALSE;
 }

 return TRUE;
}
