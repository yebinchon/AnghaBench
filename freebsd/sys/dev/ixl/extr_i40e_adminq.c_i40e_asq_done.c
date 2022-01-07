
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ next_to_use; int head; } ;
struct TYPE_4__ {TYPE_1__ asq; } ;
struct i40e_hw {TYPE_2__ aq; } ;


 scalar_t__ rd32 (struct i40e_hw*,int ) ;

bool i40e_asq_done(struct i40e_hw *hw)
{



 return rd32(hw, hw->aq.asq.head) == hw->aq.asq.next_to_use;

}
