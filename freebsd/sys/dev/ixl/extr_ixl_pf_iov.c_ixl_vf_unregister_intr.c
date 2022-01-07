
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct i40e_hw {int dummy; } ;


 int I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK ;
 int I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK ;
 int ixl_flush (struct i40e_hw*) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void
ixl_vf_unregister_intr(struct i40e_hw *hw, uint32_t vpint_reg)
{

 wr32(hw, vpint_reg, I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK |
     I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK);
 ixl_flush(hw);
}
