
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int port_agent; int * timeout_timer; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int SCI_BASE_CONTROLLER_STATE_STOPPED ;
 int SCI_SUCCESS ;
 int scic_cb_controller_stop_complete (TYPE_1__*,int ) ;
 int scic_cb_timer_destroy (TYPE_1__*,int *) ;
 int scic_sds_controller_set_base_state_handlers (TYPE_1__*,int ) ;
 int scic_sds_controller_stop_phys (TYPE_1__*) ;
 int scic_sds_port_configuration_agent_destroy (TYPE_1__*,int *) ;

__attribute__((used)) static
void scic_sds_controller_stopped_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   scic_sds_controller_set_base_state_handlers(
      this_controller, SCI_BASE_CONTROLLER_STATE_STOPPED);


   scic_cb_timer_destroy(
      this_controller,
      this_controller->timeout_timer
   );
   this_controller->timeout_timer = ((void*)0);


   scic_sds_controller_stop_phys(this_controller);

   scic_sds_port_configuration_agent_destroy(
      this_controller,
      &this_controller->port_agent
   );

   scic_cb_controller_stop_complete(this_controller, SCI_SUCCESS);
}
