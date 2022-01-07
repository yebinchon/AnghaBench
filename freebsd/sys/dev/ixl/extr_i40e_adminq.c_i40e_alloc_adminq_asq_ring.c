
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc_buf; int cmd_buf; } ;
struct TYPE_4__ {int num_asq_entries; TYPE_1__ asq; } ;
struct i40e_hw {TYPE_2__ aq; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aq_desc {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_ADMINQ_DESC_ALIGNMENT ;
 int i40e_allocate_dma_mem (struct i40e_hw*,int *,int ,int,int ) ;
 int i40e_allocate_virt_mem (struct i40e_hw*,int *,int) ;
 int i40e_free_dma_mem (struct i40e_hw*,int *) ;
 int i40e_mem_atq_ring ;

enum i40e_status_code i40e_alloc_adminq_asq_ring(struct i40e_hw *hw)
{
 enum i40e_status_code ret_code;

 ret_code = i40e_allocate_dma_mem(hw, &hw->aq.asq.desc_buf,
      i40e_mem_atq_ring,
      (hw->aq.num_asq_entries *
      sizeof(struct i40e_aq_desc)),
      I40E_ADMINQ_DESC_ALIGNMENT);
 if (ret_code)
  return ret_code;

 ret_code = i40e_allocate_virt_mem(hw, &hw->aq.asq.cmd_buf,
       (hw->aq.num_asq_entries *
       sizeof(struct i40e_asq_cmd_details)));
 if (ret_code) {
  i40e_free_dma_mem(hw, &hw->aq.asq.desc_buf);
  return ret_code;
 }

 return ret_code;
}
