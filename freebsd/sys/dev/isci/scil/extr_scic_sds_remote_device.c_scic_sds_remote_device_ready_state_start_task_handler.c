
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rnc; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCIC_SDS_REQUEST_T ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 scalar_t__ SCI_SUCCESS ;
 scalar_t__ scic_sds_port_start_io (int ,TYPE_1__*,int *) ;
 int scic_sds_remote_device_get_port (TYPE_1__*) ;
 int scic_sds_remote_device_start_request (TYPE_1__*,int *,scalar_t__) ;
 scalar_t__ scic_sds_remote_node_context_start_task (int ,int *) ;
 scalar_t__ scic_sds_request_start (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_device_ready_state_start_task_handler(
   SCI_BASE_REMOTE_DEVICE_T *device,
   SCI_BASE_REQUEST_T *request
)
{
   SCI_STATUS result;
   SCIC_SDS_REMOTE_DEVICE_T *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;
   SCIC_SDS_REQUEST_T *task_request = (SCIC_SDS_REQUEST_T *)request;


   result = scic_sds_port_start_io(
      scic_sds_remote_device_get_port(this_device), this_device, task_request);

   if (result == SCI_SUCCESS)
   {
      result = scic_sds_remote_node_context_start_task(
                  this_device->rnc, task_request
               );

      if (result == SCI_SUCCESS)
      {
         result = scic_sds_request_start(task_request);
      }

      scic_sds_remote_device_start_request(this_device, task_request, result);
   }

   return result;
}
