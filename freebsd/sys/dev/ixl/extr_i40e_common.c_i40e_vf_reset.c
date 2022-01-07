
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_hw {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_SUCCESS ;
 int VIRTCHNL_OP_RESET_VF ;
 int i40e_aq_send_msg_to_pf (struct i40e_hw*,int ,int ,int *,int ,int *) ;

enum i40e_status_code i40e_vf_reset(struct i40e_hw *hw)
{
 return i40e_aq_send_msg_to_pf(hw, VIRTCHNL_OP_RESET_VF,
          I40E_SUCCESS, ((void*)0), 0, ((void*)0));
}
