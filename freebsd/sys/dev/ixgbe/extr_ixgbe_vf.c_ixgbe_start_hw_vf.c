
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int adapter_stopped; } ;
typedef int s32 ;


 int FALSE ;
 int IXGBE_SUCCESS ;

s32 ixgbe_start_hw_vf(struct ixgbe_hw *hw)
{

 hw->adapter_stopped = FALSE;

 return IXGBE_SUCCESS;
}
