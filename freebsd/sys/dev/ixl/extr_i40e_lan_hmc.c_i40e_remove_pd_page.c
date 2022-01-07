
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct i40e_hmc_info {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 scalar_t__ I40E_SUCCESS ;
 int TRUE ;
 scalar_t__ i40e_prep_remove_pd_page (struct i40e_hmc_info*,int ) ;
 int i40e_remove_pd_page_new (struct i40e_hw*,struct i40e_hmc_info*,int ,int ) ;

__attribute__((used)) static enum i40e_status_code i40e_remove_pd_page(struct i40e_hw *hw,
       struct i40e_hmc_info *hmc_info,
       u32 idx)
{
 enum i40e_status_code ret_code = I40E_SUCCESS;

 if (i40e_prep_remove_pd_page(hmc_info, idx) == I40E_SUCCESS)
  ret_code = i40e_remove_pd_page_new(hw, hmc_info, idx, TRUE);

 return ret_code;
}
