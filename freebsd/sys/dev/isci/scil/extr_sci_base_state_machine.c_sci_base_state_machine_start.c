
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; int initial_state_id; } ;
typedef TYPE_1__ SCI_BASE_STATE_MACHINE_T ;


 int SCI_STATE_MACHINE_ENTER_STATE (TYPE_1__*) ;
 int SCI_STATE_MACHINE_SET_STATE (TYPE_1__*,int ) ;
 int sci_base_subject_notify (int *) ;

void sci_base_state_machine_start(
   SCI_BASE_STATE_MACHINE_T *this_state_machine
)
{
   SCI_STATE_MACHINE_SET_STATE(
      this_state_machine, this_state_machine->initial_state_id
   );





   SCI_STATE_MACHINE_ENTER_STATE(this_state_machine);
}
