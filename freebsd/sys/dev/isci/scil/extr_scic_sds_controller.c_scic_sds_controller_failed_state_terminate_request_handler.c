
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef int SCIC_SDS_REQUEST_T ;


 int scic_sds_io_request_terminate (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_controller_failed_state_terminate_request_handler(
   SCI_BASE_CONTROLLER_T *controller,
   SCI_BASE_REMOTE_DEVICE_T *remote_device,
   SCI_BASE_REQUEST_T *io_request
)
{
   SCIC_SDS_REQUEST_T *the_request = (SCIC_SDS_REQUEST_T *)
                                               io_request;

   return scic_sds_io_request_terminate(the_request);
}
