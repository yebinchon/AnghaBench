
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int U16 ;
struct TYPE_8__ {TYPE_1__** io_request_table; } ;
struct TYPE_7__ {int io_tag; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 scalar_t__ SCI_SUCCESS ;
 int scic_sds_controller_post_request (TYPE_2__*,int ) ;
 size_t scic_sds_io_tag_get_index (int ) ;
 scalar_t__ scic_sds_remote_device_start_io (TYPE_2__*,int *,TYPE_1__*) ;
 int scic_sds_request_get_post_context (TYPE_1__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_controller_ready_state_start_io_handler(
   SCI_BASE_CONTROLLER_T *controller,
   SCI_BASE_REMOTE_DEVICE_T *remote_device,
   SCI_BASE_REQUEST_T *io_request,
   U16 io_tag
)
{
   SCI_STATUS status;

   SCIC_SDS_CONTROLLER_T *this_controller;
   SCIC_SDS_REQUEST_T *the_request;
   SCIC_SDS_REMOTE_DEVICE_T *the_device;

   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;
   the_request = (SCIC_SDS_REQUEST_T *)io_request;
   the_device = (SCIC_SDS_REMOTE_DEVICE_T *)remote_device;

   status = scic_sds_remote_device_start_io(this_controller, the_device, the_request);

   if (status == SCI_SUCCESS)
   {
      this_controller->io_request_table[
            scic_sds_io_tag_get_index(the_request->io_tag)] = the_request;

      scic_sds_controller_post_request(
         this_controller,
         scic_sds_request_get_post_context(the_request)
      );
   }

   return status;
}
