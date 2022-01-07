
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef int SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 scalar_t__ SCI_SUCCESS ;
 int SCU_CONTEXT_COMMAND_REQUEST_POST_TC_ABORT ;
 int scic_sds_controller_post_request (int *,int) ;
 scalar_t__ scic_sds_io_request_terminate (int *) ;
 int scic_sds_request_get_post_context (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_controller_ready_state_terminate_request_handler(
   SCI_BASE_CONTROLLER_T *controller,
   SCI_BASE_REMOTE_DEVICE_T *remote_device,
   SCI_BASE_REQUEST_T *io_request
)
{
   SCIC_SDS_CONTROLLER_T *this_controller = (SCIC_SDS_CONTROLLER_T *)
                                               controller;
   SCIC_SDS_REQUEST_T *the_request = (SCIC_SDS_REQUEST_T *)
                                               io_request;
   SCI_STATUS status;

   status = scic_sds_io_request_terminate(the_request);
   if (status == SCI_SUCCESS)
   {


      scic_sds_controller_post_request(
         this_controller,
         scic_sds_request_get_post_context(the_request)
         | SCU_CONTEXT_COMMAND_REQUEST_POST_TC_ABORT
      );
   }

   return status;
}
