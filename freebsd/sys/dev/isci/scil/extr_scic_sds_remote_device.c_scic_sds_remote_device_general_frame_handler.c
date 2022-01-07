
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_13__ {int uf_control; } ;
struct TYPE_12__ {TYPE_1__* state_handlers; int * target_device; } ;
struct TYPE_11__ {int tag; } ;
struct TYPE_10__ {scalar_t__ (* frame_handler ) (TYPE_3__*,int ) ;} ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_2__ SCI_SSP_FRAME_HEADER_T ;
typedef TYPE_3__ SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;


 TYPE_3__* SCI_INVALID_HANDLE ;
 scalar_t__ SCI_SUCCESS ;
 TYPE_3__* scic_sds_controller_get_io_request_from_tag (TYPE_5__*,int ) ;
 int scic_sds_controller_release_frame (TYPE_5__*,int ) ;
 TYPE_5__* scic_sds_remote_device_get_controller (int *) ;
 scalar_t__ scic_sds_unsolicited_frame_control_get_header (int *,int ,void**) ;
 scalar_t__ stub1 (TYPE_3__*,int ) ;

SCI_STATUS scic_sds_remote_device_general_frame_handler(
   SCIC_SDS_REMOTE_DEVICE_T *this_device,
   U32 frame_index
)
{
   SCI_STATUS result;
   SCI_SSP_FRAME_HEADER_T *frame_header;
   SCIC_SDS_REQUEST_T *io_request;

   result = scic_sds_unsolicited_frame_control_get_header(
      &(scic_sds_remote_device_get_controller(this_device)->uf_control),
      frame_index,
      (void **)&frame_header
   );

   if (SCI_SUCCESS == result)
   {
      io_request = scic_sds_controller_get_io_request_from_tag(
         scic_sds_remote_device_get_controller(this_device), frame_header->tag);

      if ( (io_request == SCI_INVALID_HANDLE)
         || (io_request->target_device != this_device) )
      {


         scic_sds_controller_release_frame(
            scic_sds_remote_device_get_controller(this_device), frame_index
         );
      }
      else
      {

         result = io_request->state_handlers->frame_handler(
                                                    io_request, frame_index);
      }
   }

   return result;
}
