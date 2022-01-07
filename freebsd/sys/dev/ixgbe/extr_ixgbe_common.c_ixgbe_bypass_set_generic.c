
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int BYPASS_PAGE_CTL0 ;
 int BYPASS_PAGE_M ;
 int BYPASS_WE ;
 int IXGBE_BYPASS_FW_WRITE_FAILURE ;
 int IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_SUCCESS ;
 scalar_t__ ixgbe_bypass_rw_generic (struct ixgbe_hw*,int,int*) ;
 int ixgbe_bypass_valid_rd_generic (int,int) ;
 int msec_delay (int) ;

s32 ixgbe_bypass_set_generic(struct ixgbe_hw *hw, u32 ctrl, u32 event,
        u32 action)
{
 u32 by_ctl = 0;
 u32 cmd, verify;
 u32 count = 0;


 cmd = ctrl;
 if (ixgbe_bypass_rw_generic(hw, cmd, &by_ctl))
  return IXGBE_ERR_INVALID_ARGUMENT;


 cmd = (by_ctl & ~event) | BYPASS_WE | action;
 if (ixgbe_bypass_rw_generic(hw, cmd, &by_ctl))
  return IXGBE_ERR_INVALID_ARGUMENT;


 if ((cmd & BYPASS_PAGE_M) == BYPASS_PAGE_CTL0) {
  verify = BYPASS_PAGE_CTL0;
  do {
   if (count++ > 5)
    return IXGBE_BYPASS_FW_WRITE_FAILURE;

   if (ixgbe_bypass_rw_generic(hw, verify, &by_ctl))
    return IXGBE_ERR_INVALID_ARGUMENT;
  } while (!ixgbe_bypass_valid_rd_generic(cmd, by_ctl));
 } else {

  msec_delay(100);
 }

 return IXGBE_SUCCESS;
}
