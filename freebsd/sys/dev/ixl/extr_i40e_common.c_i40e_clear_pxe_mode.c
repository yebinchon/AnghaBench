
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_hw {int dummy; } ;


 int i40e_aq_clear_pxe_mode (struct i40e_hw*,int *) ;
 scalar_t__ i40e_check_asq_alive (struct i40e_hw*) ;

void i40e_clear_pxe_mode(struct i40e_hw *hw)
{
 if (i40e_check_asq_alive(hw))
  i40e_aq_clear_pxe_mode(hw, ((void*)0));
}
