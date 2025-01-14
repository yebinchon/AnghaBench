
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_9__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* write_reg_locked ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg_locked ) (struct e1000_hw*,int ,int*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_10__ {scalar_t__ type; TYPE_4__ ops; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_6__ {int nvm_k1_enabled; } ;
struct TYPE_7__ {TYPE_1__ ich8lan; } ;
struct e1000_hw {TYPE_5__ phy; TYPE_3__ mac; TYPE_2__ dev_spec; } ;
typedef scalar_t__ s32 ;


 int BM_CS_STATUS ;
 int BM_CS_STATUS_LINK_UP ;
 int BM_CS_STATUS_RESOLVED ;
 int BM_CS_STATUS_SPEED_1000 ;
 int BM_CS_STATUS_SPEED_MASK ;
 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_SUCCESS ;
 int FALSE ;
 int HV_M_STATUS ;
 int HV_M_STATUS_AUTONEG_COMPLETE ;
 int HV_M_STATUS_LINK_UP ;
 int HV_M_STATUS_SPEED_1000 ;
 int HV_M_STATUS_SPEED_MASK ;
 int PHY_REG (int,int) ;
 scalar_t__ e1000_configure_k1_ich8lan (struct e1000_hw*,int) ;
 scalar_t__ e1000_pchlan ;
 scalar_t__ e1000_phy_82577 ;
 scalar_t__ e1000_phy_82578 ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub5 (struct e1000_hw*,int ,int) ;
 int stub6 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_k1_gig_workaround_hv(struct e1000_hw *hw, bool link)
{
 s32 ret_val = E1000_SUCCESS;
 u16 status_reg = 0;
 bool k1_enable = hw->dev_spec.ich8lan.nvm_k1_enabled;

 DEBUGFUNC("e1000_k1_gig_workaround_hv");

 if (hw->mac.type != e1000_pchlan)
  return E1000_SUCCESS;


 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val)
  return ret_val;


 if (link) {
  if (hw->phy.type == e1000_phy_82578) {
   ret_val = hw->phy.ops.read_reg_locked(hw, BM_CS_STATUS,
             &status_reg);
   if (ret_val)
    goto release;

   status_reg &= (BM_CS_STATUS_LINK_UP |
           BM_CS_STATUS_RESOLVED |
           BM_CS_STATUS_SPEED_MASK);

   if (status_reg == (BM_CS_STATUS_LINK_UP |
        BM_CS_STATUS_RESOLVED |
        BM_CS_STATUS_SPEED_1000))
    k1_enable = FALSE;
  }

  if (hw->phy.type == e1000_phy_82577) {
   ret_val = hw->phy.ops.read_reg_locked(hw, HV_M_STATUS,
             &status_reg);
   if (ret_val)
    goto release;

   status_reg &= (HV_M_STATUS_LINK_UP |
           HV_M_STATUS_AUTONEG_COMPLETE |
           HV_M_STATUS_SPEED_MASK);

   if (status_reg == (HV_M_STATUS_LINK_UP |
        HV_M_STATUS_AUTONEG_COMPLETE |
        HV_M_STATUS_SPEED_1000))
    k1_enable = FALSE;
  }


  ret_val = hw->phy.ops.write_reg_locked(hw, PHY_REG(770, 19),
             0x0100);
  if (ret_val)
   goto release;

 } else {

  ret_val = hw->phy.ops.write_reg_locked(hw, PHY_REG(770, 19),
             0x4100);
  if (ret_val)
   goto release;
 }

 ret_val = e1000_configure_k1_ich8lan(hw, k1_enable);

release:
 hw->phy.ops.release(hw);

 return ret_val;
}
