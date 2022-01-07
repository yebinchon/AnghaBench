
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
typedef TYPE_1__ SCI_BASE_STATE_MACHINE_T ;


 int SCI_STATE_MACHINE_EXIT_STATE (TYPE_1__*) ;
 int sci_base_subject_notify (int *) ;

void sci_base_state_machine_stop(
   SCI_BASE_STATE_MACHINE_T *this_state_machine
)
{
   SCI_STATE_MACHINE_EXIT_STATE(this_state_machine);




}
