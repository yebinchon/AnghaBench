
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pa; } ;
struct TYPE_5__ {TYPE_4__* asq_bi; } ;
struct TYPE_6__ {int dma_head; TYPE_4__ desc_buf; int cmd_buf; TYPE_1__ r; } ;
struct TYPE_7__ {int num_asq_entries; TYPE_2__ asq; } ;
struct i40e_hw {TYPE_3__ aq; } ;


 int i40e_free_dma_mem (struct i40e_hw*,TYPE_4__*) ;
 int i40e_free_virt_mem (struct i40e_hw*,int *) ;

__attribute__((used)) static void i40e_free_asq_bufs(struct i40e_hw *hw)
{
 int i;


 for (i = 0; i < hw->aq.num_asq_entries; i++)
  if (hw->aq.asq.r.asq_bi[i].pa)
   i40e_free_dma_mem(hw, &hw->aq.asq.r.asq_bi[i]);


 i40e_free_virt_mem(hw, &hw->aq.asq.cmd_buf);


 i40e_free_dma_mem(hw, &hw->aq.asq.desc_buf);


 i40e_free_virt_mem(hw, &hw->aq.asq.dma_head);
}
