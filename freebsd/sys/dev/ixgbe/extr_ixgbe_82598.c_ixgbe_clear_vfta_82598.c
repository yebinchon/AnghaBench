
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ vft_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_SUCCESS ;
 int IXGBE_VFTA (scalar_t__) ;
 int IXGBE_VFTAVIND (scalar_t__,scalar_t__) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

__attribute__((used)) static s32 ixgbe_clear_vfta_82598(struct ixgbe_hw *hw)
{
 u32 offset;
 u32 vlanbyte;

 DEBUGFUNC("ixgbe_clear_vfta_82598");

 for (offset = 0; offset < hw->mac.vft_size; offset++)
  IXGBE_WRITE_REG(hw, IXGBE_VFTA(offset), 0);

 for (vlanbyte = 0; vlanbyte < 4; vlanbyte++)
  for (offset = 0; offset < hw->mac.vft_size; offset++)
   IXGBE_WRITE_REG(hw, IXGBE_VFTAVIND(vlanbyte, offset),
     0);

 return IXGBE_SUCCESS;
}
