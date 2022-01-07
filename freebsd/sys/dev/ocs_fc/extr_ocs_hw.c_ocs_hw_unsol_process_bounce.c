
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int unsolicited; } ;
struct TYPE_6__ {int (* unsolicited ) (int ,TYPE_4__*) ;} ;
struct TYPE_8__ {TYPE_2__ args; TYPE_1__ callback; } ;
typedef TYPE_3__ ocs_hw_t ;
struct TYPE_9__ {TYPE_3__* hw; } ;
typedef TYPE_4__ ocs_hw_sequence_t ;


 int ocs_hw_assert (int ) ;
 int stub1 (int ,TYPE_4__*) ;

void
ocs_hw_unsol_process_bounce(void *arg)
{
 ocs_hw_sequence_t *seq = arg;
 ocs_hw_t *hw = seq->hw;

 ocs_hw_assert(hw != ((void*)0));
 ocs_hw_assert(hw->callback.unsolicited != ((void*)0));

 hw->callback.unsolicited(hw->args.unsolicited, seq);
}
