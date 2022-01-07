
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* U32 ;
struct TYPE_3__ {int * state_table; void* current_state_id; void* previous_state_id; void* initial_state_id; int * state_machine_owner; int parent; } ;
typedef int SCI_BASE_STATE_T ;
typedef TYPE_1__ SCI_BASE_STATE_MACHINE_T ;
typedef int SCI_BASE_OBJECT_T ;


 int sci_base_subject_construct (int *) ;

void sci_base_state_machine_construct(
   SCI_BASE_STATE_MACHINE_T * this_state_machine,
   SCI_BASE_OBJECT_T * my_state_machine_owner,
   SCI_BASE_STATE_T * state_table,
   U32 initial_state
)
{




   this_state_machine->state_machine_owner = my_state_machine_owner;
   this_state_machine->initial_state_id = initial_state;
   this_state_machine->previous_state_id = initial_state;
   this_state_machine->current_state_id = initial_state;
   this_state_machine->state_table = state_table;
}
