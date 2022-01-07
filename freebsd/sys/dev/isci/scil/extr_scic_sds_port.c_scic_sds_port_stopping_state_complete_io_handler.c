
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ started_request_count; } ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;


 int SCI_BASE_PORT_STATE_STOPPED ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_port_decrement_request_count (TYPE_1__*) ;
 int scic_sds_port_get_base_state_machine (TYPE_1__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_port_stopping_state_complete_io_handler(
   SCIC_SDS_PORT_T *port,
   SCIC_SDS_REMOTE_DEVICE_T *device,
   SCIC_SDS_REQUEST_T *io_request
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)port;

   scic_sds_port_decrement_request_count(this_port);

   if (this_port->started_request_count == 0)
   {
      sci_base_state_machine_change_state(
         scic_sds_port_get_base_state_machine(this_port),
         SCI_BASE_PORT_STATE_STOPPED
      );
   }

   return SCI_SUCCESS;
}
