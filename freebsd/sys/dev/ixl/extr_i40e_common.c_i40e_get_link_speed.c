
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link_speed; } ;
struct TYPE_4__ {TYPE_1__ link_info; scalar_t__ get_link_info; } ;
struct i40e_hw {TYPE_2__ phy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef enum i40e_aq_link_speed { ____Placeholder_i40e_aq_link_speed } i40e_aq_link_speed ;


 int I40E_LINK_SPEED_UNKNOWN ;
 int I40E_SUCCESS ;
 int TRUE ;
 int i40e_aq_get_link_info (struct i40e_hw*,int ,int *,int *) ;

enum i40e_aq_link_speed i40e_get_link_speed(struct i40e_hw *hw)
{
 enum i40e_aq_link_speed speed = I40E_LINK_SPEED_UNKNOWN;
 enum i40e_status_code status = I40E_SUCCESS;

 if (hw->phy.get_link_info) {
  status = i40e_aq_get_link_info(hw, TRUE, ((void*)0), ((void*)0));

  if (status != I40E_SUCCESS)
   goto i40e_link_speed_exit;
 }

 speed = hw->phy.link_info.link_speed;

i40e_link_speed_exit:
 return speed;
}
