
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCIC_LOG_WARNING (int ) ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_get_state (int ) ;
 int scic_sds_remote_device_get_base_state_machine (int *) ;

SCI_STATUS scic_sds_remote_device_default_start_request_handler(
   SCI_BASE_REMOTE_DEVICE_T *device,
   SCI_BASE_REQUEST_T *request
)
{
   SCIC_LOG_WARNING((
      sci_base_object_get_logger((SCIC_SDS_REMOTE_DEVICE_T *)device),
      SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
      "SCIC Remote Device requested to start io request %x while in wrong state %d\n",
      request,
      sci_base_state_machine_get_state(
         scic_sds_remote_device_get_base_state_machine((SCIC_SDS_REMOTE_DEVICE_T *)device))
   ));

   return SCI_FAILURE_INVALID_STATE;
}
