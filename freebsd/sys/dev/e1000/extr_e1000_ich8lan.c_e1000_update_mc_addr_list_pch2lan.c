
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* release ) (struct e1000_hw*) ;int (* write_reg_page ) (struct e1000_hw*,scalar_t__,int ) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int mta_reg_count; int* mta_shadow; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ BM_MTA (int) ;
 int DEBUGFUNC (char*) ;
 int e1000_disable_phy_wakeup_reg_access_bm (struct e1000_hw*,int *) ;
 scalar_t__ e1000_enable_phy_wakeup_reg_access_bm (struct e1000_hw*,int *) ;
 int e1000_update_mc_addr_list_generic (struct e1000_hw*,int *,int ) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*,scalar_t__,int ) ;
 int stub3 (struct e1000_hw*,scalar_t__,int ) ;
 int stub4 (struct e1000_hw*) ;

__attribute__((used)) static void e1000_update_mc_addr_list_pch2lan(struct e1000_hw *hw,
           u8 *mc_addr_list,
           u32 mc_addr_count)
{
 u16 phy_reg = 0;
 int i;
 s32 ret_val;

 DEBUGFUNC("e1000_update_mc_addr_list_pch2lan");

 e1000_update_mc_addr_list_generic(hw, mc_addr_list, mc_addr_count);

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val)
  return;

 ret_val = e1000_enable_phy_wakeup_reg_access_bm(hw, &phy_reg);
 if (ret_val)
  goto release;

 for (i = 0; i < hw->mac.mta_reg_count; i++) {
  hw->phy.ops.write_reg_page(hw, BM_MTA(i),
        (u16)(hw->mac.mta_shadow[i] &
       0xFFFF));
  hw->phy.ops.write_reg_page(hw, (BM_MTA(i) + 1),
        (u16)((hw->mac.mta_shadow[i] >> 16) &
       0xFFFF));
 }

 e1000_disable_phy_wakeup_reg_access_bm(hw, &phy_reg);

release:
 hw->phy.ops.release(hw);
}
