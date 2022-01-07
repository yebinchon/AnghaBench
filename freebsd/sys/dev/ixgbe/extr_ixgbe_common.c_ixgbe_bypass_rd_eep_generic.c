
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int BYPASS_CTL2_DATA_M ;
 int BYPASS_CTL2_OFFSET_M ;
 int BYPASS_CTL2_OFFSET_SHIFT ;
 int BYPASS_PAGE_CTL2 ;
 int BYPASS_WE ;
 int IXGBE_ERR_INVALID_ARGUMENT ;
 int IXGBE_SUCCESS ;
 scalar_t__ ixgbe_bypass_rw_generic (struct ixgbe_hw*,int,int*) ;
 int msec_delay (int) ;

s32 ixgbe_bypass_rd_eep_generic(struct ixgbe_hw *hw, u32 addr, u8 *value)
{
 u32 cmd;
 u32 status;



 cmd = BYPASS_PAGE_CTL2 | BYPASS_WE;
 cmd |= (addr << BYPASS_CTL2_OFFSET_SHIFT) & BYPASS_CTL2_OFFSET_M;
 if (ixgbe_bypass_rw_generic(hw, cmd, &status))
  return IXGBE_ERR_INVALID_ARGUMENT;


 msec_delay(100);


 cmd &= ~BYPASS_WE;
 if (ixgbe_bypass_rw_generic(hw, cmd, &status))
  return IXGBE_ERR_INVALID_ARGUMENT;

 *value = status & BYPASS_CTL2_DATA_M;

 return IXGBE_SUCCESS;
}
