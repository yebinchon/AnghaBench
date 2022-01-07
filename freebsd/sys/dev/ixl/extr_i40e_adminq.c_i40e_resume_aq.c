
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ next_to_clean; scalar_t__ next_to_use; } ;
struct TYPE_4__ {scalar_t__ next_to_clean; scalar_t__ next_to_use; } ;
struct TYPE_6__ {TYPE_2__ arq; TYPE_1__ asq; } ;
struct i40e_hw {TYPE_3__ aq; } ;


 int i40e_config_arq_regs (struct i40e_hw*) ;
 int i40e_config_asq_regs (struct i40e_hw*) ;

__attribute__((used)) static void i40e_resume_aq(struct i40e_hw *hw)
{

 hw->aq.asq.next_to_use = 0;
 hw->aq.asq.next_to_clean = 0;

 i40e_config_asq_regs(hw);

 hw->aq.arq.next_to_use = 0;
 hw->aq.arq.next_to_clean = 0;

 i40e_config_arq_regs(hw);
}
