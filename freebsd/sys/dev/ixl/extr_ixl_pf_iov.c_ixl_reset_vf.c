
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ixl_vf {int vf_num; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;


 int I40E_VPGEN_VFRTRIG (int ) ;
 int I40E_VPGEN_VFRTRIG_VFSWR_MASK ;
 int ixl_dbg_iov (struct ixl_pf*,char*,int ) ;
 int ixl_flush (struct i40e_hw*) ;
 int ixl_reinit_vf (struct ixl_pf*,struct ixl_vf*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void
ixl_reset_vf(struct ixl_pf *pf, struct ixl_vf *vf)
{
 struct i40e_hw *hw;
 uint32_t vfrtrig;

 hw = &pf->hw;

 ixl_dbg_iov(pf, "Resetting VF-%d\n", vf->vf_num);

 vfrtrig = rd32(hw, I40E_VPGEN_VFRTRIG(vf->vf_num));
 vfrtrig |= I40E_VPGEN_VFRTRIG_VFSWR_MASK;
 wr32(hw, I40E_VPGEN_VFRTRIG(vf->vf_num), vfrtrig);
 ixl_flush(hw);

 ixl_reinit_vf(pf, vf);

 ixl_dbg_iov(pf, "Resetting VF-%d done.\n", vf->vf_num);
}
