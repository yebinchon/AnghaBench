
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ active_phy_mask; int ready_substate_machine; int not_ready_reason; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 int SCIC_PORT_NOT_READY_NO_ACTIVE_PHYS ;
 int SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL ;
 int SCIC_SDS_PORT_READY_SUBSTATE_WAITING ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_port_set_ready_state_handlers (TYPE_1__*,int ) ;
 int scic_sds_port_suspend_port_task_scheduler (TYPE_1__*) ;

__attribute__((used)) static
void scic_sds_port_ready_substate_waiting_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)object;

   scic_sds_port_set_ready_state_handlers(
      this_port, SCIC_SDS_PORT_READY_SUBSTATE_WAITING
   );

   scic_sds_port_suspend_port_task_scheduler(this_port);


   this_port->not_ready_reason = SCIC_PORT_NOT_READY_NO_ACTIVE_PHYS;

   if (this_port->active_phy_mask != 0)
   {

      sci_base_state_machine_change_state(
         &this_port->ready_substate_machine,
         SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL
      );
   }
}
