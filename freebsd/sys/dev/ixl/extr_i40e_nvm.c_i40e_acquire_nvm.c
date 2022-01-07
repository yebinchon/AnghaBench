
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int asq_last_status; } ;
struct TYPE_3__ {scalar_t__ hw_semaphore_timeout; scalar_t__ blank_nvm_mode; } ;
struct i40e_hw {TYPE_2__ aq; TYPE_1__ nvm; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef enum i40e_aq_resource_access_type { ____Placeholder_i40e_aq_resource_access_type } i40e_aq_resource_access_type ;


 int DEBUGFUNC (char*) ;
 int I40E_DEBUG_NVM ;
 int I40E_GLVFGEN_TIMER ;
 scalar_t__ I40E_MAX_NVM_TIMEOUT ;
 scalar_t__ I40E_MS_TO_GTIME (scalar_t__) ;
 int I40E_NVM_RESOURCE_ID ;
 int I40E_SUCCESS ;
 int i40e_aq_request_resource (struct i40e_hw*,int ,int,int ,scalar_t__*,int *) ;
 int i40e_debug (struct i40e_hw*,int ,char*,scalar_t__,int,int,...) ;
 int i40e_msec_delay (int) ;
 scalar_t__ rd32 (struct i40e_hw*,int ) ;

enum i40e_status_code i40e_acquire_nvm(struct i40e_hw *hw,
           enum i40e_aq_resource_access_type access)
{
 enum i40e_status_code ret_code = I40E_SUCCESS;
 u64 gtime, timeout;
 u64 time_left = 0;

 DEBUGFUNC("i40e_acquire_nvm");

 if (hw->nvm.blank_nvm_mode)
  goto i40e_i40e_acquire_nvm_exit;

 ret_code = i40e_aq_request_resource(hw, I40E_NVM_RESOURCE_ID, access,
         0, &time_left, ((void*)0));

 gtime = rd32(hw, I40E_GLVFGEN_TIMER);


 hw->nvm.hw_semaphore_timeout = I40E_MS_TO_GTIME(time_left) + gtime;

 if (ret_code)
  i40e_debug(hw, I40E_DEBUG_NVM,
      "NVM acquire type %d failed time_left=%llu ret=%d aq_err=%d\n",
      access, time_left, ret_code, hw->aq.asq_last_status);

 if (ret_code && time_left) {

  timeout = I40E_MS_TO_GTIME(I40E_MAX_NVM_TIMEOUT) + gtime;
  while ((gtime < timeout) && time_left) {
   i40e_msec_delay(10);
   gtime = rd32(hw, I40E_GLVFGEN_TIMER);
   ret_code = i40e_aq_request_resource(hw,
       I40E_NVM_RESOURCE_ID,
       access, 0, &time_left,
       ((void*)0));
   if (ret_code == I40E_SUCCESS) {
    hw->nvm.hw_semaphore_timeout =
         I40E_MS_TO_GTIME(time_left) + gtime;
    break;
   }
  }
  if (ret_code != I40E_SUCCESS) {
   hw->nvm.hw_semaphore_timeout = 0;
   i40e_debug(hw, I40E_DEBUG_NVM,
       "NVM acquire timed out, wait %llu ms before trying again. status=%d aq_err=%d\n",
       time_left, ret_code, hw->aq.asq_last_status);
  }
 }

i40e_i40e_acquire_nvm_exit:
 return ret_code;
}
