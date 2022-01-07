
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_FDIRCTRL_DROP_Q_SHIFT ;
 int IXGBE_FDIRCTRL_FILTERMODE_CLOUD ;
 int IXGBE_FDIRCTRL_FILTERMODE_SHIFT ;
 int IXGBE_FDIRCTRL_FLEX_SHIFT ;
 int IXGBE_FDIRCTRL_FULL_THRESH_SHIFT ;
 int IXGBE_FDIRCTRL_MAX_LENGTH_SHIFT ;
 int IXGBE_FDIRCTRL_PERFECT_MATCH ;
 int IXGBE_FDIRCTRL_REPORT_STATUS ;
 int IXGBE_FDIR_DROP_QUEUE ;
 int IXGBE_SUCCESS ;
 int UNREFERENCED_1PARAMETER (int) ;
 int ixgbe_fdir_enable_82599 (struct ixgbe_hw*,int) ;

s32 ixgbe_init_fdir_perfect_82599(struct ixgbe_hw *hw, u32 fdirctrl,
   bool cloud_mode)
{
 UNREFERENCED_1PARAMETER(cloud_mode);
 DEBUGFUNC("ixgbe_init_fdir_perfect_82599");
 fdirctrl |= IXGBE_FDIRCTRL_PERFECT_MATCH |
      IXGBE_FDIRCTRL_REPORT_STATUS |
      (IXGBE_FDIR_DROP_QUEUE << IXGBE_FDIRCTRL_DROP_Q_SHIFT) |
      (0x6 << IXGBE_FDIRCTRL_FLEX_SHIFT) |
      (0xA << IXGBE_FDIRCTRL_MAX_LENGTH_SHIFT) |
      (4 << IXGBE_FDIRCTRL_FULL_THRESH_SHIFT);

 if (cloud_mode)
  fdirctrl |=(IXGBE_FDIRCTRL_FILTERMODE_CLOUD <<
     IXGBE_FDIRCTRL_FILTERMODE_SHIFT);


 ixgbe_fdir_enable_82599(hw, fdirctrl);

 return IXGBE_SUCCESS;
}
