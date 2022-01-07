
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {int parent; int current_state_id; int previous_state_id; } ;
typedef TYPE_1__ SCI_BASE_STATE_MACHINE_T ;


 int SCI_STATE_MACHINE_ENTER_STATE (TYPE_1__*) ;
 int SCI_STATE_MACHINE_EXIT_STATE (TYPE_1__*) ;
 int SCI_STATE_MACHINE_SET_STATE (TYPE_1__*,int ) ;
 int sci_base_subject_notify (int *) ;

void sci_base_state_machine_change_state(
   SCI_BASE_STATE_MACHINE_T *this_state_machine,
   U32 next_state
)
{
   SCI_STATE_MACHINE_EXIT_STATE(this_state_machine);

   this_state_machine->previous_state_id = this_state_machine->current_state_id;
   SCI_STATE_MACHINE_SET_STATE(this_state_machine, next_state);






   SCI_STATE_MACHINE_ENTER_STATE(this_state_machine);
}
