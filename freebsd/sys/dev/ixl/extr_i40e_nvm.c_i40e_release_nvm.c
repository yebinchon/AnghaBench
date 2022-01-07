
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ asq_cmd_timeout; } ;
struct TYPE_3__ {scalar_t__ blank_nvm_mode; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ nvm; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int DEBUGFUNC (char*) ;
 int I40E_ERR_ADMIN_QUEUE_TIMEOUT ;
 int I40E_NVM_RESOURCE_ID ;
 int I40E_SUCCESS ;
 int i40e_aq_release_resource (struct i40e_hw*,int ,int ,int *) ;
 int i40e_msec_delay (int) ;

void i40e_release_nvm(struct i40e_hw *hw)
{
 enum i40e_status_code ret_code = I40E_SUCCESS;
 u32 total_delay = 0;

 DEBUGFUNC("i40e_release_nvm");

 if (hw->nvm.blank_nvm_mode)
  return;

 ret_code = i40e_aq_release_resource(hw, I40E_NVM_RESOURCE_ID, 0, ((void*)0));




 while ((ret_code == I40E_ERR_ADMIN_QUEUE_TIMEOUT) &&
        (total_delay < hw->aq.asq_cmd_timeout)) {
   i40e_msec_delay(1);
   ret_code = i40e_aq_release_resource(hw,
      I40E_NVM_RESOURCE_ID, 0, ((void*)0));
   total_delay++;
 }
}
