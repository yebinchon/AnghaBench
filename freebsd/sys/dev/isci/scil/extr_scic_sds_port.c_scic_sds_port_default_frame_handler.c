
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_PORT_T ;


 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_WARNING (int ) ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_get_state (int ) ;
 int scic_sds_controller_release_frame (int ,int ) ;
 int scic_sds_port_get_base_state_machine (int *) ;
 int scic_sds_port_get_controller (int *) ;

SCI_STATUS scic_sds_port_default_frame_handler(
   SCIC_SDS_PORT_T * port,
   U32 frame_index
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)port;

   SCIC_LOG_WARNING((
      sci_base_object_get_logger(this_port),
      SCIC_LOG_OBJECT_PORT,
      "SCIC Port 0x%08x requested to process frame %d while in invalid state %d\n",
      port, frame_index,
      sci_base_state_machine_get_state(
         scic_sds_port_get_base_state_machine(this_port))
   ));

   scic_sds_controller_release_frame(
      scic_sds_port_get_controller(this_port), frame_index
   );

   return SCI_FAILURE_INVALID_STATE;
}
