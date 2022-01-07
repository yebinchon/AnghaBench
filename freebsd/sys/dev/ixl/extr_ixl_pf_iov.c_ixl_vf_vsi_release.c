
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int seid; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;


 int i40e_aq_delete_element (struct i40e_hw*,int ,int *) ;

__attribute__((used)) static void
ixl_vf_vsi_release(struct ixl_pf *pf, struct ixl_vsi *vsi)
{
 struct i40e_hw *hw;

 hw = &pf->hw;

 if (vsi->seid == 0)
  return;

 i40e_aq_delete_element(hw, vsi->seid, ((void*)0));
}
