
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; scalar_t__ next_to_clean; scalar_t__ next_to_use; } ;
struct TYPE_4__ {scalar_t__ num_asq_entries; scalar_t__ asq_buf_size; TYPE_1__ asq; } ;
struct i40e_hw {TYPE_2__ aq; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_ERR_CONFIG ;
 int I40E_ERR_NOT_READY ;
 int I40E_SUCCESS ;
 int i40e_alloc_adminq_asq_ring (struct i40e_hw*) ;
 int i40e_alloc_asq_bufs (struct i40e_hw*) ;
 int i40e_config_asq_regs (struct i40e_hw*) ;
 int i40e_free_adminq_asq (struct i40e_hw*) ;

enum i40e_status_code i40e_init_asq(struct i40e_hw *hw)
{
 enum i40e_status_code ret_code = I40E_SUCCESS;

 if (hw->aq.asq.count > 0) {

  ret_code = I40E_ERR_NOT_READY;
  goto init_adminq_exit;
 }


 if ((hw->aq.num_asq_entries == 0) ||
     (hw->aq.asq_buf_size == 0)) {
  ret_code = I40E_ERR_CONFIG;
  goto init_adminq_exit;
 }

 hw->aq.asq.next_to_use = 0;
 hw->aq.asq.next_to_clean = 0;


 ret_code = i40e_alloc_adminq_asq_ring(hw);
 if (ret_code != I40E_SUCCESS)
  goto init_adminq_exit;


 ret_code = i40e_alloc_asq_bufs(hw);
 if (ret_code != I40E_SUCCESS)
  goto init_adminq_free_rings;


 ret_code = i40e_config_asq_regs(hw);
 if (ret_code != I40E_SUCCESS)
  goto init_adminq_free_rings;


 hw->aq.asq.count = hw->aq.num_asq_entries;
 goto init_adminq_exit;

init_adminq_free_rings:
 i40e_free_adminq_asq(hw);

init_adminq_exit:
 return ret_code;
}
