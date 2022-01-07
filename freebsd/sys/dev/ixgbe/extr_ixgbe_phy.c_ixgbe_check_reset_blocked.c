
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int ERROR_REPORT1 (int ,char*) ;
 int FALSE ;
 int IXGBE_ERROR_SOFTWARE ;
 int IXGBE_MMNGC ;
 int IXGBE_MMNGC_MNG_VETO ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int TRUE ;
 scalar_t__ ixgbe_mac_82598EB ;

s32 ixgbe_check_reset_blocked(struct ixgbe_hw *hw)
{
 u32 mmngc;

 DEBUGFUNC("ixgbe_check_reset_blocked");


 if (hw->mac.type == ixgbe_mac_82598EB)
  return FALSE;

 mmngc = IXGBE_READ_REG(hw, IXGBE_MMNGC);
 if (mmngc & IXGBE_MMNGC_MNG_VETO) {
  ERROR_REPORT1(IXGBE_ERROR_SOFTWARE,
         "MNG_VETO bit detected.\n");
  return TRUE;
 }

 return FALSE;
}
