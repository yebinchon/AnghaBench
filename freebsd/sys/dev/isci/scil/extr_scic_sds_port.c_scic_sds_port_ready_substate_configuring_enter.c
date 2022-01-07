
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ active_phy_mask; int ready_substate_machine; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 int SCIC_PORT_NOT_READY_NO_ACTIVE_PHYS ;
 int SCIC_SDS_PORT_READY_SUBSTATE_CONFIGURING ;
 int SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL ;
 int SCIC_SDS_PORT_READY_SUBSTATE_WAITING ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_cb_port_not_ready (int ,TYPE_1__*,int ) ;
 int scic_sds_port_get_controller (TYPE_1__*) ;
 int scic_sds_port_set_ready_state_handlers (TYPE_1__*,int ) ;

__attribute__((used)) static
void scic_sds_port_ready_substate_configuring_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)object;

   scic_sds_port_set_ready_state_handlers(
      this_port, SCIC_SDS_PORT_READY_SUBSTATE_CONFIGURING
   );

   if (this_port->active_phy_mask == 0)
   {
      scic_cb_port_not_ready(
         scic_sds_port_get_controller(this_port),
         this_port,
         SCIC_PORT_NOT_READY_NO_ACTIVE_PHYS
      );

      sci_base_state_machine_change_state(
         &this_port->ready_substate_machine,
         SCIC_SDS_PORT_READY_SUBSTATE_WAITING
      );
   }

   else
   {
      sci_base_state_machine_change_state(
         &this_port->ready_substate_machine,
         SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL
      );
   }
}
