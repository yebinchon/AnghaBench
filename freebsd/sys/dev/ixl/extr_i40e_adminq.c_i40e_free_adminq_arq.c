
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc_buf; } ;
struct TYPE_4__ {TYPE_1__ arq; } ;
struct i40e_hw {TYPE_2__ aq; } ;


 int i40e_free_dma_mem (struct i40e_hw*,int *) ;

void i40e_free_adminq_arq(struct i40e_hw *hw)
{
 i40e_free_dma_mem(hw, &hw->aq.arq.desc_buf);
}
