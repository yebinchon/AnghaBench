
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_NOT_IMPLEMENTED ;
 int UNREFERENCED_4PARAMETER (struct ixgbe_hw,int ,int ,int ) ;

__attribute__((used)) static s32 ixgbe_write_phy_reg_x550em(struct ixgbe_hw *hw, u32 reg_addr,
          u32 device_type, u16 phy_data)
{
 UNREFERENCED_4PARAMETER(*hw, reg_addr, device_type, phy_data);
 return IXGBE_NOT_IMPLEMENTED;
}
