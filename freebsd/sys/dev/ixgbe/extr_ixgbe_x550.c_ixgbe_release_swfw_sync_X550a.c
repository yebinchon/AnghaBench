
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_GSSR_TOKEN_SM ;
 int ixgbe_put_phy_token (struct ixgbe_hw*) ;
 int ixgbe_release_swfw_sync_X540 (struct ixgbe_hw*,int) ;

__attribute__((used)) static void ixgbe_release_swfw_sync_X550a(struct ixgbe_hw *hw, u32 mask)
{
 u32 hmask = mask & ~IXGBE_GSSR_TOKEN_SM;

 DEBUGFUNC("ixgbe_release_swfw_sync_X550a");

 if (mask & IXGBE_GSSR_TOKEN_SM)
  ixgbe_put_phy_token(hw);

 if (hmask)
  ixgbe_release_swfw_sync_X540(hw, hmask);
}
