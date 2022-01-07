
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ IXGBE_ERR_PARAM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SUCCESS ;
 int IXGBE_VFTA (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_set_vlvf_generic (struct ixgbe_hw*,int,int,int,int*,int,int) ;

s32 ixgbe_set_vfta_generic(struct ixgbe_hw *hw, u32 vlan, u32 vind,
      bool vlan_on, bool vlvf_bypass)
{
 u32 regidx, vfta_delta, vfta;
 s32 ret_val;

 DEBUGFUNC("ixgbe_set_vfta_generic");

 if (vlan > 4095 || vind > 63)
  return IXGBE_ERR_PARAM;
 regidx = vlan / 32;
 vfta_delta = 1 << (vlan % 32);
 vfta = IXGBE_READ_REG(hw, IXGBE_VFTA(regidx));






 vfta_delta &= vlan_on ? ~vfta : vfta;
 vfta ^= vfta_delta;




 ret_val = ixgbe_set_vlvf_generic(hw, vlan, vind, vlan_on, &vfta_delta,
      vfta, vlvf_bypass);
 if (ret_val != IXGBE_SUCCESS) {
  if (vlvf_bypass)
   goto vfta_update;
  return ret_val;
 }

vfta_update:

 if (vfta_delta)
  IXGBE_WRITE_REG(hw, IXGBE_VFTA(regidx), vfta);

 return IXGBE_SUCCESS;
}
