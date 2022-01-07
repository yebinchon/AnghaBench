
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int working_request; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 int scic_sds_io_request_frame_handler (int ,int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_remote_device_ready_cmd_substate_frame_handler(
   SCIC_SDS_REMOTE_DEVICE_T * this_device,
   U32 frame_index
)
{
   SCI_STATUS status;




   status = scic_sds_io_request_frame_handler(
      this_device->working_request,
      frame_index
   );

   return status;
}
