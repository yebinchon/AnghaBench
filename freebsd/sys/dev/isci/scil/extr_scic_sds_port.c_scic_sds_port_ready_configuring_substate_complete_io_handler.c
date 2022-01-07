
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ started_request_count; int ready_substate_machine; } ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 int SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_sds_port_decrement_request_count (TYPE_1__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_port_ready_configuring_substate_complete_io_handler(
   SCIC_SDS_PORT_T *port,
   SCIC_SDS_REMOTE_DEVICE_T *device,
   SCIC_SDS_REQUEST_T *io_request
)
{
   scic_sds_port_decrement_request_count(port);

   if (port->started_request_count == 0)
   {
      sci_base_state_machine_change_state(
         &port->ready_substate_machine,
         SCIC_SDS_PORT_READY_SUBSTATE_OPERATIONAL
      );
   }

   return SCI_SUCCESS;
}
