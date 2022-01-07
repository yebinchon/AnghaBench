
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;
typedef int SCIC_SDS_PORT_T ;


 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_WARNING (int ) ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_get_state (int ) ;
 int scic_sds_port_get_base_state_machine (int *) ;

SCI_STATUS scic_sds_port_default_start_io_handler(
   SCIC_SDS_PORT_T *this_port,
   SCIC_SDS_REMOTE_DEVICE_T *device,
   SCIC_SDS_REQUEST_T *io_request
)
{
   SCIC_LOG_WARNING((
      sci_base_object_get_logger(this_port),
      SCIC_LOG_OBJECT_PORT,
      "SCIC Port 0x%08x requested to start io request 0x%08x while in invalid state %d\n",
      this_port, io_request,
      sci_base_state_machine_get_state(
         scic_sds_port_get_base_state_machine(this_port))
   ));

   return SCI_FAILURE_INVALID_STATE;
}
