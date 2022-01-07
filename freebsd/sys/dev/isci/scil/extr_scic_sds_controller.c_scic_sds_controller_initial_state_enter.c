
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
struct TYPE_5__ {TYPE_1__ parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 int SCI_BASE_CONTROLLER_STATE_INITIAL ;
 int SCI_BASE_CONTROLLER_STATE_RESET ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_controller_set_base_state_handlers (TYPE_2__*,int ) ;

__attribute__((used)) static
void scic_sds_controller_initial_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   scic_sds_controller_set_base_state_handlers(
      this_controller, SCI_BASE_CONTROLLER_STATE_INITIAL);

   sci_base_state_machine_change_state(
      &this_controller->parent.state_machine, SCI_BASE_CONTROLLER_STATE_RESET);
}
