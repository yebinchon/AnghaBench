
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vft_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_SUCCESS ;
 int IXGBE_VFTA (int) ;
 int IXGBE_VLVF (int) ;
 int IXGBE_VLVFB (int) ;
 int IXGBE_VLVF_ENTRIES ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

s32 ixgbe_clear_vfta_generic(struct ixgbe_hw *hw)
{
 u32 offset;

 DEBUGFUNC("ixgbe_clear_vfta_generic");

 for (offset = 0; offset < hw->mac.vft_size; offset++)
  IXGBE_WRITE_REG(hw, IXGBE_VFTA(offset), 0);

 for (offset = 0; offset < IXGBE_VLVF_ENTRIES; offset++) {
  IXGBE_WRITE_REG(hw, IXGBE_VLVF(offset), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VLVFB(offset * 2), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VLVFB((offset * 2) + 1), 0);
 }

 return IXGBE_SUCCESS;
}
