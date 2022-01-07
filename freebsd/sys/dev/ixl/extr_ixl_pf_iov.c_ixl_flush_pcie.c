
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ixl_vf {int vf_num; } ;
struct TYPE_2__ {int vf_base_id; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct ixl_pf {struct i40e_hw hw; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int I40E_PF_PCI_CIAA ;
 int I40E_PF_PCI_CIAA_VF_NUM_SHIFT ;
 int I40E_PF_PCI_CIAD ;
 int IXL_PF_PCI_CIAA_VF_DEVICE_STATUS ;
 int IXL_PF_PCI_CIAD_VF_TRANS_PENDING_MASK ;
 int IXL_VF_RESET_TIMEOUT ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static int
ixl_flush_pcie(struct ixl_pf *pf, struct ixl_vf *vf)
{
 struct i40e_hw *hw;
 int i;
 uint16_t global_vf_num;
 uint32_t ciad;

 hw = &pf->hw;
 global_vf_num = hw->func_caps.vf_base_id + vf->vf_num;

 wr32(hw, I40E_PF_PCI_CIAA, IXL_PF_PCI_CIAA_VF_DEVICE_STATUS |
      (global_vf_num << I40E_PF_PCI_CIAA_VF_NUM_SHIFT));
 for (i = 0; i < IXL_VF_RESET_TIMEOUT; i++) {
  ciad = rd32(hw, I40E_PF_PCI_CIAD);
  if ((ciad & IXL_PF_PCI_CIAD_VF_TRANS_PENDING_MASK) == 0)
   return (0);
  DELAY(1);
 }

 return (ETIMEDOUT);
}
