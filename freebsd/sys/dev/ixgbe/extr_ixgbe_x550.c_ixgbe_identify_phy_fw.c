
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * write_reg; int * read_reg; } ;
struct TYPE_6__ {TYPE_2__ ops; int type; int phy_semaphore_mask; } ;
struct TYPE_4__ {scalar_t__ lan_id; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_1__ bus; } ;
typedef int s32 ;


 int IXGBE_GSSR_PHY0_SM ;
 int IXGBE_GSSR_PHY1_SM ;
 int ixgbe_get_phy_id_fw (struct ixgbe_hw*) ;
 int ixgbe_phy_fw ;

__attribute__((used)) static s32 ixgbe_identify_phy_fw(struct ixgbe_hw *hw)
{
 if (hw->bus.lan_id)
  hw->phy.phy_semaphore_mask = IXGBE_GSSR_PHY1_SM;
 else
  hw->phy.phy_semaphore_mask = IXGBE_GSSR_PHY0_SM;

 hw->phy.type = ixgbe_phy_fw;
 hw->phy.ops.read_reg = ((void*)0);
 hw->phy.ops.write_reg = ((void*)0);
 return ixgbe_get_phy_id_fw(hw);
}
